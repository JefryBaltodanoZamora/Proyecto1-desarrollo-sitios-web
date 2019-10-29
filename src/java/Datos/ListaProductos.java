package Datos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class ListaProductos {
    List<Map> productos;

    public ListaProductos(List<Map> productos) {
        this.productos = productos;
    }

    public ListaProductos() {
        this.productos = new ArrayList<>();
    }

    public List<Map> getProductos() {
        return productos;
    }

    public void setProductos(List<Map> productos) {
        this.productos = productos;
    }
    
    public boolean obtenerProductosDesdeDB(){
        try
        {
          // create a mysql database connection
          String myDriver = "com.mysql.cj.jdbc.Driver";
          String myUrl = "jdbc:mysql://localhost:3306/proyecto1";
          Class.forName(myDriver);
          Connection conn = DriverManager.getConnection(myUrl, "root", "");

          // the mysql insert statement
          String query = "select * from productos";

          // create the mysql insert preparedstatement
          PreparedStatement preparedStmt = conn.prepareStatement(query);
          // execute the preparedstatement
          ResultSet result =  preparedStmt.executeQuery();
          Map map;
          while (result.next())
          {
                map = new HashMap();
                map.put("id", result.getString("id"));
                map.put("nombre", result.getString("nombre"));
                map.put("imagen", result.getString("imagen"));
                map.put("precio", result.getString("precio"));
                map.put("paypal", result.getString("buttonid"));
                productos.add(map);
          }
          conn.close();
          return !productos.isEmpty();
        }
        catch (Exception e)
        {
          System.err.println("Error verificando usuario.");
          System.err.println(e.getMessage());
          return false;
        }
    }
    
    public boolean consultarProductos(){
        //Aqui va la logica para obtener la info https://programmer.help/blogs/how-to-query-and-display-database-data-tables-on-jsp.html
        Map map = new HashMap();
        map.put("id","1");
        map.put("nombre","Nintendo Switch");
        map.put("imagen", "imagenes/s1.png");
        map.put("precio", "300");
        map.put("paypal","GAQSETGD4UUTY");
        productos.add(map);
        map = new HashMap();
        map.put("id","2");
        map.put("nombre","Xbox One");
        map.put("imagen", "imagenes/s2.png");
        map.put("precio", "400");
        map.put("paypal","V7S7NFD5MK3LC");
        productos.add(map);
        map = new HashMap();
        map.put("id","3");
        map.put("nombre","Playstation 4");
        map.put("imagen", "imagenes/s3.png");
        map.put("precio", "350");
        map.put("paypal","QYE7A7JTQSDGQ");
        productos.add(map);
        if(productos.isEmpty()){
            return false;
        }else{
            return true;
        }
    }
    
}
