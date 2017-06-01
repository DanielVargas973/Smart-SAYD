package Modelo.BEAN;

/**
 *
 * @author Daniel Vargas
 */
public class BeanLogin {

    private String Numero_identificacion;
    private String Contrasena;
    private int Rol_asignado;

    public BeanLogin(String Numero_identificacion, String Contrasena) {
        this.Numero_identificacion = Numero_identificacion;
        this.Contrasena = Contrasena;
    }
    
    public String getNumero_identificacion() {
        return Numero_identificacion;
    }

    public void setNumero_identificacion(String Numero_identificacion) {
        this.Numero_identificacion = Numero_identificacion;
    }

    public String getContrasena() {
        return Contrasena;
    }

    public void setContrasena(String Contrasena) {
        this.Contrasena = Contrasena;
    }

    public int getRol_asignado() {
        return Rol_asignado;
    }

    public void setRol_asignado(int Rol_asignado) {
        this.Rol_asignado = Rol_asignado;
    }
}
