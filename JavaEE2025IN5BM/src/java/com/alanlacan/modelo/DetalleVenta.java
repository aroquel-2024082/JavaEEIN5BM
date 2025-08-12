
package com.alanlacan.modelo;

import java.math.BigDecimal;
import java.util.List;
import java.util.Scanner;
import javax.persistence.*;
 
@Entity
@Table(name = "DetalleVentas")
public class DetalleVenta {

    @Id
    @Column
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int codigoDetalleVenta;

    @Column
    private int cantidad;

    @Column
    private BigDecimal precioUnitario;

    @ManyToOne
    @JoinColumn(name = "codigoVenta")
    private Venta venta;

    @ManyToOne
    @JoinColumn(name = "codigoProducto")
    private Producto producto;

    public DetalleVenta() {
    }

    public DetalleVenta(int cantidad, BigDecimal precioUnitario, Venta venta, Producto producto) {
        this.cantidad = cantidad;
        this.precioUnitario = precioUnitario;
        this.venta = venta;
        this.producto = producto;
    }

    public int getCodigoDetalleVenta() {
        return codigoDetalleVenta;
    }

    public void setCodigoDetalleVenta(int codigoDetalleVenta) {
        this.codigoDetalleVenta = codigoDetalleVenta;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public BigDecimal getPrecioUnitario() {
        return precioUnitario;
    }

    public void setPrecioUnitario(BigDecimal precioUnitario) {
        this.precioUnitario = precioUnitario;
    }

    public Venta getVenta() {
        return venta;
    }

    public void setVenta(Venta venta) {
        this.venta = venta;
    }

    public Producto getProducto() {
        return producto;
    }

    public void setProducto(Producto producto) {
        this.producto = producto;
    }

    @Override
    public String toString() {
        return "DetalleVenta{" + "codigoDetalleVenta=" + codigoDetalleVenta + ", cantidad=" + cantidad + ", precioUnitario=" + precioUnitario + ", venta=" + venta + ", producto=" + producto + '}';
    }
}
