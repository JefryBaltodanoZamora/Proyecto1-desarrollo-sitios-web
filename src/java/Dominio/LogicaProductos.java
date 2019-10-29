
package Dominio;

import Datos.ListaProductos;
import java.util.List;
import java.util.Map;

public class LogicaProductos {
    ListaProductos listaProductos;

    public LogicaProductos() {
         this.listaProductos = new ListaProductos();
    }

    public LogicaProductos(ListaProductos listaProductos) {
        this.listaProductos = listaProductos;
    }

    public ListaProductos getListaProductos() {
        return listaProductos;
    }

    public void setListaProductos(ListaProductos listaProductos) {
        this.listaProductos = listaProductos;
    }
    
    public boolean consultarProductos(){
        return listaProductos.obtenerProductosDesdeDB();
    }
    
    public List<Map> obtenerProductos(){
        return listaProductos.getProductos();
    }
}
