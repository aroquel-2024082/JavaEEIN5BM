package com.alanlacan.modelo;


public class Empleado {

    private int codigoEmpleado;
    private String nombreEmpleado;
    private String apellidoEmpleado;
    private String direccionEmpleado;      
    private String telefonoEmpleado;
    private String emailEmpleado;
    private String puestoEmpleado;

    public Empleado() {
    }

    public Empleado(String nombreEmpleado, String apellidoEmpleado, String direccionEmpleado, String telefonoEmpleado, String emailEmpleado, String puestoEmpleado) {
        this.nombreEmpleado = nombreEmpleado;
        this.apellidoEmpleado = apellidoEmpleado;
        this.direccionEmpleado = direccionEmpleado;
        this.telefonoEmpleado = telefonoEmpleado;
        this.emailEmpleado = emailEmpleado;
        this.puestoEmpleado = puestoEmpleado;
    }

    public int getCodigoEmpleado() {
        return codigoEmpleado;
    }

    public void setCodigoEmpleado(int codigoEmpleado) {
        this.codigoEmpleado = codigoEmpleado;
    }

    public String getNombreEmpleado() {
        return nombreEmpleado;
    }

    public void setNombreEmpleado(String nombreEmpleado) {
        this.nombreEmpleado = nombreEmpleado;
    }

    public String getApellidoEmpleado() {
        return apellidoEmpleado;
    }

    public void setApellidoEmpleado(String apellidoEmpleado) {
        this.apellidoEmpleado = apellidoEmpleado;
    }

    public String getDireccionEmpleado() {
        return direccionEmpleado;
    }

    public void setDireccionEmpleado(String direccionEmpleado) {
        this.direccionEmpleado = direccionEmpleado;
    }

    public String getTelefonoEmpleado() {
        return telefonoEmpleado;
    }

    public void setTelefonoEmpleado(String telefonoEmpleado) {
        this.telefonoEmpleado = telefonoEmpleado;
    }

    public String getEmailEmpleado() {
        return emailEmpleado;
    }

    public void setEmailEmpleado(String emailEmpleado) {
        this.emailEmpleado = emailEmpleado;
    }

    public String getPuestoEmpleado() {
        return puestoEmpleado;
    }

    public void setPuestoEmpleado(String puestoEmpleado) {
        this.puestoEmpleado = puestoEmpleado;
    }

    @Override
    public String toString() {
        return "Empleado{" + "codigoEmpleado=" + codigoEmpleado + ", nombreEmpleado=" + nombreEmpleado + ", apellidoEmpleado=" + apellidoEmpleado + ", direccionEmpleado=" + direccionEmpleado + ", telefonoEmpleado=" + telefonoEmpleado + ", emailEmpleado=" + emailEmpleado + ", puestoEmpleado=" + puestoEmpleado + '}';
    }
}
