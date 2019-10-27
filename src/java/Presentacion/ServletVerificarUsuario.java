package Presentacion;

import Dominio.LogicaUsuarios;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ServletVerificarUsuario", urlPatterns = {"/ServletVerificarUsuario"})
public class ServletVerificarUsuario extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String usuario = (String) request.getParameter("Iusuario");
        String contrasena = request.getParameter("Icontrasena");
        
        LogicaUsuarios logicaUsuarios = new LogicaUsuarios(usuario, contrasena);

        if (request.getParameter("btnIngresar") != null) {
            boolean prueba=logicaUsuarios.verificarUsuario();
            if(prueba){
                HttpSession httpSession=request.getSession(true);
                httpSession.setAttribute("usuario",usuario);
                request.getRequestDispatcher("./index.jsp").forward(request, response);
            }else{
                System.out.println( "Pop up con error" ); 
                request.getRequestDispatcher("./login.jsp").forward(request, response);
            }
        } 
        
    }
}
