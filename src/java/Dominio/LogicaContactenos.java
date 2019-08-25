/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dominio;

import Datos.Contactenos;
/**
 *
 * @author jbaltoda
 */
public class LogicaContactenos {
    
    //pasar aqui lo del formulario
    Contactenos contactenos;

    public LogicaContactenos(String nombre, String apellido, String pais, String comentario, String correo) {
         contactenos = new Contactenos(nombre, apellido, pais, comentario, correo);
    }
    
    public void guardarFormulatio(){
        contactenos.guardar();
    }
    
}
