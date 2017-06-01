package Modelo.DAO;

import Modelo.BEAN.BeanLogin;
import Util.Conexion;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Daniel Vargas
 */
public class DaoLogin extends Conexion {
    public Connection conn = null;
    private Statement puente = null;
    private ResultSet rs = null;
    
    public boolean encontrado = false;
    public boolean listo = false;
    
    public String Numero_identificacion="";
    public String Contrasena="";
    public int Rol_Asignado =0;
    
    public DaoLogin (BeanLogin BLog){
        super();
        try {
            conn = this.ObtenerConexion();
            puente = conn.createStatement();
            
            Numero_identificacion = BLog.getNumero_identificacion();
            Contrasena = BLog.getContrasena();
            Rol_Asignado = BLog.getRol_asignado();
        } catch (Exception e) {
            Logger.getLogger(DaoGestionCursos.class.getName()).log(Level.SEVERE, null, e);
        }
    }
    public int IngresarSistema(String Numero_identificacion, String Contrasena) {
        try {            
            rs = puente.executeQuery("select Rol_Asignado from personal WHERE Numero_identificacion = '"+Numero_identificacion+"' and Contrasena = '"+Contrasena+"'");
            while(rs.next()){
                Rol_Asignado = rs.getInt(1);
            }
            conexion.close();
        } catch (Exception e) {
            Logger.getLogger(DaoGestionCursos.class.getName()).log(Level.SEVERE, null, e);
        }
        return Rol_Asignado;
    }
}