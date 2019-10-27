package Datos;

public class Usuarios {
    String usuario;
    String nombre;
    String contrasena;
    String cuenta;

    public Usuarios() {
    }
    
    public Usuarios(String nombre, String contrasena) {
        this.nombre = nombre;
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
    
    }
    
    public boolean verificar(){
     return true;
    }
    
}
