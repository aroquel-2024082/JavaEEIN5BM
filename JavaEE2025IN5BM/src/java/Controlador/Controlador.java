package Controlador;

import com.alanlacan.modelo.Empleado;
import com.alanlacan.modelo.EmpleadoDAO;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
public class Controlador extends HttpServlet {
    
    Empleado empleado = new Empleado();
    EmpleadoDAO empleadoDao = new EmpleadoDAO();
    int codEmpleado;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");
        
        if (menu.equals("Principal")) {
            request.getRequestDispatcher("admin.jsp").forward(request, response);
        } else if (menu.equals("Index")) {
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else if (menu.equals("Cliente")) {
            request.getRequestDispatcher("cliente.jsp").forward(request, response);
        } else if (menu.equals("Proveedor")) {
            request.getRequestDispatcher("proveedor.jsp").forward(request, response);
        } else if (menu.equals("Producto")) {
            request.getRequestDispatcher("producto.jsp").forward(request, response);
        } else if (menu.equals("Empleado")) {
            
            switch (accion) {
                case "Listar":
                    List listaEmpleados = empleadoDao.listar();
                    request.setAttribute("empleados", listaEmpleados);
                    break;
                case "Agregar":
                    try {
                        String nombre = request.getParameter("txtNombre");
                        String apellido = request.getParameter("txtApellido");
                        String direccion = request.getParameter("txtDireccion");
                        String telefono = request.getParameter("txtTelefono");
                        String correo = request.getParameter("txtCorreo");
                        String puesto = request.getParameter("txtPuesto");
                        Part filePart = request.getPart("txtImagen");
                        
                        InputStream inputStream = filePart.getInputStream();
                        byte[] imagenBytes;
                        try (ByteArrayOutputStream outputStream = new ByteArrayOutputStream()) {
                            byte[] buffer = new byte[4096];
                            int bytesRead;
                            while ((bytesRead = inputStream.read(buffer)) != -1) {
                                outputStream.write(buffer, 0, bytesRead);
                            }
                            imagenBytes = outputStream.toByteArray();
                        }
                        
                        empleado.setNombreEmpleado(nombre);
                        empleado.setApellidoEmpleado(apellido);
                        empleado.setDireccionEmpleado(direccion);
                        empleado.setTelefonoEmpleado(telefono);
                        empleado.setEmailEmpleado(correo);
                        empleado.setPuestoEmpleado(puesto);
                        empleado.setImagenPerfil(imagenBytes);
                        
                        empleadoDao.agregar(empleado);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
                case "Editar":
                    codEmpleado = Integer.parseInt(request.getParameter("id"));
                    Empleado emp = empleadoDao.buscar(codEmpleado);
                    request.setAttribute("empleado", emp);
                    break;
                case "Actualizar":
                    try {
                        String id = request.getParameter("txtId");
                        String nombre = request.getParameter("txtNombre");
                        String apellido = request.getParameter("txtApellido");
                        String direccion = request.getParameter("txtDireccion");
                        String telefono = request.getParameter("txtTelefono");
                        String correo = request.getParameter("txtCorreo");
                        String puesto = request.getParameter("txtPuesto");
                        Part filePart = request.getPart("txtImagen");

                        InputStream inputStream = filePart.getInputStream();
                        byte[] imagenBytes;
                        try (ByteArrayOutputStream outputStream = new ByteArrayOutputStream()) {
                            byte[] buffer = new byte[4096];
                            int bytesRead;
                            while ((bytesRead = inputStream.read(buffer)) != -1) {
                                outputStream.write(buffer, 0, bytesRead);
                            }
                            imagenBytes = outputStream.toByteArray();
                        }
                        
                        empleado.setCodigoEmpleado(Integer.parseInt(id));
                        empleado.setNombreEmpleado(nombre);
                        empleado.setApellidoEmpleado(apellido);
                        empleado.setDireccionEmpleado(direccion);
                        empleado.setTelefonoEmpleado(telefono);
                        empleado.setEmailEmpleado(correo);
                        empleado.setPuestoEmpleado(puesto);
                        empleado.setImagenPerfil(imagenBytes);
                        
                        empleadoDao.actualizar(empleado);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
                case "Eliminar":
                    codEmpleado = Integer.parseInt(request.getParameter("id"));
                    empleadoDao.eliminar(codEmpleado);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
                default:
                    System.out.println("Opcion no valida");
            }
            request.getRequestDispatcher("empleado.jsp").forward(request, response);
            
        } else if (menu.equals("Venta")) {
            request.getRequestDispatcher("venta.jsp").forward(request, response);
        } else if (menu.equals("DetalleVenta")) {
            request.getRequestDispatcher("detalleVenta.jsp").forward(request, response);
        } else if (menu.equals("Factura")) {
            request.getRequestDispatcher("factura.jsp").forward(request, response);
        } else if (menu.equals("Compra")) {
            request.getRequestDispatcher("compras.jsp").forward(request, response);
        } else if (menu.equals("DetalleCompra")) {
            request.getRequestDispatcher("detalleCompra.jsp").forward(request, response);
        } else if (menu.equals("Registrarse")) {
            String nombre = request.getParameter("txtNombre");
            String apellido = request.getParameter("txtApellido");
            String telefono = request.getParameter("txtContrasena");
            String email = request.getParameter("txtCorreo");
            
            if (nombre != null && !nombre.isEmpty() && email != null && !email.isEmpty() && telefono != null && !telefono.isEmpty()) {
                Empleado empleado = new Empleado(nombre, apellido, telefono, email);
                EmpleadoDAO dao = new EmpleadoDAO();
                if (dao.registrar(empleado)) {
                    request.setAttribute("mensaje", "Registro exitoso. Inicia sesión.");
                    RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                    rd.forward(request, response);
                } else {
                    request.setAttribute("error", "Error al registrar. El email ya existe o hay un problema.");
                    RequestDispatcher rd = request.getRequestDispatcher("registrase.jsp");
                    rd.forward(request, response);
                }
            } else {
                request.setAttribute("error", "Todos los campos son requeridos.");
                RequestDispatcher rd = request.getRequestDispatcher("registrase.jsp");
                rd.forward(request, response);
            }
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}