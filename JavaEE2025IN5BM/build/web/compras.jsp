<%-- 
    Document   : compras
    Created on : 22/07/2025, 21:05:03
    Author     : HP
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Essenza | Gestión de Compras</title>
    <link rel="stylesheet" href="Styles/compras.css">
</head>
<body>
    <nav>
        <a href="admin.jsp" class="logo">Essenza & Co.</a>
    </nav>
    <div class="contenedor-principal">
        <div class="panel-formulario">
            <h1>Gestión de Compras</h1>
            <form class="formulario">
                <div class="form-control">
                    <input class="input" type="datetime-local" placeholder="Fecha de Compra" required>
                    <span class="input-border"></span>
                </div>
                
                <div class="form-control">
                    <input class="input" type="number" step="0.01" placeholder="Total (Q.)" required>
                    <span class="input-border"></span>
                </div>
                
                <div class="form-control">
                    <input class="input" type="number" placeholder="Código Proveedor" required>
                    <span class="input-border"></span>
                </div>
                
                <div class="form-control">
                    <input class="input" type="number" placeholder="Código Empleado" required>
                    <span class="input-border"></span>
                </div>
                
                <div class="botones">
                    <button type="submit" class="btn-add">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="white" viewBox="0 0 24 24" class="add-icon">
                            <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm5 11h-4v4h-2v-4H7v-2h4V7h2v4h4v2z"/>
                        </svg>
                        <span class="btn-text">Agregar</span>
                        <div class="sparkle sparkle-1"></div>
                        <div class="sparkle sparkle-2"></div>
                        <div class="sparkle sparkle-3"></div>
                    </button>
                    <button type="button" class="btn-update">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="white" viewBox="0 0 24 24" class="update-icon">
                            <path d="M3 17.25V21h3.75L17.81 9.94l-3.75-3.75L3 17.25zM20.71 7.04c.39-.39.39-1.02 0-1.41l-2.34-2.34c-.39-.39-1.02-.39-1.41 0l-1.83 1.83 3.75 3.75 1.83-1.83z"/>
                        </svg>
                        <span class="btn-text">Actualizar</span>
                        <div class="pulse-ring"></div>
                    </button>
                    
                    <div class="container">
                        <input checked="" class="checkbox" type="checkbox"> 
                        <div class="mainbox">
                            <div class="iconContainer">
                                <svg viewBox="0 0 512 512" height="1em" xmlns="http://www.w3.org/2000/svg" class="search_icon"><path d="M416 208c0 45.9-14.9 88.3-40 122.7L502.6 457.4c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L330.7 376c-34.4 25.2-76.8 40-122.7 40C93.1 416 0 322.9 0 208S93.1 0 208 0S416 93.1 416 208zM208 352a144 144 0 1 0 0-288 144 144 0 1 0 0 288z"></path></svg>
                            </div>
                         <input class="search_input" placeholder="Buscar..." type="text">
                        </div>
                    </div>
                    
                    <button type="button" class="bin-button" title="Eliminar">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 39 7" class="bin-top">
                            <line stroke-width="4" stroke="white" y2="5" x2="39" y1="5"></line>
                            <line stroke-width="3" stroke="white" y2="1.5" x2="26.0357" y1="1.5" x1="12"></line>
                        </svg>
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 33 39" class="bin-bottom">
                            <mask fill="white" id="path-1-inside-1_8_19">
                                <path d="M0 0H33V35C33 37.2091 31.2091 39 29 39H4C1.79086 39 0 37.2091 0 35V0Z"></path>
                            </mask>
                            <path mask="url(#path-1-inside-1_8_19)" fill="white" d="M0 0H33H0ZM37 35C37 39.4183 33.4183 43 29 43H4C-0.418278 43 -4 39.4183 -4 35H4H29H37ZM4 43C-0.418278 43 -4 39.4183 -4 35V0H4V35V43ZM37 0V35C37 39.4183 33.4183 43 29 43V35V0H37Z"></path>
                            <path stroke-width="4" stroke="white" d="M12 6L12 29"></path>
                            <path stroke-width="4" stroke="white" d="M21 6V29"></path>
                        </svg>
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 89 80" class="garbage">
                            <path fill="white" d="M20.5 10.5L37.5 15.5L42.5 11.5L51.5 12.5L68.75 0L72 11.5L79.5 12.5H88.5L87 22L68.75 31.5L75.5066 25L86 26L87 35.5L77.5 48L70.5 49.5L80 50L77.5 71.5L63.5 58.5L53.5 68.5L65.5 70.5L45.5 73L35.5 79.5L28 67L16 63L12 51.5L0 48L16 25L22.5 17L20.5 10.5Z"></path>
                        </svg>
                    </button>
                </div>
            </form>
        </div>
        <div class="panel-tabla">
            <div class="tabla-contenedor">
                <table class="tabla">
                    <thead>
                        <tr>
                            <th>Código Compra</th>
                            <th>Fecha Compra</th>
                            <th>Total</th>
                            <th>Código Proveedor</th>
                            <th>Código Empleado</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>2024-01-10 08:30:00</td>
                            <td>Q.5,420.75</td>
                            <td>1</td>
                            <td>1</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>2024-01-11 10:15:00</td>
                            <td>Q.3,890.50</td>
                            <td>2</td>
                            <td>2</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>2024-01-12 14:20:00</td>
                            <td>Q.7,234.25</td>
                            <td>3</td>
                            <td>3</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>2024-01-13 09:45:00</td>
                            <td>Q.2,567.80</td>
                            <td>4</td>
                            <td>4</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>2024-01-14 16:30:00</td>
                            <td>Q.4,890.00</td>
                            <td>5</td>
                            <td>5</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>