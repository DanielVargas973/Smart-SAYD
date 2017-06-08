
package Modelo.DAO;

/*
 * @author Samuel Cubillos
 */
import Modelo.BEAN.BeanCargaMasiva;
import Util.Conexion;
import Util.InterfaceCargaMasiva;
import Util.InterfaceCurso;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DaoCargaMasiva extends Conexion implements InterfaceCargaMasiva {

    public Connection conn = null;
    private Statement puente = null;
    private ResultSet rs = null;

    public boolean encontrado = false;
    public boolean listo = false;

    public String tabla = "";
    public String archivo = "";
    
    public DaoCargaMasiva(BeanCargaMasiva BCar) {
    super();
        try {
            conn = this.ObtenerConexion();
            puente = conn.createStatement();

            tabla = BCar.getTabla();
            archivo = BCar.getArchivo();

        } catch (Exception e) {
            Logger.getLogger(DaoGestionCursos.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    @Override
    public boolean CargaMasiva() {
        try {
            puente.execute("LOAD DATA LOCAL INFILE 'C:/Users/Usuario/Desktop/carga/programa.csv' INTO TABLE programa FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n' IGNORE 1 LINES");
            listo = true;
        } catch (Exception e) {
            Logger.getLogger(DaoGestionCursos.class.getName()).log(Level.SEVERE, null, e);
        }
        return listo;
    }
}