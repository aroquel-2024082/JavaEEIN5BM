package Controlador;

import com.alanlacan.modelo.Empleado;
import com.alanlacan.modelo.EmpleadoDAO;
import java.io.IOException;
import java.io.OutputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "CuentaFotoServlet", urlPatterns = {"/CuentaFotoServlet"})
public class CuentaFotoServlet extends HttpServlet {

    private final EmpleadoDAO empleadoDAO = new EmpleadoDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession(false);
        if (session == null) {
            response.sendRedirect("index.jsp");
            return;
        }

        Empleado usuario = (Empleado) session.getAttribute("usuarioLogueado");
        if (usuario == null) {
            response.sendRedirect("index.jsp");
            return;
        }

        response.setContentType("image/jpeg");
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);
        
        OutputStream out = response.getOutputStream();
        try {
            int idEmpleado = usuario.getCodigoEmpleado();

            byte[] imagenBytes = empleadoDAO.obtenerImagenPorId(idEmpleado);

            if (imagenBytes != null && imagenBytes.length > 0) {
                out.write(imagenBytes);
            } else {
                response.setContentType("image/svg+xml");
                String placeholder = "<svg xmlns='http://www.w3.org/2000/svg' width='50' height='50' viewBox='0 0 50 50' style='background:#ccc;border-radius:50%;'><rect width='50' height='50' fill='#ccc' rx='50' ry='50'/><text x='50%' y='50%' dominant-baseline='middle' text-anchor='middle' font-family='Arial' font-size='20' fill='#000'>?</text></svg>";
                out.write(placeholder.getBytes());
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error al obtener la imagen.");
        } finally {
            if (out != null) {
                out.close();
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
}