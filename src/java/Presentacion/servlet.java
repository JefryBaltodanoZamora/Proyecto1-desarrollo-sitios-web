/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Presentacion;

import Dominio.LogicaContactenos;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;
import javax.servlet.http.HttpServlet;
/**
 *
 * @author jbaltoda
 */
public class servlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String pais = request.getParameter("pais");
        String comentario = request.getParameter("comentario");
        String correo = request.getParameter("correo");
        
        System.out.println( nombre ); 
        System.out.println( apellido); 
        System.out.println(pais ); 
        System.out.println( comentario ); 
        System.out.println( correo ); 
        
        
        LogicaContactenos logicaContactenos = new LogicaContactenos(nombre, apellido, pais, comentario, correo);

        if (request.getParameter("btnEnviar") != null) {
            System.out.println( "llego desde jsp" ); 
            logicaContactenos.guardarFormulatio();
        } 
        request.getRequestDispatcher("./contactenos.jsp").forward(request, response);
    }
    
}
