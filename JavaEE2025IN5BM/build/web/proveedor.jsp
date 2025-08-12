<%-- 
    Document   : proveedores
    Created on : 22/07/2025, 17:10:03
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <title>Essenza | Gestión de Proveedores</title>
    <link rel="stylesheet" href="Styles/proveedor.css" />
</head>
<body>

    <nav>
        <a href="admin.jsp" class="logo">Essenza &amp; Co.</a>
    </nav>

    <div class="contenedor-principal">

        <div class="form-container">
            <h2>Gestión de Proveedores</h2>
            <form>
                <input type="text" id="codigo" placeholder="Código del Proveedor" required />
                <input type="text" id="nombre" placeholder="Nombre" required />
                <input type="text" id="direccion" placeholder="Dirección" required />
                <input type="text" id="celular" placeholder="Celular" required />
                <input type="email" id="correo" placeholder="Correo" required />

                <div class="botones">
                    <button type="submit" class="agregar">Agregar</button>
                    <button type="submit" class="actualizar">Actualizar</button>
                    <button type="submit" class="buscar">Buscar</button>
                    <button type="submit" class="eliminar">Eliminar</button>
                </div>
            </form>
            <div class="marca-interna">
                Essenza &amp; Co.
            </div>
        </div>

        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Nombre</th>
                        <th>Dirección</th>
                        <th>Celular</th>
                        <th>Correo</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Juan Pérez</td>
                        <td>Ciudad Centro</td>
                        <td>5555-0000</td>
                        <td>juan@email.com</td>
                    </tr>
                </tbody>
            </table>
        </div>

    </div>

</body>
</html>

