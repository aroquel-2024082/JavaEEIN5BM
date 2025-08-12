
package com.alanlacan.modelo;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Scanner;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Persistence;
import javax.persistence.Table;
import javax.persistence.TypedQuery;



@Entity
@Table (name = "Ventas")
public class Venta {
     @Id
    @Column
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int codigoVenta ;
    @Column
    private LocalDateTime  fecha;
    @Column
    private BigDecimal total;
    @ManyToOne
    @JoinColumn(name = "codigoCliente")
    private Cliente cliente;

    @ManyToOne
    @JoinColumn(name = "codigoEmpleado")
    private Empleado empleado;
    
    
    public Venta() {
    }

    public Venta(LocalDateTime  fecha, BigDecimal total, int codigoCliente, int codigoEmpleado) {
        this.codigoVenta = codigoVenta;
        this.fecha = fecha;
        this.total = total;
    }

    
    
    public int getCodigoVenta() {
        return codigoVenta;
    }

    public void setCodigoVenta(int codigoVenta) {
        this.codigoVenta = codigoVenta;
    }

    public LocalDateTime  getFecha() {
        return fecha;
    }

    public void setFecha(LocalDateTime  fecha) {
        this.fecha = fecha;
    }

    public BigDecimal getTotal() {
        return total;
    }

    public void setTotal(BigDecimal total) {
        this.total = total;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public Empleado getEmpleado() {
        return empleado;
    }

    public void setEmpleado(Empleado empleado) {
        this.empleado = empleado;
    }

    @Override
    public String toString() {
        return "Venta{" + "codigoVenta=" + codigoVenta + ", fecha=" + fecha + ", total=" + total + ", cliente=" + cliente + ", empleado=" + empleado + '}';
    }

   
    
    }


