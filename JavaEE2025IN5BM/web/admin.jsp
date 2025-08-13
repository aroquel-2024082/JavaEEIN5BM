<%-- 
    Document   : admin
    Created on : 22/07/2025, 16:43:15
    Author     : Francisco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Essenza & Co. | Ventana de Administrador</title>
    <link rel="stylesheet" href="Styles/admin.css">
</head>
<body>
    <nav>
        <ul>
            <li><a href="cliente.jsp" target="contentFrame">Clientes</a></li>
            <li><a href="proveedor.jsp" target="contentFrame">Proveedores</a></li>
            <li><a href="producto.jsp" target="contentFrame">Productos</a></li>
            <li><a href="empleado.jsp" target="contentFrame">Empleados</a></li>
            <li><a href="venta.jsp" target="contentFrame">Ventas</a></li>
            <li><a href="detalleVenta.jsp" target="contentFrame">Detalle Ventas</a></li>
            <li><a href="factura.jsp" target="contentFrame">Facturas</a></li>
            <li><a href="compras.jsp" target="contentFrame">Compras</a></li>
            <li><a href="detalleCompra.jsp" target="contentFrame">Detalle Compras</a></li>
            <li class="avatar">
                <img src="img/UsuarioAdmin.png" alt="Avatar">
                <ul class="avatar-menu">
                    <li><a href="principal.jsp">Cambiar Cuenta</a></li>
                    <li><a href="index.jsp">Cerrar sesión</a></li>
                </ul>
            </li>
        </ul>
    </nav>

    <div class="panel">
        <h2>Bienvenido a la ventana de Administrador</h2>
        <iframe name="contentFrame" src="bienvenido.jsp" frameborder="0"></iframe>
    </div>
</body>
</html>