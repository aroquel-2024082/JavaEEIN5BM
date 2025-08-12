<%-- 
    Document   : index
    Created on : 22 jul 2025, 10:17:36
    Author     : informatica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Perfumería y Accesorios | Inicio de Sesion</title>
        <link rel="stylesheet" href="Styles/login.css">

    </head>

    <nav>
        <a href="index.html" class="titulo"> Essenza & Co.</a>
        <div class="links">
            <a href="acercaNosotros.jsp">Acerca de nosotros</a>
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
            <p class="subtitulo">Ingresa tus datos para iniciar sesion</p>

            <form action="admin.jsp">
                <input type="correo" placeholder="Correo" required />
                <input type="contrasenia" placeholder="Contrasenia" required />
                <button type="submit" class="boton-brillante">Iniciar Sesión</button>
                <div class="extras">
                    <label><input type="checkbox" />Recordarme</label>
                    <a href="#">¿Olvidaste la contraseña?</a>
                </div>
            </form>

        </div>
    </body>
</html>
