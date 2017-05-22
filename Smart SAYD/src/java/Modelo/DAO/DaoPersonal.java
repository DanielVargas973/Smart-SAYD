package Modelo.DAO;

import Util.Conexion;
import Util.InterfaceTrabajador;
import java.sql.*;

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

    //
}
