package com.alanlacan.modelo;
 
import com.alanlacan.config.Conexion;
import com.alanlacan.modelo.Empleado;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
 
 
public class EmpleadoDAO {
    Conexion cn= new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
    public Empleado validar(String emailEmpleado, String telefonoEmpleado){
        //Instanciar el objetdo de la entidad Empleado
        Empleado empleado = new Empleado();
        //Agregar una variable de tipo String para mostrar consulta de sql
        String sql = "select * from Empleados where emailEmpleado = ? and telefonoEmpleado = ?";
        try {
            con = cn.Conexion();
            ps = con.prepareCall(sql);
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
            System.out.println("El usuario o contrasena son incorrectos");
            e.printStackTrace();
        }
        return empleado; //Empleado encontrado
    }
}