package com.alanlacan.modelo;

import com.alanlacan.config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class EmpleadoDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;

    public Empleado validar(String emailEmpleado, String telefonoEmpleado) {
        Empleado empleado = new Empleado();
        String sql = "SELECT * FROM Empleados WHERE emailEmpleado = ? AND telefonoEmpleado = ?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, emailEmpleado);
            ps.setString(2, telefonoEmpleado);
            rs = ps.executeQuery();
            while (rs.next()) {
                empleado.setCodigoEmpleado(rs.getInt("codigoEmpleado"));
                empleado.setNombreEmpleado(rs.getString("nombreEmpleado"));
                empleado.setApellidoEmpleado(rs.getString("apellidoEmpleado"));
                empleado.setDireccionEmpleado(rs.getString("direccionEmpleado"));
                empleado.setEmailEmpleado(rs.getString("emailEmpleado"));
                empleado.setTelefonoEmpleado(rs.getString("telefonoEmpleado"));
                empleado.setPuestoEmpleado(rs.getString("puestoEmpleado"));
                empleado.setImagenPerfil(rs.getBytes("imagenPerfil"));
            }
        } catch (Exception e) {
            System.out.println("El usuario o contraseña son incorrectos");
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return empleado;
    }

    public boolean registrar(Empleado empleado) {
        String sqlCheck = "SELECT COUNT(*) FROM Empleados WHERE emailEmpleado = ?";
        String sqlInsert = "INSERT INTO Empleados (nombreEmpleado, apellidoEmpleado, direccionEmpleado, telefonoEmpleado, emailEmpleado, puestoEmpleado) VALUES (?, ?, ?, ?, ?, ?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sqlCheck);
            ps.setString(1, empleado.getEmailEmpleado());
            rs = ps.executeQuery();
            if (rs.next() && rs.getInt(1) > 0) {
                return false;
            }

            ps = con.prepareStatement(sqlInsert);
            ps.setString(1, empleado.getNombreEmpleado());
            ps.setString(2, empleado.getApellidoEmpleado());
            ps.setString(3, empleado.getDireccionEmpleado());
            ps.setString(4, empleado.getTelefonoEmpleado());
            ps.setString(5, empleado.getEmailEmpleado());
            ps.setString(6, empleado.getPuestoEmpleado());
            int rows = ps.executeUpdate();
            return rows > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
    
    public List<Empleado> listar() {
        String sql = "SELECT codigoEmpleado, nombreEmpleado, apellidoEmpleado, direccionEmpleado, telefonoEmpleado, emailEmpleado, puestoEmpleado FROM Empleados"; 
        List<Empleado> listaEmpleados = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Empleado em = new Empleado();
                em.setCodigoEmpleado(rs.getInt("codigoEmpleado"));
                em.setNombreEmpleado(rs.getString("nombreEmpleado"));
                em.setApellidoEmpleado(rs.getString("apellidoEmpleado"));
                em.setDireccionEmpleado(rs.getString("direccionEmpleado"));
                em.setTelefonoEmpleado(rs.getString("telefonoEmpleado"));
                em.setEmailEmpleado(rs.getString("emailEmpleado"));
                em.setPuestoEmpleado(rs.getString("puestoEmpleado"));
                listaEmpleados.add(em);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return listaEmpleados;
    }
    
    public int agregar(Empleado emp) {
        String sql = "CALL sp_agregarEmpleado(?,?,?,?,?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, emp.getNombreEmpleado());
            ps.setString(2, emp.getApellidoEmpleado());
            ps.setString(3, emp.getDireccionEmpleado());
            ps.setString(4, emp.getTelefonoEmpleado());
            ps.setString(5, emp.getEmailEmpleado());
            ps.setString(6, emp.getPuestoEmpleado());
            ps.setBytes(7, emp.getImagenPerfil());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return resp;
    }
    
    public Empleado buscar(int id) {
        Empleado emp = new Empleado();
        String sql = "CALL sp_buscarEmpleado(?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                emp.setCodigoEmpleado(rs.getInt(1));
                emp.setNombreEmpleado(rs.getString(2));
                emp.setApellidoEmpleado(rs.getString(3));
                emp.setDireccionEmpleado(rs.getString(4));
                emp.setTelefonoEmpleado(rs.getString(5));
                emp.setEmailEmpleado(rs.getString(6));
                emp.setPuestoEmpleado(rs.getString(7));
                emp.setImagenPerfil(rs.getBytes(8));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return emp;
    }
    
    public int actualizar(Empleado emp) {
        String sql = "CALL sp_editarEmpleado(?,?,?,?,?,?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, emp.getCodigoEmpleado());
            ps.setString(2, emp.getNombreEmpleado());
            ps.setString(3, emp.getApellidoEmpleado());
            ps.setString(4, emp.getDireccionEmpleado());
            ps.setString(5, emp.getTelefonoEmpleado());
            ps.setString(6, emp.getEmailEmpleado());
            ps.setString(7, emp.getPuestoEmpleado());
            ps.setBytes(8, emp.getImagenPerfil());
            ps.executeUpdate();
            resp = 1;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return resp;
    }
    
    public void eliminar(int id) {
        String sql = "CALL sp_eliminarEmpleado(?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
    
    public byte[] obtenerImagenPorId(int idEmpleado) {
        byte[] imagen = null;
        String sql = "SELECT imagenPerfil FROM Empleados WHERE codigoEmpleado = ?";
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, idEmpleado);
            rs = ps.executeQuery();
            if (rs.next()) {
                imagen = rs.getBytes("imagenPerfil");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return imagen;
    }
}