package Presentacion;

import Dominio.LogicaProductos;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ServletObtenerProductos", urlPatterns = {"/ServletObtenerProductos"})
public class ServletObtenerProductos extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        LogicaProductos logicaProductos = new LogicaProductos();
        
        if (logicaProductos.consultarProductos()) {
            List<Map> list = logicaProductos.obtenerProductos();
            request.setAttribute("productos", list);
            /*RequestDispatcher view = request.getRequestDispatcher("compras.jsp");
            view.forward(request, response);*/
           request.getRequestDispatcher("./compras.jsp").forward(request, response);
        }
    }
    
}
