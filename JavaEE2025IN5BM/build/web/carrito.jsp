<%-- 
    Document   : carrito
    Created on : 28 jul 2025, 14:59:42
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Essenza | Carrito</title>
    <link rel="stylesheet" href="Styles/carrito.css">
    <link rel="stylesheet" href="Styles/fonts.css">
</head>

<nav>
    <a href="principal.jsp" class="logo"> Essenza & Co.</a>
    <div class="links">
        <div class="seleccionar-productos">
            <a href="producto.jsp" class="nav-link">Productos</a>
            <div class="seleccionar">
                <a href="principal.jsp#destacados">Destacado</a>
                <a href="principal.jsp#accesorios">Accesorios H/M</a>
                <a href="principal.jsp#hombre">Hombre</a>
                <a href="principal.jsp#mujer">Mujer</a>
            </div>
        </div>
        <div class="avatar">
            <a href="#" class="nav-link avatar-link">
                <img src="img/UsuarioPredeterminado.png" alt="Avatar">
            </a>
            <div class="avatar-menu">
                <a href="index.jsp">Cerrar sesión</a>
            </div>
        </div>
    </div>
</nav>

<body>
    <header class="encabezado">
        <h2 class="titulo-carrito">Tu Carrito</h2>
    </header>

    <div class="contenedor-carrito">
        <ul id="lista-carrito"></ul>
        <div id="total" class="total">Total: Q 0.00</div>
        <button id="vaciar-carrito" class="btn-vaciar">Vaciar Carrito</button>
        <button id="vaciar-carrito" class="btn-vaciar">Imprimir factura</button>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', () => {
            cargarCarrito();
            document.getElementById('vaciar-carrito').addEventListener('click', vaciarCarrito);
        });
        function cargarCarrito() {
            let cart = JSON.parse(localStorage.getItem('cart')) || [];
            const listaCarrito = document.getElementById('lista-carrito');
            const totalElement = document.getElementById('total');
            listaCarrito.innerHTML = '';
            let total = 0;
            cart.forEach(item => {
                const li = document.createElement('li');
                li.className = 'producto-carrito';
                li.innerHTML = `
                    <div class="imgProducto"><img class="imgProducto" src="${item.image}" alt="${item.name}" /></div>
                    <div class="temaProducto">
                        <h2 class="productoTitulo">${item.name}</h2>
                        <div class="infoProducto">
                            <p>Precio: Q ${item.price.toLocaleString()}.00</p>
                        </div>
                        <button class="btnComprar" onclick="eliminarDelCarrito('${item.name}')">Eliminar</button>
                    </div>
                `;
                listaCarrito.appendChild(li);
                total += item.price;
            });
            totalElement.textContent = `Total: Q ${total.toLocaleString()}.00`;
        }
        function eliminarDelCarrito(name) {
            let cart = JSON.parse(localStorage.getItem('cart')) || [];
            cart = cart.filter(item => item.name !== name);
            localStorage.setItem('cart', JSON.stringify(cart));
            cargarCarrito();
        }
        function vaciarCarrito() {
            localStorage.removeItem('cart');
            cargarCarrito();
        }
    </script>
</body>
</html>