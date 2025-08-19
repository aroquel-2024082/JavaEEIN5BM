package Controlador;

import com.alanlacan.modelo.EmpleadoDAO;
import java.io.IOException;
import java.io.OutputStream;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet(name = "FotoServlet", urlPatterns = {"/FotoServlet"})
public class FotoServlet extends HttpServlet {

    EmpleadoDAO empleadoDAO = new EmpleadoDAO();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            
            byte[] imagenBytes = empleadoDAO.obtenerImagenPorId(id);

            if (imagenBytes != null && imagenBytes.length > 0) {
                response.setContentType("image/jpeg");
                OutputStream out = response.getOutputStream();
                out.write(imagenBytes);
                out.close();
            } else {
                response.sendError(HttpServletResponse.SC_NOT_FOUND, "Imagen no encontrada.");
            }
        } catch (NumberFormatException e) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "ID de empleado no válido.");
        } catch (Exception e) {
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error interno del servidor.");
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