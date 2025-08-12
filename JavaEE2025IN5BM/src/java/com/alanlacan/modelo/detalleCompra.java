
package com.alanlacan.modelo;

import java.math.BigDecimal;
import javax.persistence.*;
import java.util.List;
import java.util.Scanner;
 
@Entity
@Table(name = "detalleCompras")
public class detalleCompra {
 
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int codigodetalleCompra;
 
    @Column
    private int cantidad;
 
    @Column
    private BigDecimal precioUnitario;
 
    @ManyToOne
    @JoinColumn(name = "codigoCompra")
    private Compra  codigoCompra;
 
    @ManyToOne
    @JoinColumn(name = "codigoProducto")
    private Producto codigoProducto;
 
    public detalleCompra() {
    }
 
    public detalleCompra(int cantidad, BigDecimal precioUnitario, Compra codigoCompra, Producto codigoProducto) {
        this.cantidad = cantidad;
        this.precioUnitario = precioUnitario;
        this.codigoCompra = codigoCompra;
        this.codigoProducto = codigoProducto;
    }
 
    public int getCodigodetalleCompra() {
        return codigodetalleCompra;
    }
 
    public void setCodigodetalleCompra(int codigodetalleCompra) {
        this.codigodetalleCompra = codigodetalleCompra;
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
 
    public Compra  getCodigoCompra() {
        return codigoCompra;
    }
 
    public void setCodigoCompra(Compra codigoCompra) {
        this.codigoCompra = codigoCompra;
    }
 
    public Producto getCodigoProducto() {
        return codigoProducto;
    }
 
    public void setCodigoProducto(Producto codigoProducto) {
        this.codigoProducto = codigoProducto;
    }
 
    @Override
    public String toString() {
        return "detalleCompra{" +
                "codigoDetalleCompra=" + codigodetalleCompra +
                ", cantidad=" + cantidad +
                ", precioUnitario=" + precioUnitario +
                ", codigoCompra=" + codigoCompra +
                ", codigoProducto=" + codigoProducto +
                '}';
    }
 }