/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;
import java.sql.*;
/**
 *
 * @author jbaltoda
 */
public class Contactenos {
    String nombre;
    String apellido;
    String pais;
    String comentario;
    String correo;

    public Contactenos(String nombre, String apellido, String pais, String comentario, String correo) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.pais = pais;
        this.comentario = comentario;
        this.correo = correo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }
    
    public String getcorreo() {
        return correo;
    }

    public void setcorreo(String correo) {
        this.correo = correo;
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
          String query = "insert into contactenos (nombre, apellido, pais, comentarios, correo)"
            + " values (?, ?, ?, ?, ?)";

          // create the mysql insert preparedstatement
          PreparedStatement preparedStmt = conn.prepareStatement(query);
          preparedStmt.setString(1, this.nombre);
          preparedStmt.setString(2, this.apellido);
          preparedStmt.setString(3, this.pais);
          preparedStmt.setString(4, this.comentario);
          preparedStmt.setString(5, this.correo);

          // execute the preparedstatement
          preparedStmt.execute();

          conn.close();
        }
        catch (Exception e)
        {
          System.err.println("Error guardando el formulario.");
          System.err.println(e.getMessage());
        }
    }
}
