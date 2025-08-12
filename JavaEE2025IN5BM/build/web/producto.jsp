<%-- 
    Document   : producto
    Created on : 23 jul 2025, 07:05:17
    Author     : informatica
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Gestión de Productos</title>
        <link rel="stylesheet" href="Styles/producto.css" />
        <link rel="stylesheet" href="fonts.css" />
    </head>



    <body>

        <nav>
            <a href="admin.jsp" class="logo">Essenza & Co.</a>
        </nav>
        <div class="fondo"></div>

        <div class="contenedor-principal">
            <div class="panel-formulario">
                <h1>Gestión de Productos</h1>
                <div class="formulario">

                    <input type="text" autocomplete="off" name="text" class="input" placeholder="ID del producto">
                    <input type="text" autocomplete="off" name="text" class="input" placeholder="Nombre del producto">
                    <input type="text" autocomplete="off" name="text" class="input" placeholder="Descripcion">
                    <input type="text" autocomplete="off" name="text" class="input" placeholder="Precio">
                    <input type="text" autocomplete="off" name="text" class="input" placeholder="Existencias">
                    <input type="text" autocomplete="off" name="text" class="input" placeholder="ID Categoria">
                    <input type="text" autocomplete="off" name="text" class="input" placeholder="ID Marca">


                    <div class="botones">


                        <button>
                            <div class="svg-wrapper-1">
                                <div class="svg-wrapper">
                                    <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="30" height="30"
                                         viewBox="0,0,256,256">
                                    <g fill="#ffffff" fill-rule="nonzero" stroke="none" stroke-width="1"
                                       stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10"
                                       stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none"
                                       font-size="none" text-anchor="none" style="mix-blend-mode: normal">
                                    <g transform="scale(10.66667,10.66667)">
                                    <path
                                        d="M12,2c-5.523,0 -10,4.477 -10,10c0,5.523 4.477,10 10,10c5.523,0 10,-4.477 10,-10c0,-5.523 -4.477,-10 -10,-10zM16,13h-3v3c0,0.552 -0.448,1 -1,1v0c-0.552,0 -1,-0.448 -1,-1v-3h-3c-0.552,0 -1,-0.448 -1,-1v0c0,-0.552 0.448,-1 1,-1h3v-3c0,-0.552 0.448,-1 1,-1v0c0.552,0 1,0.448 1,1v3h3c0.552,0 1,0.448 1,1v0c0,0.552 -0.448,1 -1,1z">
                                    </path>
                                    </g>
                                    </g>
                                    </svg>
                                </div>
                            </div>
                            <span>Agregar</span>
                            <button>
                                <div class="svg-wrapper-1">
                                    <div class="svg-wrapper">
                                        <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="30" height="30"
                                             viewBox="0 0 128 128">
                                        <path
                                            d="M 79.335938 15.667969 C 78.064453 15.622266 76.775 15.762109 75.5 16.099609 C 72.1 16.999609 69.299609 19.199219 67.599609 22.199219 L 64 28.699219 C 63.2 30.099219 63.699609 32.000781 65.099609 32.800781 L 82.400391 42.800781 C 82.900391 43.100781 83.400391 43.199219 83.900391 43.199219 C 84.200391 43.199219 84.399219 43.199609 84.699219 43.099609 C 85.499219 42.899609 86.1 42.399219 86.5 41.699219 L 90.199219 35.199219 C 91.899219 32.199219 92.4 28.700781 91.5 25.300781 C 90.6 21.900781 88.400391 19.100391 85.400391 17.400391 C 83.525391 16.337891 81.455078 15.744141 79.335938 15.667969 z M 60.097656 38.126953 C 59.128906 38.201172 58.199219 38.724609 57.699219 39.599609 L 27.5 92 C 24.1 97.8 22.200781 104.30039 21.800781 110.90039 L 21 123.80078 C 20.9 124.90078 21.5 125.99961 22.5 126.59961 C 23 126.89961 23.5 127 24 127 C 24.6 127 25.199219 126.8 25.699219 126.5 L 36.5 119.40039 C 42 115.70039 46.7 110.8 50 105 L 80.300781 52.599609 C 81.100781 51.199609 80.599219 49.3 79.199219 48.5 C 77.799219 47.7 75.899609 48.199609 75.099609 49.599609 L 44.800781 102 C 41.900781 106.9 37.899609 111.20039 33.099609 114.40039 L 27.300781 118.19922 L 27.699219 111.30078 C 27.999219 105.60078 29.699609 100 32.599609 95 L 62.900391 42.599609 C 63.700391 41.199609 63.200781 39.3 61.800781 38.5 C 61.275781 38.2 60.678906 38.082422 60.097656 38.126953 z M 49 121 C 47.3 121 46 122.3 46 124 C 46 125.7 47.3 127 49 127 L 89 127 C 90.7 127 92 125.7 92 124 C 92 122.3 90.7 121 89 121 L 49 121 z M 104 121 A 3 3 0 0 0 101 124 A 3 3 0 0 0 104 127 A 3 3 0 0 0 107 124 A 3 3 0 0 0 104 121 z">
                                        </path>
                                        </svg>
                                    </div>
                                </div>
                                <span>Editar</span>
                                <button>
                                    <div class="svg-wrapper-1">
                                        <div class="svg-wrapper">
                                            <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="30" height="30"
                                                 viewBox="0,0,256,256"">
                                            <g fill=" #ffffff" fill-rule="nonzero" stroke="none" stroke-width="1"
                                               stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10"
                                               stroke-dasharray="" stroke-dashoffset="0" font-family="none"
                                               font-weight="none" font-size="none" text-anchor="none"
                                               style="mix-blend-mode: normal">
                                            <g transform="scale(10.66667,10.66667)">
                                            <path
                                                d="M5,3c-1.105,0 -2,0.895 -2,2v14c0,1.105 0.895,2 2,2h14c1.105,0 2,-0.895 2,-2v-14c0,-1.105 -0.895,-2 -2,-2zM11,6c2.761,0 5,2.239 5,5c0,1.019 -0.30803,1.96391 -0.83203,2.75391l2.53906,2.53906c0.391,0.39 0.391,1.02406 0,1.41406c-0.391,0.391 -1.02406,0.391 -1.41406,0l-2.53906,-2.53906c-0.79,0.524 -1.73491,0.83203 -2.75391,0.83203c-2.761,0 -5,-2.239 -5,-5c0,-2.761 2.239,-5 5,-5zM11,8c-1.65685,0 -3,1.34315 -3,3c0,1.65685 1.34315,3 3,3c1.65685,0 3,-1.34315 3,-3c0,-1.65685 -1.34315,-3 -3,-3z">
                                            </path>
                                            </g>
                                            </g>
                                            </svg>
                                            </svg>
                                        </div>
                                    </div>
                                    <span>Buscar</span>
                                    <button id="eliminarButton" class="Eliminar">
                                        <div class="svg-wrapper-1">
                                            <div class="svg-wrapper">
                                                <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="30"
                                                     height="30" viewBox="0 0 50 50" class="iconoEliminar">
                                                <path
                                                    d="M 21 2 C 19.354545 2 18 3.3545455 18 5 L 18 7 L 8 7 A 1.0001 1.0001 0 1 0 8 9 L 9 9 L 9 45 C 9 46.7 10.3 48 12 48 L 38 48 C 39.7 48 41 46.7 41 45 L 41 9 L 42 9 A 1.0001 1.0001 0 1 0 42 7 L 32 7 L 32 5 C 32 3.3545455 30.645455 2 29 2 L 21 2 z M 21 4 L 29 4 C 29.554545 4 30 4.4454545 30 5 L 30 7 L 20 7 L 20 5 C 20 4.4454545 20.445455 4 21 4 z M 19 14 C 19.6 14 20 14.4 20 15 L 20 40 C 20 40.6 19.6 41 19 41 C 18.4 41 18 40.6 18 40 L 18 15 C 18 14.4 18.4 14 19 14 z M 25 14 C 25.6 14 26 14.4 26 15 L 26 40 C 26 40.6 25.6 41 25 41 C 24.4 41 24 40.6 24 40 L 24 15 C 24 14.4 24.4 14 25 14 z M 31 14 C 31.6 14 32 14.4 32 15 L 32 40 C 32 40.6 31.6 41 31 41 C 30.4 41 30 40.6 30 40 L 30 15 C 30 14.4 30.4 14 31 14 z">
                                                </path>
                                                </svg>
                                            </div>
                                        </div>
                                        <span>Eliminar</span>

                                    </button>

                                    <div id="confirmacionContenedor" class="modal">
                                        <div class="contenedorElimnar">
                                            <div class="notificacionEliminar">
                                                <div class="fondo">
                                                    <div class="fondoTxt">
                                                        <div class="txt">

                                                            <svg class="fondo-svg" xmlns="http://www.w3.org/2000/svg"
                                                                 viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                                                            <path fill-rule="evenodd"
                                                                  d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z"
                                                                  clip-rule="evenodd"></path>
                                                            </svg>
                                                        </div>
                                                        <div class="fondoWarning">
                                                            <p class="encabezadoWarning">¿Estas seguro de que quieres eliminar el registro?
                                                            </p>
                                                            <div class="descripcionWarning">
                                                                <p>Este registro se eliminará permanentemente de la base de datos.</p>
                                                            </div>
                                                            <div class="fondoBtnWarning">
                                                                <button  class="btnConfirmarDelete" id="confirmarEliminacion">Si, Eliminar</button>
                                                                <button 
                                                                    class="noDelete" id="cancelarEliminacion">Cancelar</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>



                                    <script>

                                        document.addEventListener('DOMContentLoaded', () => {
                                            const botonesEliminar = document.querySelectorAll('.Eliminar');
                                            const modal = document.querySelector('.modal');
                                            const confirmarEliminacion = document.querySelector('.btnConfirmarDelete');
                                            const cancelarEliminacion = document.querySelector('.noDelete');

                                            if (modal) {
                                                modal.style.display = 'none';
                                            }

                                            botonesEliminar.forEach(boton => {
                                                boton.addEventListener('click', () => {
                                                    if (modal) {
                                                        modal.style.display = 'flex';
                                                    }
                                                });
                                            });

                                            if (confirmarEliminacion) {
                                                confirmarEliminacion.addEventListener('click', () => {
                                                    alert('¡El registro ha sido eliminado!');
                                                    if (modal) {
                                                        modal.style.display = 'none';
                                                    }
                                                });
                                            }

                                            if (cancelarEliminacion) {
                                                cancelarEliminacion.addEventListener('click', () => {
                                                    if (modal) {
                                                        modal.style.display = 'none';
                                                    }
                                                });
                                            }

                                            if (modal) {
                                                modal.addEventListener('click', (event) => {
                                                    if (event.target === modal) {
                                                        modal.style.display = 'none';
                                                    }
                                                });
                                            }
                                        });
                                    </script>
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
                                                        <th>ID</th>
                                                        <th>Nombre</th>
                                                        <th>Descripción</th>
                                                        <th>Precio</th>
                                                        <th>Existencias</th>
                                                        <th>ID Categoría</th>
                                                        <th>ID Marca</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                <tbody>

                                                </tbody>

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    </div>
                                    </body>

                                    </html>
