
package com.alanlacan.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Conexion {
    
    Connection conexion;
    
    public Connection Conexion(){
        try {
            Class.forName("com.mysql.jdbc.Drive");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/DB_PerfumeriaYAccesorios?useSSL=false", "root", "admin");
        } catch (ClassNotFoundException | SQLException e) {
        }
        return conexion;
    }
    
}
