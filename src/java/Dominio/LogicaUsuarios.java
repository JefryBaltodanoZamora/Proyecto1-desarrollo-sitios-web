package Dominio;
import Datos.Usuarios;

public class LogicaUsuarios {
    Usuarios usuarios;

    public LogicaUsuarios(String usuario,String contrasena) {
        this.usuarios = new Usuarios(usuario, contrasena);
    }

    public LogicaUsuarios(String usuario,String nombre,String contrasena,String cuenta) {
        this.usuarios = new Usuarios(usuario, nombre, contrasena, cuenta);
    }
    
    public void guardaUsuario(){
        usuarios.guardar();
    }
    
    public boolean verificarUsuario(){
        return usuarios.verificar();
    }
    
}
