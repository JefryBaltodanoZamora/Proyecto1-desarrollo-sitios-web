package Presentacion;

import Dominio.LogicaUsuarios;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ServletCrearUsuario", urlPatterns = {"/ServletCrearUsuario"})
public class ServletCrearUsuario extends HttpServlet {
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombre = request.getParameter("Rnombre");
        String usuario = request.getParameter("Rusuario");
        String contrasena = request.getParameter("Rcontrasena");
        String cuenta = (String) request.getParameter("Rcuenta");
        
        LogicaUsuarios logicaUsuarios = new LogicaUsuarios(usuario, nombre, contrasena, cuenta);

        if (request.getParameter("btnRegistrar") != null) {
            System.out.println( "Registrando usuario, programar logica" ); 
            logicaUsuarios.guardaUsuario();
        } 
        request.getRequestDispatcher("./login.jsp").forward(request, response);
    }
}
