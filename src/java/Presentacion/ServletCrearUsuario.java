package Presentacion;

import Dominio.LogicaProductos;
import Dominio.LogicaUsuarios;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
    
     public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException{
        HttpSession httpSession=request.getSession(true);
        if (httpSession.getAttribute("usuario") == null) {
            response.sendRedirect("./login.jsp");
        }else{
        LogicaProductos logicaProductos = new LogicaProductos();
        
        if (logicaProductos.consultarProductos()) {
            List<Map> list = logicaProductos.obtenerProductos();
            request.setAttribute("productos", list);
            /*RequestDispatcher view = request.getRequestDispatcher("compras.jsp");
            view.forward(request, response);*/
            ServletContext context= getServletContext();
            RequestDispatcher rd= context.getRequestDispatcher("/compras.jsp");
            rd.forward(request, response);
        }
        }
    }
}
