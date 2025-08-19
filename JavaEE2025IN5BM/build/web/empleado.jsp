<%-- 
    Document   : empleado
    Created on : 22 jul 2025, 17:08:43
    Author     : User
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestión de Empleados</title>
    <link rel="stylesheet" href="Styles/empleado.css">
</head>
<body>

    <nav>
        <a href="admin.jsp" class="logo">Essenza & Co.</a>
    </nav>

    <div class="contenedor-principal">
        <div class="panel-formulario">
            <h1>Gestión de Empleados</h1>
            <form action="Controlador?menu=Empleado" method="POST" class="formulario" enctype="multipart/form-data">
                <input type="text" value="${empleado.getCodigoEmpleado()}" name="txtId" autocomplete="off" placeholder="ID" readonly>
                <input type="text" value="${empleado.getNombreEmpleado()}" name="txtNombre" autocomplete="off" placeholder="Nombre Empleado">
                <input type="text" value="${empleado.getApellidoEmpleado()}" name="txtApellido" autocomplete="off" placeholder="Apellido">
                <input type="text" value="${empleado.getDireccionEmpleado()}" name="txtDireccion" autocomplete="off" placeholder="Dirección">
                <input type="text" value="${empleado.getTelefonoEmpleado()}" name="txtTelefono" autocomplete="off" placeholder="Teléfono">
                <input type="text" value="${empleado.getEmailEmpleado()}" name="txtCorreo" autocomplete="off" placeholder="Correo Electrónico">
                <input type="text" value="${empleado.getPuestoEmpleado()}" name="txtPuesto" autocomplete="off" placeholder="Puesto">
                <input type="file" name="txtImagen" accept="image/*" class="imagen-input">

                <div class="botones">
                    <button type="submit" class="btn-insertar" name="accion" value="Agregar">
                        <span>Agregar</span>
                    </button>
                    
                    <button type="submit" name="accion" value="Actualizar" class="btn-actualizar">
                        <span>Actualizar</span>
                    </button>

                    <button type="submit" name="accion" value="Limpiar" class="btn-limpiar">
                        <span>Limpiar</span>
                    </button>
                </div>
            </form>

            <div class="marca-interna">Essenza & Co.</div>
        </div>

        <div class="panel-tabla">
            <div class="tabla-contenedor">
                <table class="tabla">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Dirección</th>
                            <th>Teléfono</th>
                            <th>Correo Electrónico</th>
                            <th>Puesto</th>
                            <th>Imagen</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="empleado" items="${empleados}">
                            <tr>
                                <td>${empleado.getCodigoEmpleado()}</td>
                                <td>${empleado.getNombreEmpleado()}</td>
                                <td>${empleado.getApellidoEmpleado()}</td>
                                <td>${empleado.getDireccionEmpleado()}</td>
                                <td>${empleado.getTelefonoEmpleado()}</td>
                                <td>${empleado.getEmailEmpleado()}</td>
                                <td>${empleado.getPuestoEmpleado()}</td>
                                <td>
                                    <img src="FotoServlet?id=${empleado.getCodigoEmpleado()}" width="50" height="50" />
                                </td>
                                <td>
                                    <div>
                                        <a href="Controlador?menu=Empleado&accion=Editar&id=${empleado.getCodigoEmpleado()}" class="btn-actualizar">
                                            <span>Editar</span>
                                        </a>
                                    </div>
                                    <div>
                                        <a href="Controlador?menu=Empleado&accion=Eliminar&id=${empleado.getCodigoEmpleado()}" class="btn-eliminar" onclick="return confirm('¿Estás seguro de que deseas eliminar este registro?');">
                                            <span>Eliminar</span>
                                        </a>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>