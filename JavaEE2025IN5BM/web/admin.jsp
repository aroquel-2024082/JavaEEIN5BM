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
            <li><a href="cliente.jsp">Clientes</a></li>
            <li><a href="proveedor.jsp">Proveedores</a></li>
            <li><a href="producto.jsp">Productos</a></li>
            <li><a href="empleado.jsp">Empleados</a></li>
            <li><a href="venta.jsp">Ventas</a></li>
            <li><a href="detalleVenta.jsp">Detalle Ventas</a></li>
            <li><a href="factura.jsp">Facturas</a></li>
            <li><a href="compras.jsp">Compras</a></li>
            <li><a href="detalleCompra.jsp">Detalle Compras</a></li>
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
        </div>

</body>
</html>