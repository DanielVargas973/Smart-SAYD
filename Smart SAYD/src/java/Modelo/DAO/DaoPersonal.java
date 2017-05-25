package Modelo.DAO;

import Modelo.BEAN.BeanPersonal;
import Util.Conexion;
import Util.InterfaceTrabajador;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DaoPersonal extends Conexion implements InterfaceTrabajador {

    //Creacion conexion con BD
    public Connection conn = null;
    private Statement puente = null;
    private ResultSet rs = null;

    //Banderas de notificacion de estado
    public boolean encontrado = false;
    public boolean listo = false;

    //Declaracion de variables
    public String idTrabajador = "";
    public String Nombre = "";
    public String PrimerApellido = "";
    public String SegundoApellido = "";
    public String Tipo_identificacion = "";
    public String Numero_identificacion = "";
    public String Fecha_Expedicion = "";
    public String Ciudad_Expedicion = "";
    public String Pais_Expedicion = "";
    public String Genero = "";
    public String Fecha_Nacimiento = "";
    public String Ciudad_Nacimiento = "";
    public String Pais_Nacimiento = "";
    public String Estrato = "";
    public String Numero_Telefono = "";
    public String Correo_Electronico = "";
    public String Direccion_Residencia = "";
    public String EPS = "";
    public String RH_y_Gruposanguineo = "";
    public String Rol_Asignado = "";
    public String Contrasena = "";

    //Llamado de metodos declarados en el BEAN
    public DaoPersonal(BeanPersonal BPer){
        super();
        try{
            conn = this.ObtenerConexion();
            puente = conn.createStatement();
            
            idTrabajador = BPer.getIdTrabajador();
            Nombre = BPer.getNombre();
            PrimerApellido = BPer.getPrimerApellido();
            SegundoApellido =BPer.getSegundoApellido();
            Tipo_identificacion = BPer.getTipo_identificacion();
            Numero_identificacion =BPer.getNumero_identificacion();
            Fecha_Expedicion = BPer.getFecha_Expedicion();
            Ciudad_Expedicion = BPer.getCiudad_Expedicion();
            Pais_Expedicion = BPer.getPais_Expedicion();
            Genero = BPer.getGenero();
            Fecha_Nacimiento = BPer.getFecha_Nacimiento();
            Ciudad_Nacimiento = BPer.getCiudad_Nacimiento();
            Pais_Nacimiento = BPer.getPais_Nacimiento();
            Estrato = BPer.getEstrato();
            Numero_Telefono = BPer.getNumero_Telefono();
            Correo_Electronico = BPer.getCorreo_Electronico();
            Direccion_Residencia = BPer.getDireccion_Residencia();
            EPS = BPer.getEPS();
            RH_y_Gruposanguineo = BPer.getRH_y_Gruposanguineo();
            Rol_Asignado = BPer.getRol_Asignado();
            Contrasena = BPer.getContrasena();
        }catch(Exception e){
            Logger.getLogger(DaoPersonal.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    //Inscripcion de un nuevo trabajador(opcion 1)
    @Override
    public boolean AgregarTrabajador() {
        try {
            puente.executeUpdate("INSERT INTO `personal` (`idTrabajador`, `Nombre`, `PrimerApellido`, `SegundoApellido`, `Tipo_identificacion`, `Numero_identificacion`, `Fecha_Expedicion`, `Ciudad_Expedicion`, `Pais_Expedicion`, `Genero`, `Fecha_Nacimiento`, `Ciudad_Nacimiento`, `Pais_Nacimiento`, `Estrato`, `Numero_Telefono`, `Correo_Electronico`, `Direccion_Residencia`, `EPS`, `RH_y_Gruposanguineo`, `Rol_Asignado`, `Contrasena`) VALUES ("+idTrabajador+", '"+Nombre+"', '"+PrimerApellido+"', '"+SegundoApellido+"',"+Tipo_identificacion+",'"+Numero_identificacion+"', '"+Fecha_Expedicion+"', '"+Ciudad_Expedicion+"', '"+Pais_Expedicion+"',"+Genero+", '"+Fecha_Nacimiento+"', '"+Ciudad_Nacimiento+"', '"+Pais_Nacimiento+"',"+Estrato+","+Numero_Telefono+", '"+Correo_Electronico+"', '"+Direccion_Residencia+"', '"+EPS+"', '"+RH_y_Gruposanguineo+"',"+Rol_Asignado+", '"+Contrasena+"');");
            listo = true;
        } catch (Exception e) {
            Logger.getLogger(DaoPersonal.class.getName()).log(Level.SEVERE, null, e);
        }
        return listo;
    }

    //Actualizacion de datos de un trabajador (opcion 2)
    @Override
    public boolean ActualizarTrabajador() {
        try {
            puente.executeUpdate("");
            listo = true;
        } catch (Exception e) {
            Logger.getLogger(DaoPersonal.class.getName()).log(Level.SEVERE, null, e);
        }
        return listo;
    }

    //Eliminacion de un trabajador (opcion 3)
    @Override
    public boolean EliminarTrabajador() {
        try {
            puente.executeUpdate("");
            listo = true;
        } catch (Exception e) {
            Logger.getLogger(DaoPersonal.class.getName()).log(Level.SEVERE, null, e);
        }
        return listo;
    }
}