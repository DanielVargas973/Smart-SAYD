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
    public boolean encontrado = false;
    
    
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
            Logger.getLogger(Daoasignatura.class.getName()).log(Level.SEVERE, null, e);
        }
        return listo;
    }

    @Override
    public boolean ActualizarAsignatura() {
           try {
            puente.executeUpdate("update asignatura set idPrograma='"+idPrograma+"', Nombre_asignatura = '"+Nombre_asignatura+"', Codigo_asignatura = '"+Codigo_asignatura+"', Descripcion = '"+Descripcion+"', Numero_cupos = '"+Numero_cupos+"' WHERE  idAsignatura ="+idAsignatura+";");
            listo = true;
        } catch (Exception e) {
            Logger.getLogger(Daoasignatura.class.getName()).log(Level.SEVERE, null, e);
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
      public BeanAsignatura  Consultar(int Parametro){
          BeanAsignatura BAsig = new BeanAsignatura();
        try {
             rs =puente.executeQuery("select * from asignatura where idAsignatura = "+Parametro);
             while(rs.next()){
               
                 BAsig.setIdAsignatura(rs.getString("idAsignatura"));
                 
                BAsig.setIdPrograma(rs.getString("idPrograma"));
                BAsig.setNombre_asignatura(rs.getString("Nombre_asignatura"));
                BAsig.setCodigo_asignatura(rs.getString("Codigo_asignatura"));
                BAsig.setDescripcion(rs.getString("Descripcion"));
                BAsig.setNumero_cupos(rs.getString("Numero_cupos"));
           
             }
        } catch (Exception e) {
            System.out.println(e.getMessage());
             Logger.getLogger(Daoasignatura.class.getName()).log(Level.SEVERE, null, e);
        }    
        
        
        return BAsig;
        
    }
    
    
    
    
    public ArrayList<BeanAsignatura> Listar() {

        Conexion conex = new Conexion();
        ArrayList<BeanAsignatura> listadeasignaturas = new ArrayList<BeanAsignatura>();

        try {
            puente = conex.ObtenerConexion().createStatement();
            rs = puente.executeQuery("select * from asignatura");

            while(rs.next()){
                
                idAsignatura = rs.getString("idAsignatura");
                idPrograma = rs.getString("idPrograma");
                Nombre_asignatura = rs.getString("Nombre_asignatura");
                Codigo_asignatura = rs.getString("Codigo_asignatura");
                Descripcion = rs.getString("Descripcion");
                Numero_cupos = rs.getString("Numero_cupos");
                
                
                BeanAsignatura BAsig = new BeanAsignatura();
                BAsig.setIdAsignatura(idAsignatura);
                BAsig.setIdPrograma(idPrograma);
                BAsig.setNombre_asignatura(Nombre_asignatura);
                BAsig.setCodigo_asignatura(Codigo_asignatura);
                BAsig.setDescripcion(Descripcion);
                BAsig.setNumero_cupos(Numero_cupos);
                
                
                listadeasignaturas.add(BAsig);
                
            }        
        
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return listadeasignaturas;
    }
       public Daoasignatura() {
        
    }
}