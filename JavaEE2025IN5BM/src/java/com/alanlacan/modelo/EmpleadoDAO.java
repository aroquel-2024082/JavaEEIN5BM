package com.alanlacan.modelo;

import com.alanlacan.config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
                empleado.setEmailEmpleado(rs.getString("emailEmpleado"));
                empleado.setTelefonoEmpleado(rs.getString("telefonoEmpleado"));    
            }
        } catch (Exception e) {
            System.out.println("El usuario o contraseña son incorrectos");
            e.printStackTrace();
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
}