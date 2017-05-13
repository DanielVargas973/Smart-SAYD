package Modelo.DAO;

import Modelo.BEAN.BeanCurso;
import Util.Conexion;
import Util.InterfaceEstudiante;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DaoGestionCursos extends Conexion implements InterfaceEstudiante {

    public Connection conn = null;
    private Statement puente = null;
    private ResultSet rs = null;

    public boolean encontrado = false;
    public boolean listo = false;

    public String id_Curso = "";
    public String idPrograma = "";
    public String Fecha_inicio = "";
    public String Fecha_fin = "";

    public DaoGestionCursos(BeanCurso BCur) {
        super();
        try {
            conn = this.ObtenerConexion();
            puente = conn.createStatement();

            id_Curso = BCur.getId_Curso();
            idPrograma = BCur.getIdPrograma();
            Fecha_inicio = BCur.getFecha_inicio();
            Fecha_fin = BCur.getFecha_fin();

        } catch (Exception e) {
            Logger.getLogger(DaoGestionCursos.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    @Override
    public boolean AgregarRegistro() {//Agregar curso
        try {
            puente.executeUpdate("INSERT INTO curso (`Fecha_fin`,`Fecha_inicio`,`Id_Curso`,`id_programa`) VALUES ('" + Fecha_fin + "','" + Fecha_inicio + "'," + id_Curso + "," + idPrograma + ")");
            listo = true;
        } catch (Exception e) {
            Logger.getLogger(DaoGestionCursos.class.getName()).log(Level.SEVERE, null, e);
        }
        return listo;
    }

    @Override
    public boolean ActualizarRegistros() {//Actualizar curso
        try {
            puente.executeUpdate("update curso set Fecha_inicio = '" + Fecha_inicio + "', Fecha_fin = '" + Fecha_fin + "', id_programa = '" + idPrograma + "' where Id_Curso='" + id_Curso + "';");
            listo = true;
        } catch (Exception e) {
            Logger.getLogger(DaoGestionCursos.class.getName()).log(Level.SEVERE, null, e);
        }
        return listo;
    }

    /*@Override
    public boolean EliminarRegistros() {//Eliminar curso
        try {
            puente.executeUpdate("delete from curso where Id_Curso ='" + id_Curso + "'");
            listo = true;
        } catch (Exception e) {
            Logger.getLogger(DaoGestionCursos.class.getName()).log(Level.SEVERE, null, e);
        }
        return listo;*/
}
