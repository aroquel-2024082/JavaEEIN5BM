<%-- 
    Document   : principal
    Created on : 22/07/2025, 16:33:45
    Author     : Francisco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Essenza | Productos</title>
    <link rel="stylesheet" href="Styles/principal.css">
    <link rel="stylesheet" href="Styles/fonts.css">
</head>

<nav>
    <a href="index.html" class="logo"> Essenza & Co.</a>
    <div class="links">
        <div class="seleccionar-productos">
            <a href="Productos.html" class="nav-link">Productos</a>
            <div class="seleccionar">
                <a href="#destacado">Destacado</a>
                <a href="#accesorios">Accesorios H/M</a>
                <a href="#hombre">Hombre</a>
                <a href="#mujer">Mujer</a>
            </div>
        </div>
        <a href="carrito.jsp" class="nav-link">Carrito</a>
        <div class="avatar">
            <a href="#" class="nav-link avatar-link">
                <img src="img/UsuarioPredeterminado.png" alt="Avatar">
            </a>
            <div class="avatar-menu">
                <a href="index.html">Cerrar sesión</a>
            </div>
        </div>
    </div>
</nav>

<body>
    <header class="encabezado">
        <div class="buscar">
            <img src="img/lupa.png" alt="Buscar" class="icono-lupa">
            <input type="text" id="nombre" placeholder=" " required />
            <label for="nombre">Buscar</label>
        </div>
    </header>

    <div id="destacado"><h2 class="destacado">DESTACADO</h2></div>

    <div class="stock">
        <div class="imgStock">
            <img src="img/PDiamante.jpg" alt="Portada del Producto" />
        </div>
        <div class="temaProducto">
            <h2 class="productoTitulo">Pulsera de Diamantes</h2>
            <p class="descripcionProducto">
                Elegante y sofisticada, esta pulsera está adornada con diamantes que brillan con cada movimiento. Ideal para ocasiones especiales o para destacar en cualquier evento.
            </p>
            <div class="infoProducto">
                <p>Precio: Q 7,500.00</p>
                <p>Stock: 3</p>
            </div>
            <button class="btnComprar" onclick="addToCart('Pulsera de Diamantes', 7500, 'img/PDiamante.jpg')">Comprar ahora</button>
        </div>
    </div>

    <div class="stock">
        <div class="imgStock">
            <img src="img/APlatino.jpg" alt="Portada del producto" />
        </div>
        <div class="temaProducto">
            <h2 class="productoTitulo">Anillo de Platino</h2>
            <p class="descripcionProducto">
                Una joya fina elaborada en platino puro, con un diseño moderno y llamativo. Perfecto para regalar o simbolizar un compromiso duradero.
            </p>
            <div class="infoProducto">
                <p>Precio: Q 9,500.00</p>
                <p>Stock: 2</p>
            </div>
            <button class="btnComprar" onclick="addToCart('Anillo de Platino', 9500, 'img/APlatino.jpg')">Comprar ahora</button>
        </div>
    </div>

    <div class="stock">
        <div class="imgStock">
            <img src="img/BChannelClassic.jpg" alt="Portada del producto" />
        </div>
        <div class="temaProducto">
            <h2 class="productoTitulo">Bolso Channel Classic</h2>
            <p class="descripcionProducto">
                Ícono de la moda, este bolso combina estilo atemporal y lujo. Su diseño clásico lo convierte en una pieza imprescindible en cualquier colección de moda.
            </p>
            <div class="infoProducto">
                <p>Precio: Q 12,000.00</p>
                <p>Stock: 1</p>
            </div>
            <button class="btnComprar" onclick="addToCart('Bolso Channel Classic', 12000, 'img/BChannelClassic.jpg')">Comprar ahora</button>
        </div>
    </div>

    <div class="stock">
        <div class="imgStock">
            <img src="img/HommeElegance.jpg" alt="Portada del producto" />
        </div>
        <div class="temaProducto">
            <h2 class="productoTitulo">Perfume Homme Intense</h2>
            <p class="descripcionProducto">
                Una fragancia masculina con notas de madera, especias y ámbar. Ideal para hombres seguros de sí mismos que buscan dejar una impresión fuerte y duradera, tanto de día como de noche.
            </p>
            <div class="infoProducto">
                <p>Precio: Q 2,800.00</p>
                <p>Stock: 5</p>
            </div>
            <button class="btnComprar" onclick="addToCart('Perfume Homme Intense', 2800, 'img/HommeElegance.jpg')">Comprar ahora</button>
        </div>
    </div>

    <div class="stock">
        <div class="imgStock">
            <img src="img/FElegance.jpg" alt="Portada del producto" />
        </div>
        <div class="temaProducto">
            <h2 class="productoTitulo">Perfume Femme Elegance</h2>
            <p class="descripcionProducto">
                Aromas florales y frutales se combinan en esta fragancia femenina, fresca y sofisticada. Perfecta para mujeres elegantes que desean destacar con un toque de delicadeza y estilo.
            </p>
            <div class="infoProducto">
                <p>Precio: Q 3,200.00</p>
                <p>Stock: 5</p>
            </div>
            <button class="btnComprar" onclick="addToCart('Perfume Femme Elegance', 3200, 'img/FElegance.jpg')">Comprar ahora</button>
        </div>
    </div>

    <!-- Accesorios de Hombre y Mujer -->
    <section class="productosMeh">
        <h2 class="categoria" id="accesorios">Accesorios para Hombre y Mujer</h2>
        <div class="productosHz">
            <div class="producto">
                <div class="imgProducto"><img class="imgProducto" src="img/CollarPlata.jpg" alt="" /></div>
                <p class="tituloProducto">Collar de Plata</p>
                <p class="marcaProducto">Joyas Elegance</p>
                <span class="etiqueta">Disponible</span>
                <p class="precio">Q. 350.00</p>
                <button class="btnComp" onclick="addToCart('Collar de Plata', 350, 'img/CollarPlata.jpg')">Comprar</button>
            </div>
            <div class="producto">
                <div class="imgProducto"><img class="imgProducto" src="img/RelojRolex.jpg" alt="  "></div>
                <p class="tituloProducto">Reloj Clásico</p>
                <p class="marcaProducto">Rolex</p>
                <span class="etiqueta">Disponible</span>
                <p class="precio">Q. 1,800.00</p>
                <button class="btnComp" onclick="addToCart('Reloj Clásico', 1800, 'img/RelojRolex.jpg')">Comprar</button>
            </div>
            <div class="producto">
                <div class="imgProducto"><img class="imgProducto" src="img/AretesOro.jpg"  alt="" /></div>
                <p class="tituloProducto">Aretes de Oro</p>
                <p class="marcaProducto">Golden Shine</p>
                <span class="etiqueta">Disponible</span>
                <p class="precio">Q. 750.00</p>
                <button class="btnComp" onclick="addToCart('Aretes de Oro', 750, 'img/AretesOro.jpg')">Comprar</button>
            </div>

            <div class="producto">
                <div class="imgProducto"><img class="imgProducto" src="img/CinturonCuero.jpg" alt="" /></div>
                <p class="tituloProducto">Cinturón de Cuero</p>
                <p class="marcaProducto">Urban Man</p>
                <span class="etiqueta">Disponible</span>
                <p class="precio">Q. 220.00</p>
                <button class="btnComp" onclick="addToCart('Cinturón de Cuero', 220, 'img/CinturonCuero.jpg')">Comprar</button>
            </div>
            <div class="producto">
                <div class="imgProducto"><img class="imgProducto" src="img/CarteraCuero.jpg" alt=""></div>
                <p class="tituloProducto">Cartera de Cuero</p>
                <p class="marcaProducto">Urban Man</p>
                <span class="etiqueta">Disponible</span>
                <p class="precio">Q. 300.00</p>
                <button class="btnComp" onclick="addToCart('Cartera de Cuero', 300, 'img/CarteraCuero.jpg')">Comprar</button>
            </div>
            <div class="producto">
                <div class="imgProducto"><img class="imgProducto" src="img/AnilloOro.jpg" alt="" /></div>
                <p class="tituloProducto">Anillo de Oro 14K</p>
                <p class="marcaProducto">Golden Elegance</p>
                <span class="etiqueta">Disponible</span>
                <p class="precio">Q. 1,800.00</p>
                <button class="btnComp" onclick="addToCart('Anillo de Oro 14K', 1800, 'img/AnilloOro.jpg')">Comprar</button>
            </div>

            <div class="producto">
                <div class="imgProducto"><img class="imgProducto" src="img/PulseraDeCuero.png" alt="" /></div>
                <p class="tituloProducto">Pulseras de Cuero</p>
                <p class="marcaProducto">Montblanc</p>
                <span class="etiqueta">Disponible</span>
                <p class="precio">Q. 380.00</p>
                <button class="btnComp" onclick="addToCart('Pulseras de Cuero', 380, 'img/PulseraDeCuero.png')">Comprar</button>
            </div>
            <div class="producto">
                <div class="imgProducto"><img class="imgProducto" src="img/LentesDeSol.png" alt=""></div>
                <p class="tituloProducto">Lentes de Sol</p>
                <p class="marcaProducto">Prada</p>
                <span class="etiqueta">Disponible</span>
                <p class="precio">Q. 720.00</p>
                <button class="btnComp" onclick="addToCart('Lentes de Sol', 720, 'img/LentesDeSol.png')">Comprar</button>
            </div>
            <div class="producto">
                <div class="imgProducto"><img class="imgProducto" src="img/BolsoPequeño.png" alt="" /></div>
                <p class="tituloProducto">Bolso Pequeño</p>
                <p class="marcaProducto">Michael Kors</p>
                <span class="etiqueta">Disponible</span>
                <p class="precio">Q. 1,000.00</p>
                <button class="btnComp" onclick="addToCart('Bolso Pequeño', 1000, 'img/BolsoPequeño.png')">Comprar</button>
            </div>
        </div>
    </section>

    <!-- Perfumes de Hombre -->
    <section class="productosMehH">
        <h2 class="categoriaH" id="hombre">Perfumes de Hombre</h2>
        <div class="productosHzH">
            <div class="productoH">
                <div class="imgProductoH"><img class="imgProductoH" src="img/SauvageDior.jpg" alt="" /></div>
                <p class="tituloProductoH">Dior Sauvage</p>
                <p class="marcaProductoH">Dior</p>
                <span class="etiquetaH">Disponible</span>
                <p class="precioH">Q. 1500.00</p>
                <button class="btnCompH" onclick="addToCart('Dior Sauvage', 1500, 'img/SauvageDior.jpg')">Comprar</button>
            </div>
            <div class="productoH">
                <div class="imgProductoH"><img class="imgProductoH" src="img/Bleu de Chanel.jpg" alt=""></div>
                <p class="tituloProductoH">Bleu de Chanel</p>
                <p class="marcaProductoH">Chanel</p>
                <span class="etiquetaH">Disponible</span>
                <p class="precioH">Q. 1,250.00</p>
                <button class="btnCompH" onclick="addToCart('Bleu de Chanel', 1250, 'img/Bleu de Chanel.jpg')">Comprar</button>
            </div>
            <div class="productoH">
                <div class="imgProductoH"><img class="imgProductoH" src="img/Acqua di Giò.jpg" alt="" /></div>
                <p class="tituloProductoH">Acqua di Giò</p>
                <p class="marcaProductoH">Giorgio Armani</p>
                <span class="etiquetaH">Disponible</span>
                <p class="precioH">Q. 1,400.00</p>
                <button class="btnCompH" onclick="addToCart('Acqua di Giò', 1400, 'img/Acqua di Giò.jpg')">Comprar</button>
            </div>
            <div class="productoH">
                <div class="imgProductoH"><img class="imgProductoH" src="img/1 Million.jpg" alt=""></div>
                <p class="tituloProductoH">1 Million</p>
                <p class="marcaProductoH">Paco Rabanne</p>
                <span class="etiquetaH">Disponible</span>
                <p class="precioH">Q. 1,200.00</p>
                <button class="btnCompH" onclick="addToCart('1 Million', 1200, 'img/1 Million.jpg')">Comprar</button>
            </div>
            <div class="productoH">
                <div class="imgProductoH"><img class="imgProductoH" src="img/Le Male.jpg" alt"" /></div>
                <p class="tituloProductoH">Le Male</p>
                <p class="marcaProductoH">Jean Paul Gaultier</p>
                <span class="etiquetaH">Disponible</span>
                <p class="precioH">Q. 1,100.00</p>
                <button class="btnCompH" onclick="addToCart('Le Male', 1100, 'img/Le Male.jpg')">Comprar</button>
            </div>
            <div class="productoH">
                <div class="imgProductoH"><img class="imgProductoH" src="img/Terre d’Hermès.jpg" alt=""></div>
                <p class="tituloProductoH">Terre d’Hermès</p>
                <p class="marcaProductoH">Hermès</p>
                <span class="etiquetaH">Disponible</span>
                <p class="precioH">Q. 1,550.00</p>
                <button class="btnCompH" onclick="addToCart('Terre d’Hermès', 1550, 'img/Terre d’Hermès.jpg')">Comprar</button>
            </div>
            <div class="productoH">
                <div class="imgProductoH"><img class="imgProductoH" src="img/Aventus.jpg" alt"" /></div>
                <p class="tituloProductoH">Aventus</p>
                <p class="marcaProductoH">Creed</p>
                <span class="etiquetaH">Disponible</span>
                <p class="precioH">Q. 3,500.00</p>
                <button class="btnCompH" onclick="addToCart('Aventus', 3500, 'img/Aventus.jpg')">Comprar</button>
            </div>
            <div class="productoH">
                <div class="imgProductoH"><img class="imgProductoH" src="img/Boss Bottled.jpg" alt=""></div>
                <p class="tituloProductoH">Boss Bottled</p>
                <p class="marcaProductoH">Hugo Boss</p>
                <span class="etiquetaH">Disponible</span>
                <p class="precioH">Q. 1,300.00</p>
                <button class="btnCompH" onclick="addToCart('Boss Bottled', 1300, 'img/Boss Bottled.jpg')">Comprar</button>
            </div>
            <div class="productoH">
                <div class="imgProductoH"><img class="imgProductoH" src="img/FAHRENHEIT.png" alt"" /></div>
                <p class="tituloProductoH">Fahrenheit</p>
                <p class="marcaProductoH">Dior</p>
                <span class="etiquetaH">Disponible</span>
                <p class="precioH">Q. 1,350.00</p>
                <button class="btnCompH" onclick="addToCart('Fahrenheit', 1350, 'img/FAHRENHEIT.png')">Comprar</button>
            </div>
            <div class="productoH">
                <div class="imgProductoH"><img class="imgProductoH" src="img/INVICTUS.png" alt=""></div>
                <p class="tituloProductoH">Invictus</p>
                <p class="marcaProductoH">Paco Rabanne</p>
                <span class="etiquetaH">Disponible</span>
                <p class="precioH">Q. 1,250.00</p>
                <button class="btnCompH" onclick="addToCart('Invictus', 1250, 'img/INVICTUS.png')">Comprar</button>
            </div>
            <div class="productoH">
                <div class="imgProductoH"><img class="imgProductoH" src="img/EXPLORER.png" alt"" /></div>
                <p class="tituloProductoH">Explorer</p>
                <p class="marcaProductoH">Montblanc</p>
                <span class="etiquetaH">Disponible</span>
                <p class="precioH">Q. 1,400.00</p>
                <button class="btnCompH" onclick="addToCart('Explorer', 1400, 'img/EXPLORER.png')">Comprar</button>
            </div>
            <div class="productoH">
                <div class="imgProductoH"><img class="imgProductoH" src="img/PUREXS.png" alt=""></div>
                <p class="tituloProductoH">Pure XS</p>
                <p class="marcaProductoH">Paco Rabanne</p>
                <span class="etiquetaH">Disponible</span>
                <p class="precioH">Q. 1,200.00</p>
                <button class="btnCompH" onclick="addToCart('Pure XS', 1200, 'img/PUREXS.png')">Comprar</button>
            </div>
        </div>
    </section>

    <!-- Perfumes de Mujer -->
    <section class="productosMehM">
        <h2 class="categoriaM" id="mujer">Perfumes de Mujer</h2>
        <div class="productosHzM">
            <div class="productoM">
                <div class="imgProductoM"><img class="imgProductoM" src="img/La Vie Est Belle.jpg" alt"" /></div>
                <p class="tituloProductoM">La Vie Est Belle</p>
                <p class="marcaProductoM">Lancôme</p>
                <span class="etiquetaM">Disponible</span>
                <p class="precioM">Q. 1,450.00</p>
                <button class="btnCompM" onclick="addToCart('La Vie Est Belle', 1450, 'img/La Vie Est Belle.jpg')">Comprar</button>
            </div>
            <div class="productoM">
                <div class="imgProductoM"><img class="imgProductoM" src="img/J’adore.jpg" alt=""></div>
                <p class="tituloProductoM">J’adore</p>
                <p class="marcaProductoM">Dior</p>
                <span class="etiquetaM">Disponible</span>
                <p class="precioM">Q. 1,600.00</p>
                <button class="btnCompM" onclick="addToCart('J’adore', 1600, 'img/J’adore.jpg')">Comprar</button>
            </div>
            <div class="productoM">
                <div class="imgProductoM"><img class="imgProductoM" src="img/Coco Mademoiselle.jpg" alt"" /></div>
                <p class="tituloProductoM">Coco Mademoiselle</p>
                <p class="marcaProductoM">Chanel</p>
                <span class="etiquetaM">Disponible</span>
                <p class="precioM">Q. 1,550.00</p>
                <button class="btnCompM" onclick="addToCart('Coco Mademoiselle', 1550, 'img/Coco Mademoiselle.jpg')">Comprar</button>
            </div>
            <div class="productoM">
                <div class="imgProductoM"><img class="imgProductoM" src="img/Black Opium.jpg" alt=""></div>
                <p class="tituloProductoM">Black Opium</p>
                <p class="marcaProductoM">Yves Saint Laurent</p>
                <span class="etiquetaM">Disponible</span>
                <p class="precioM">Q. 1,480.00</p>
                <button class="btnCompM" onclick="addToCart('Black Opium', 1480, 'img/Black Opium.jpg')">Comprar</button>
            </div>
            <div class="productoM">
                <div class="imgProductoM"><img class="imgProductoM" src="img/Light Blue.jpg" alt"" /></div>
                <p class="tituloProductoM">Light Blue</p>
                <p class="marcaProductoM">Dolce & Gabbana</p>
                <span class="etiquetaM">Disponible</span>
                <p class="precioM">Q. 1,350.00</p>
                <button class="btnCompM" onclick="addToCart('Light Blue', 1350, 'img/Light Blue.jpg')">Comprar</button>
            </div>
            <div class="productoM">
                <div class="imgProductoM"><img class="imgProductoM" src="img/Good Girl.jpg" alt=""></div>
                <p class="tituloProductoM">Good Girl</p>
                <p class="marcaProductoM">Carolina Herrera</p>
                <span class="etiquetaM">Disponible</span>
                <p class="precioM">Q. 1,500.00</p>
                <button class="btnCompM" onclick="addToCart('Good Girl', 1500, 'img/Good Girl.jpg')">Comprar</button>
            </div>
            <div class="productoM">
                <div class="imgProductoM"><img class="imgProductoM" src="img/Mon Guerlain.jpg" alt"" /></div>
                <p class="tituloProductoM">Mon Guerlain</p>
                <p class="marcaProductoM">Guerlain</p>
                <span class="etiquetaM">Disponible</span>
                <p class="precioM">Q. 1,520.00</p>
                <button class="btnCompM" onclick="addToCart('Mon Guerlain', 1520, 'img/Mon Guerlain.jpg')">Comprar</button>
            </div>
            <div class="productoM">
                <div class="imgProductoM"><img class="imgProductoM" src="img/Flowerbomb.jpg" alt=""></div>
                <p class="tituloProductoM">Flowerbomb</p>
                <p class="marcaProductoM">Viktor & Rolf</p>
                <span class="etiquetaM">Disponible</span>
                <p class="precioM">Q. 1,600.00</p>
                <button class="btnCompM" onclick="addToCart('Flowerbomb', 1600, 'img/Flowerbomb.jpg')">Comprar</button>
            </div>
            <div class="productoM">
                <div class="imgProductoM"><img class="imgProductoM" src="img/BRIGHTCRYSTAL.png" alt"" /></div>
                <p class="tituloProductoM">Bright Crystal</p>
                <p class="marcaProductoM">Versace</p>
                <span class="etiquetaM">Disponible</span>
                <p class="precioM">Q. 1,300.00</p>
                <button class="btnCompM" onclick="addToCart('Bright Crystal', 1300, 'img/BRIGHTCRYSTAL.png')">Comprar</button>
            </div>
            <div class="productoM">
                <div class="imgProductoM"><img class="imgProductoM" src="img/SI.png" alt=""></div>
                <p class="tituloProductoM">Si</p>
                <p class="marcaProductoM">Giorgio Armani</p>
                <span class="etiquetaM">Disponible</span>
                <p class="precioM">Q. 1,450.00</p>
                <button class="btnCompM" onclick="addToCart('Si', 1450, 'img/SI.png')">Comprar</button>
            </div>
            <div class="productoM">
                <div class="imgProductoM"><img class="imgProductoM" src="img/ANGEL.png" alt"" /></div>
                <p class="tituloProductoM">Angel</p>
                <p class="marcaProductoM">Thierry Mugler</p>
                <span class="etiquetaM">Disponible</span>
                <p class="precioM">Q. 1,500.00</p>
                <button class="btnCompM" onclick="addToCart('Angel', 1500, 'img/ANGEL.png')">Comprar</button>
            </div>
            <div class="productoM">
                <div class="imgProductoM"><img class="imgProductoM" src="img/EUPHORIA.png" alt=""></div>
                <p class="tituloProductoM">Euphoria</p>
                <p class="marcaProductoM">Calvin Klein</p>
                <span class="etiquetaM">Disponible</span>
                <p class="precioM">Q. 1,400.00</p>
                <button class="btnCompM" onclick="addToCart('Euphoria', 1400, 'img/EUPHORIA.png')">Comprar</button>
            </div>
        </div>
    </section>

    <script>
        function addToCart(name, price, image) {
            let cart = JSON.parse(localStorage.getItem('cart')) || [];
            cart.push({ name, price, image });
            localStorage.setItem('cart', JSON.stringify(cart));
        }
    </script>
</body>
</html>
