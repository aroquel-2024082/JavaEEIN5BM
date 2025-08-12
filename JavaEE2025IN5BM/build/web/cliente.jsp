<%-- 
    Document   : cliente
    Created on : 22/07/2025, 16:46:08
    Author     : Francisco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ventana de Clientes</title>
    <link rel="stylesheet" href="Styles/cliente.css">
</head>
<body>

    <nav>
        <a href="admin.jsp" class="logo"> Essenza & Co.</a>
    </nav>
    
    <div class="fondo"></div>

    <div class="contenedor-principal">
        <div class="panel-formulario">
            <h1>Gestión de Clientes</h1>
            <div class="formulario">
                <input type="text" id="codigoCliente" placeholder="Codigo del cliente" />
                <input type="text" id="nombreCliente" placeholder="Nombre del Cliente" />
                <input type="text" id="apellidoCliente" placeholder="Apellido del Cliente" />
                <input type="text" id="correoCliente" placeholder="Correo del Cliente" />
                <input type="text" id="contraseniaCliente" placeholder="Contraseña" />
                <input type="text" id="imagen" placeholder="(Solo poner '' o null)" />
            <div class="botones">
                <button>Agregar</button>
                <button>Actualizar</button>
                <button >Buscar</button>
                <button class="eliminar">Eliminar</button>
            </div>
            <div class="marca-interna">
            Essenza & Co.
        </div>

        </div>
        </div>

        <div class="panel-tabla">
            <div class="tabla-contenedor">
                <table class="tabla">
                <thead>
                <tr>
                    <th>Codigo del Cliente</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Correo</th>
                    <th>Contraseña</th>
                </tr>
                </thead>
            </table>
            </div> 
        </div> 
    </div>  
</body>
</html>
