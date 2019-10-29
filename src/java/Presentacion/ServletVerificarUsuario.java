package Presentacion;

import Dominio.LogicaProductos;
import Dominio.LogicaUsuarios;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
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
                System.out.println( "Login ok" ); 
                request.getRequestDispatcher("./index.jsp").forward(request, response);
            }else{
                System.out.println( "Pop up con error" ); 
                request.getRequestDispatcher("./login.jsp").forward(request, response);
            }
        } 
        
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
