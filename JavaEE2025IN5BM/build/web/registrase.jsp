<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perfumería y Accesorios | Registrarse</title>
    <link rel="stylesheet" href="Styles/registrar.css">
</head>
<nav>
    <a href="index.jsp" class="titulo"> Essenza & Co.</a>
    <div class="links">
        <a href="AcercaNosotros.jsp">Acerca de nosotros</a>
    </div>
</nav>
<body>
    <div class="login-contendor">
        <div class="tabs">
            <a href="index.jsp">
                <button class="activo">Inicio de sesion</button>
            </a>
            <a href="registrase.jsp">
                <button class="activo">Registrarse</button>
            </a>
        </div>
        <h2>Bienvenido</h2>
        <p>Essenza & Co.</p>
        <p class="subtitulo">Ingresa tus datos para Registrarte</p>
        <% if (request.getAttribute("error") != null) { %>
            <p style="color:red;"><%= request.getAttribute("error") %></p>
        <% } %>
        <% if (request.getAttribute("mensaje") != null) { %>
            <p style="color:green;"><%= request.getAttribute("mensaje") %></p>
        <% } %>
        <form action="Controlador?menu=Registrarse" method="post" class="formulario">
            <input type="text" name="txtNombre" placeholder="Nombre" required /><br>
            <input type="text" name="txtApellido" placeholder="Apellido" required /><br>
            <input type="text" name="txtCorreo" placeholder="Correo" required /><br>
            <input type="text" name="txtContrasena" placeholder="Teléfono (como contraseña)" required /><br>
            <button type="submit" class="boton-brillante">Registrarme</button>
        </form>
    </div>
</body>
</html>