package Modelo.DAO;


import Util.Conexion;
import Modelo.BEAN.BeanEstudiante;
import Modelo.BEAN.BeanInasistencia;
import Util.InterfaceEstudiante;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DaoSubirExcusa extends Conexion implements InterfaceEstudiante{
    
    private Connection conn = null;
    private Statement puente = null;
    private ResultSet rs = null;
    

    public boolean listo = false;
    
    public String idAsistencia  = "";
    public String idAsignatura  = "";
    public String idEstudiante  = "";
    public String Fecha  = "";
    public String Hora  = "";
    public String Observacion  = "";
    public boolean Excusa = false;
    public String Excusa_archivo  = "";
    public boolean inasistencia=false;

    public DaoSubirExcusa(BeanInasistencia BInasistencia) {

        super();

        try {
            conn = this.ObtenerConexion();
            puente = conn.createStatement();
            
            idAsistencia = BInasistencia.getIdAsistencia();
            idAsignatura = BInasistencia.getIdAsignatura();
            idEstudiante = BInasistencia.getIdEstudiante();
            Fecha = BInasistencia.getFecha();
            Hora = BInasistencia.getHora();
            Observacion = BInasistencia.getObservacion();
            Excusa = BInasistencia.isExcusa();
            Excusa_archivo = BInasistencia.getExcusa_archivo();
            inasistencia=BInasistencia.isInasistencia();
            
           
           

        } catch (Exception e) {
            Logger.getLogger(DaoRegistroEstudiante.class.getName()).log(Level.SEVERE, null, e);
        }

    }

    @Override
    public boolean AgregarRegistro() {
        try {
            puente.executeUpdate("INSERT INTO inasistencia (`idAsistencia`, `idAsignatura`,'idEstudiante', `idEstudiante`, `Fecha`, `Hora`, `Observacion`, `Excusa`, `Excusa_archivo` , `inasistencia` ) VALUES (,NULL,'"+idAsignatura+"','"+idEstudiante+"', '"+Fecha+"',NULL,'"+Observacion+"', NULL, '"+Excusa_archivo+"',NULL,)");
            listo = true;
        } catch (Exception e) {
            Logger.getLogger(DaoSubirExcusa.class.getName()).log(Level.SEVERE, null, e);
        }
        return listo;
    }

    @Override
    public boolean ActualizarRegistros() {
        try {
            puente.executeUpdate("')");
            listo = true;
        } catch (Exception e) {
            Logger.getLogger(DaoSubirExcusa.class.getName()).log(Level.SEVERE, null, e);
        }
        return listo;
    }
    
   /* public static BeanEstudiante FiltrarEstu (String idEstudiante) // opcion 3  
    {
        BeanEstudiante BEstu = null;
        try {

            Conexion conex = new Conexion();
            Connection conn = conex.ObtenerConexion();
            Statement puente = conn.createStatement();
            ResultSet rs = puente.executeQuery("SELECT * FROM `inasistencia` WHERE `idEstudiante`='" + idEstudiante + "';");
            
            while(rs.next()){
                BEstu = new BeanEstudiante(idEstudiante,rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13),rs.getString(14));           
            }
            rs.close();
            puente.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return BEstu;
    }*/
    
//    public ArrayList<BeanEstudiante> MostrarDatos(){
//        
//        Conexion conex = new Conexion();
//        ArrayList <BeanEstudiante> listaEstu = new ArrayList<BeanEstudiante>();
//        
//        try {
//        
//            puente = conex.ObtenerConexion().createStatement();
//            rs = puente.executeQuery("select * from estudiante");
//            
//            while(rs.next()){
//            
//                idEstudiante = rs.getString("idEstudiante");
//                id_Curso = rs.getString("Id_Curso");
//                Nombres = rs.getString("Nombres");
//                Apellidos = rs.getString("Apellidos");
//                Genero = rs.getString("Genero");
//                Contrasena = rs.getString("Contrasena");
//                Fecha_nacimiento = rs.getString("Fecha_nacimiento");
//                Tipo_identificacion = rs.getString("Tipo_identificacion");
//                Numero_identificacion = rs.getString("Numero_identificacion");
//                Fecha_inscripcion = rs.getString("Fecha_inscripcion");
//                Fecha_expedicion = rs.getString("Fecha_expedicion");
//                Estrato = rs.getString("Estrato");
//                Numero_telefono = rs.getString("Numero_telefono");
//                Correo_electronico = rs.getString("Correo_electronico");
//                             
//                
//                
//                BeanEstudiante BEstu = new BeanEstudiante();
//                
//                BEstu.setIdEstudiante(idEstudiante);
//                BEstu.setId_Curso(id_Curso);
//                BEstu.setNombres(Nombres);
//                BEstu.setApellidos(Apellidos);
//                BEstu.setGenero(Genero);
//                BEstu.setContrasena(Contrasena);
//                BEstu.setFecha_nacimiento(Fecha_nacimiento);
//                BEstu.setTipo_identificacion(Tipo_identificacion);
//                BEstu.setNumero_identificacion(Numero_identificacion);
//                BEstu.setFecha_inscripcion(Fecha_inscripcion);
//                BEstu.setFecha_expedicion(Fecha_expedicion);
//                BEstu.setEstrato(Estrato);
//                BEstu.setNumero_telefono(Numero_telefono);
//                BEstu.setCorreo_electronico(Correo_electronico);
//                
//                listaEstu.add(BEstu);
//            }
//            
//        }catch(Exception e){
//            e.printStackTrace();
//        }
//        return listaEstu;
//    }
    
}
