package Datos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Usuarios {
    String usuario;
    String nombre;
    String contrasena;
    String cuenta;

    public Usuarios() {
    }
    
    public Usuarios(String usuario, String contrasena) {
        this.usuario = usuario;
        this.contrasena = contrasena;
    }

    public Usuarios(String usuario, String nombre, String contrasena, String cuenta) {
        this.usuario = usuario;
        this.nombre = nombre;
        this.contrasena = contrasena;
        this.cuenta = cuenta;
    }
    
    

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getCuenta() {
        return cuenta;
    }

    public void setCuenta(String cuenta) {
        this.cuenta = cuenta;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }
    
    public void guardar(){
        try
        {
          // create a mysql database connection
          String myDriver = "com.mysql.cj.jdbc.Driver";
          String myUrl = "jdbc:mysql://localhost:3306/proyecto1";
          Class.forName(myDriver);
          Connection conn = DriverManager.getConnection(myUrl, "root", "");

          // the mysql insert statement
          String query = "insert into usuarios (usuario, password, nombre, cuenta)"
            + " values (?, ?, ?, ?)";

          // create the mysql insert preparedstatement
          PreparedStatement preparedStmt = conn.prepareStatement(query);
          preparedStmt.setString(1, this.usuario);
          preparedStmt.setString(2, this.contrasena);
          preparedStmt.setString(3, this.nombre);
          preparedStmt.setString(4, this.cuenta);

          // execute the preparedstatement
          preparedStmt.execute();

          conn.close();
        }
        catch (Exception e)
        {
          System.err.println("Error registrando usuario.");
          System.err.println(e.getMessage());
        }
    }
    
    public boolean verificar(){
        try
        {
          // create a mysql database connection
          String myDriver = "com.mysql.cj.jdbc.Driver";
          String myUrl = "jdbc:mysql://localhost:3306/proyecto1";
          Class.forName(myDriver);
          Connection conn = DriverManager.getConnection(myUrl, "root", "");

          // the mysql insert statement
          String query = "select * from usuarios where usuario = ? and password = ?";

          // create the mysql insert preparedstatement
          PreparedStatement preparedStmt = conn.prepareStatement(query);
          preparedStmt.setString(1, this.usuario);
          preparedStmt.setString(2, this.contrasena);
          
          System.err.println("query is: " + query);
          System.err.println("user: " + usuario);
          System.err.println("pass: " + contrasena);
          // execute the preparedstatement
          ResultSet result =  preparedStmt.executeQuery();
          
          while (result.next())
          {
              conn.close();
              return true;
          }
          conn.close();
          return false;
        }
        catch (Exception e)
        {
          System.err.println("Error verificando usuario.");
          System.err.println(e.getMessage());
          return false;
        }
     
    }
    
}
