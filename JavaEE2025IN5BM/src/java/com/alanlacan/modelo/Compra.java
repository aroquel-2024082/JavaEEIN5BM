package com.alanlacan.modelo;

import java.math.BigDecimal;
import javax.persistence.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Scanner;

@Entity
@Table(name = "Compras")
public class Compra {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int codigoCompra;

    @Column
    private LocalDateTime fechaCompra;

    @Column(precision = 10, scale = 2)
    private BigDecimal total;

    @Column
    private int codigoProveedor;

    @Column
    private int codigoEmpleado;

    public Compra() {
    }

    public Compra(LocalDateTime fechaCompra, BigDecimal total, int codigoProveedor, int codigoEmpleado) {
        this.fechaCompra = fechaCompra;
        this.total = total;
        this.codigoProveedor = codigoProveedor;
        this.codigoEmpleado = codigoEmpleado;
    }

    public int getCodigoCompra() {
        return codigoCompra;
    }

    public void setCodigoCompra(int codigoCompra) {
        this.codigoCompra = codigoCompra;
    }

    public LocalDateTime getFechaCompra() {
        return fechaCompra;
    }

    public void setFechaCompra(LocalDateTime fechaCompra) {
        this.fechaCompra = fechaCompra;
    }

    public BigDecimal getTotal() {
        return total;
    }

    public void setTotal(BigDecimal total) {
        this.total = total;
    }

    public int getCodigoProveedor() {
        return codigoProveedor;
    }

    public void setCodigoProveedor(int codigoProveedor) {
        this.codigoProveedor = codigoProveedor;
    }

    public int getCodigoEmpleado() {
        return codigoEmpleado;
    }

    public void setCodigoEmpleado(int codigoEmpleado) {
        this.codigoEmpleado = codigoEmpleado;
    }

    @Override
    public String toString() {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        return "Compra{" +
                "codigoCompra=" + codigoCompra +
                ", fechaCompra=" + (fechaCompra != null ? fechaCompra.format(formatter) : "null") +
                ", total=" + total +
                ", codigoProveedor=" + codigoProveedor +
                ", codigoEmpleado=" + codigoEmpleado +
                '}';
    }
}
