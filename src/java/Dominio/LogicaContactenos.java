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
    Contactenos contactenos = new Contactenos("test1", "test2", "test3", "test4");
    
    public void guardarFormulatio(){
        contactenos.guardar();
    }
    
}
