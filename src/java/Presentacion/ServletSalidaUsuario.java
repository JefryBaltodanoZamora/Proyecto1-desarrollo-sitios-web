package Presentacion;

import Dominio.LogicaUsuarios;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ServletSalidaUsuario", urlPatterns = {"/ServletSalidaUsuario"})
public class ServletSalidaUsuario extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if (request.getParameter("btnCerrar") != null) {
            HttpSession session = request.getSession(false);
            session.removeAttribute("usuario");
            session.getMaxInactiveInterval();
            request.getRequestDispatcher("./index.jsp").forward(request, response);
        }
    }
}
