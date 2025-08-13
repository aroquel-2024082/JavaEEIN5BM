package Controlador;

import com.alanlacan.modelo.Empleado;
import com.alanlacan.modelo.EmpleadoDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Controlador extends HttpServlet {
    
    Empleado empleado = new Empleado();
    EmpleadoDAO empleadoDao = new EmpleadoDAO();
    int codEmpleado;
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");
        
        //Seccion de iframe
        
        if (menu.equals("Principal")) {
            request.getRequestDispatcher("admin.jsp").forward(request, response);
            }else if(menu.equals("Index")){
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }else if(menu.equals("Cliente")){
                request.getRequestDispatcher("cliente.jsp").forward(request, response);
            }else if(menu.equals("Proveedor")){
                request.getRequestDispatcher("proveedor.jsp").forward(request, response);
            }else if(menu.equals("Producto")){
                request.getRequestDispatcher("producto.jsp").forward(request,response);
            }else if(menu.equals("Empleado")){
                
                //Swich
            
                switch (accion) {
                    case "Listar":
                        List listaEmpleados = empleadoDao.listar();
                        request.setAttribute("empleados",listaEmpleados);
                        break;
                    case "Agregar":
                        String nombre = request.getParameter("txtNombre");
                        String apellido = request.getParameter("txtApellido");
                        String direccion = request.getParameter("txtDireccion");
                        String telefono = request.getParameter("txtTelefono");
                        String correo = request.getParameter("txtCorreo");
                        String puesto = request.getParameter("txtPuesto");
                        empleado.setNombreEmpleado(nombre);
                        empleado.setApellidoEmpleado(apellido);
                        empleado.setDireccionEmpleado(direccion);
                        empleado.setTelefonoEmpleado(telefono);
                        empleado.setEmailEmpleado(correo);
                        empleado.setPuestoEmpleado(puesto);
                        empleadoDao.agregar(empleado);
                        request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                        break;
                    case "Editar":
                        break;
                    case "Actualizar":
                        break;
                    case "Buscar":
                        break;
                    case "Eliminar":
                        break;
                    default:
                        System.out.println("Opcion no valida");
                }
            
                request.getRequestDispatcher("empleado.jsp").forward(request,response);
            }else if(menu.equals("Venta")){
                request.getRequestDispatcher("venta.jsp").forward(request,response);
            }else if(menu.equals("DetalleVenta")){
                request.getRequestDispatcher("detalleVenta.jsp").forward(request,response);
            }else if(menu.equals("Factura")){
                request.getRequestDispatcher("factura.jsp").forward(request,response);
            }else if(menu.equals("Compra")){
                request.getRequestDispatcher("compras.jsp").forward(request,response);
            }else if(menu.equals("DetalleCompra")){
                request.getRequestDispatcher("detalleCompra.jsp").forward(request,response);
            
            //Seccion de Registrarse    
                
        } else if (menu.equals("Registrarse")) {
            String nombre = request.getParameter("txtNombre");
            String apellido = request.getParameter("txtApellido");
            String direccion = "";
            String telefono = request.getParameter("txtContrasena");
            String email = request.getParameter("txtCorreo");
            String puesto = "";

            if (nombre != null && !nombre.isEmpty() && email != null && !email.isEmpty() && telefono != null && !telefono.isEmpty()) {
                Empleado empleado = new Empleado(nombre, apellido, direccion, telefono, email, puesto);
                EmpleadoDAO dao = new EmpleadoDAO();
                if (dao.registrar(empleado)) {
                    request.setAttribute("mensaje", "Registro exitoso. Inicia sesión.");
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                } else {
                    request.setAttribute("error", "Error al registrar. El email ya existe o hay un problema.");
                    request.getRequestDispatcher("registrase.jsp").forward(request, response);
                }
            } else {
                request.setAttribute("error", "Todos los campos son requeridos.");
                request.getRequestDispatcher("registrase.jsp").forward(request, response);
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
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