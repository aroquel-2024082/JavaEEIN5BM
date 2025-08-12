<%-- 
    Document   : detalleCompras
    Created on : 22/07/2025, 17:57:26
    Author     : danny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
       <!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Essenza | Detalle de Compras</title>
    <link rel="stylesheet" href="Styles/detalleCompra.css">
</head>
<body>

    <nav>
        <a href="admin.jsp" class="logo">Essenza & Co.</a>
    </nav>

    <div class="contenedor-principal">

        <div class="form-container">
            <h2>Gestión de Productos</h2>
            <form>
                <input type="text" placeholder="Cantidad" required>
                <input type="text" placeholder="Precio Unitario" required>
                <input type="email" placeholder="Codigo Compra" required>
                <input type="password" placeholder="Codigo Producto" required>

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
                        <th>Cantidad</th>
                        <th>Precio Unitario</th>
                        <th>Codigo Compra</th>
                        <th>Codigo Producto</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Q.200.00</td>
                        <td>2</td>
                        <td>240807</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>Q.250.00</td>
                        <td>3</td>
                        <td>240807</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>Q.400.00</td>
                        <td>4</td>
                        <td>240807</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Q.450.00</td>
                        <td>5</td>
                        <td>240807</td>
                    </tr>
                    <tr>
                        <td>8</td>
                        <td>Q.500.00</td>
                        <td>6</td>
                        <td>240807</td>
                    </tr>
                    <tr>
                        <td>9</td>
                        <td>Q.550.00</td>
                        <td>7</td>
                        <td>240807</td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td>Q.700.00</td>
                        <td>8</td>
                        <td>240807</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>Q.750.00</td>
                        <td>9</td>
                        <td>240807</td>
                    </tr>
                    
                </tbody>
            </table>
        </div>
        <div class="cube-loader">
            <div class="cube-top"></div>
            <div class="cube-wrapper">
              <span style="--i:0" class="cube-span"></span>
              <span style="--i:1" class="cube-span"></span>
              <span style="--i:2" class="cube-span"></span>
              <span style="--i:3" class="cube-span"></span>
            </div>
          </div>
    </div>

</body>
</html>

