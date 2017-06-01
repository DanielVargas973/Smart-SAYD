package Modelo.DAO;

import Modelo.BEAN.BeanPrograma;
import Util.Conexion;
import Util.InterfacePrograma;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Liam
 */
public class DaoPrograma extends Conexion implements InterfacePrograma {

    public Connection conn = null;
    private Statement puente = null;
    private ResultSet rs = null;

    public boolean encontrado = false;
    public boolean listo = false;

    public String idPrograma = "";
    public String Nombre_programa = "";
    public String Sede_realizacion = "";
    public String Descripcion_programa = "";
    public String Objetivo_formacion = "";
    public String Pensum_del_programa = "";
    public String Pensum_Archivo = "";
    public String Tiempo_duracion = "";

    public DaoPrograma(BeanPrograma BProg) {
        super();
        try {
            conn = this.ObtenerConexion();
            puente = conn.createStatement();

            idPrograma = BProg.getIdPrograma();
            Nombre_programa = BProg.getNombre_programa();
            Sede_realizacion = BProg.getSede_realizacion();
            Descripcion_programa = BProg.getDescripcion_programa();
            Objetivo_formacion = BProg.getObjetivo_formacion();
            Pensum_del_programa = BProg.Pensum_del_programa();
            Pensum_Archivo = BProg.getPensum_Archivo();
            Tiempo_duracion = BProg.getTiempo_duracion();

        } catch (Exception e) {
            Logger.getLogger(DaoGestionCursos.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    @Override
    public boolean AgregarPrograma() {
        try {
            puente.executeUpdate("INSERT INTO programa (idPrograma, Nombre_programa, Sede_realizacion, Descripcion_programa, Objetivo_formacion, Pensum_del_programa, Pensum_Archivo, Tiempo_duracion) values (NULL, '" + Nombre_programa + "', '" + Sede_realizacion + "', '" + Descripcion_programa + "', '" + Objetivo_formacion + "', NULL, NULL, '" + Tiempo_duracion + "');");
            listo = true;
        } catch (Exception e) {
            Logger.getLogger(DaoGestionCursos.class.getName()).log(Level.SEVERE, null, e);
        }
        return listo;
    }

    @Override
    public boolean ActualizarPrograma() {
        try {
            puente.executeUpdate("update programa set Nombre_programa='" + Nombre_programa + "', Sede_realizacion='" + Sede_realizacion + "', Descripcion_programa='" + Descripcion_programa + "', Objetivo_formacion='" + Objetivo_formacion + "',Tiempo_duracion='" + Tiempo_duracion + "' where idPrograma='" + idPrograma + "';");
            listo = true;
        } catch (Exception e) {
            Logger.getLogger(DaoGestionCursos.class.getName()).log(Level.SEVERE, null, e);
        }
        return listo;
    }

    @Override
    public boolean EliminarPrograma() {
        try {
            puente.executeUpdate("DELETE FROM programa WHERE idPrograma ='" + idPrograma + "'");
            listo = true;
        } catch (Exception e) {
            Logger.getLogger(DaoGestionCursos.class.getName()).log(Level.SEVERE, null, e);
        }
        return listo;
    }

    public static BeanPrograma FiltrarPrograma(String idPrograma) {
        BeanPrograma BProg = null;
        try {

            Conexion conex = new Conexion();
            Connection conn = conex.ObtenerConexion();
            Statement puente = conn.createStatement();
            ResultSet rs = puente.executeQuery("SELECT * FROM programa WHERE idPrograma='" + idPrograma + "';");

            while (rs.next()) {
                BProg = new BeanPrograma(idPrograma, rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8));
            }
            rs.close();
            puente.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return BProg;
    }

    public ArrayList<BeanPrograma> Listar() {

        Conexion conex = new Conexion();
        ArrayList<BeanPrograma> ListarPrograma = new ArrayList<BeanPrograma>();

        try {
            puente = conex.ObtenerConexion().createStatement();
            rs = puente.executeQuery("select * from programa");

            while (rs.next()) {

                idPrograma = rs.getString("idPrograma");
                Nombre_programa = rs.getString("Nombre_programa");
                Sede_realizacion = rs.getString("Sede_realizacion");
                Descripcion_programa = rs.getString("Descripcion_programa");
                Objetivo_formacion = rs.getString("Objetivo_formacion");
                Pensum_del_programa = rs.getString("Pensum_del_programa");
                Pensum_Archivo = rs.getString("Pensum_Archivo");
                Tiempo_duracion = rs.getString("Tiempo_duracion");
                
                
                BeanPrograma BProg = new BeanPrograma();
                BProg.setIdPrograma(idPrograma);
                BProg.setNombre_programa(Nombre_programa);
                BProg.setSede_realizacion(Sede_realizacion);
                BProg.setDescripcion_programa(Descripcion_programa);
                BProg.setObjetivo_formacion(Objetivo_formacion);
                BProg.setPensum_del_programa(Pensum_del_programa);
                BProg.setPensum_Archivo(Pensum_Archivo);
                BProg.setTiempo_duracion(Tiempo_duracion);
                
                        
                ListarPrograma.add(BProg);

            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return ListarPrograma;
    }

    public DaoPrograma() {

    }

}
