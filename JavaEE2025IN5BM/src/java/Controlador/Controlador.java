package Controlador;

import com.alanlacan.modelo.Empleado;
import com.alanlacan.modelo.EmpleadoDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Controlador extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");
        if (menu.equals("Principal")) {
            request.getRequestDispatcher("admin.jsp").forward(request, response);
        } else if (menu.equals("Registrarse")) {
            String nombre = request.getParameter("txtNombre");
            String apellido = request.getParameter("txtApellido");
            String direccion = ""; // No está en el formulario, opcional
            String telefono = request.getParameter("txtContrasena"); // Usado como contraseña
            String email = request.getParameter("txtCorreo");
            String puesto = ""; // No está en el formulario, opcional

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