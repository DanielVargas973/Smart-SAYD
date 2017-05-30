package Modelo.DAO;


import Modelo.BEAN.BeanAsignatura;
import Util.Conexion;
import Modelo.BEAN.BeanEstudiante;
import Modelo.BEAN.BeanInasistencia;
import Util.InterfaceAsignatura;
import Util.InterfaceEstudiante;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Daoasignatura extends Conexion implements InterfaceAsignatura{
    
    private Connection conn = null;
    private Statement puente = null;
    private ResultSet rs = null;
    

    public boolean listo = false;
    
    public String idAsignatura  = "";
    public String idPrograma  = "";
    public String Nombre_asignatura  = "";
    public String Codigo_asignatura = "";
    public String Descripcion = "";
    public String Numero_cupos  = "";
   
    public Daoasignatura(BeanAsignatura BeanAsignatura) {

        super();

        try {
            conn = this.ObtenerConexion();
            puente = conn.createStatement();
            
            idAsignatura = BeanAsignatura.getIdAsignatura();
            idPrograma = BeanAsignatura.getIdPrograma();
            Nombre_asignatura = BeanAsignatura.getNombre_asignatura();
            Codigo_asignatura = BeanAsignatura.getCodigo_asignatura();
            Descripcion = BeanAsignatura.getDescripcion();
            Numero_cupos = BeanAsignatura.getNumero_cupos();
            
            
           
           

        } catch (Exception e) {
            Logger.getLogger(Daoasignatura.class.getName()).log(Level.SEVERE, null, e);
        }

    }

    @Override
    public boolean AgregarAsignatura() {
           try {
            puente.executeUpdate("INSERT INTO asignatura (idAsignatura, idPrograma, Nombre_asignatura, Codigo_asignatura, Descripcion, Numero_cupos) VALUES (NULL, '"+idPrograma+"', '"+Nombre_asignatura+"', '"+Codigo_asignatura+"', '"+Descripcion+"', '"+Numero_cupos+"')");
            listo = true;
        } catch (Exception e) {
            Logger.getLogger(DaoSubirExcusa.class.getName()).log(Level.SEVERE, null, e);
        }
        return listo;
    }

    @Override
    public boolean ActualizarAsignatura() {
           try {
            puente.executeUpdate(")");
            listo = true;
        } catch (Exception e) {
            Logger.getLogger(DaoSubirExcusa.class.getName()).log(Level.SEVERE, null, e);
        }
        return listo;
    }

    @Override
    public boolean EliminarAsignatura() {
          try {
            puente.executeUpdate(")");
            listo = true;
        } catch (Exception e) {
            Logger.getLogger(DaoSubirExcusa.class.getName()).log(Level.SEVERE, null, e);
        }
        return listo;
    }
    
}