<%-- 
    Document   : venta
    Created on : 22/07/2025, 17:34:01
    Author     : Titi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Essenza & Co. | Gestión de Ventas</title>
    <link rel="stylesheet" href="Styles/venta.css">
</head>
<body>
    <nav>
        <a href="admin.jsp" class="logo">Essenza & Co.</a>
    </nav>

    <div class="contenedor-principal">
        <div class="form-container">
            <h2>Gestión de Ventas</h2>
            <form>
                <input type="text" placeholder="ID de venta" required>
                <input type="datetime-local" placeholder="Fecha" required>
                <input type="text" placeholder="Total" required>
                <input type="number" placeholder="ID Cliente" required>
                <input type="number" placeholder="ID Empleado" required>
                <div class="botones">
                    <button type="submit">Agregar</button>
                    <button type="submit">Actualizar</button>
                    <button type="submit">Buscar</button>
                    <button type="submit">Eliminar</button>
                </div>
            </form>
        </div>

        <div class="table-container">


            
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Fecha</th>
                        <th>Total</th>
                        <th>ID Cliente</th>
                        <th>ID Empleado</th>
                    </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>