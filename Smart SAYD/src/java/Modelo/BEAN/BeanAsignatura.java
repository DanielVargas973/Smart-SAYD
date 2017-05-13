package Modelo.BEAN;

public class BeanAsignatura {

    private String idAsignatura;
    private String idPrograma;
    private String Nombre_asignatura;
    private String Codigo_asignatura;
    private String Descripcion;
    private String Numero_cupos;

    public BeanAsignatura(String idAsignatura, String idPrograma, String Nombre_asignatura, String Codigo_asignatura, String Descripcion, String Numero_cupos) {
        this.idAsignatura = idAsignatura;
        this.idPrograma = idPrograma;
        this.Nombre_asignatura = Nombre_asignatura;
        this.Codigo_asignatura = Codigo_asignatura;
        this.Descripcion = Descripcion;
        this.Numero_cupos = Numero_cupos;
    }

    public String getIdAsignatura() {
        return idAsignatura;
    }

    public void setIdAsignatura(String idAsignatura) {
        this.idAsignatura = idAsignatura;
    }

    public String getIdPrograma() {
        return idPrograma;
    }

    public void setIdPrograma(String idPrograma) {
        this.idPrograma = idPrograma;
    }

    public String getNombre_asignatura() {
        return Nombre_asignatura;
    }

    public void setNombre_asignatura(String Nombre_asignatura) {
        this.Nombre_asignatura = Nombre_asignatura;
    }

    public String getCodigo_asignatura() {
        return Codigo_asignatura;
    }

    public void setCodigo_asignatura(String Codigo_asignatura) {
        this.Codigo_asignatura = Codigo_asignatura;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public String getNumero_cupos() {
        return Numero_cupos;
    }

    public void setNumero_cupos(String Numero_cupos) {
        this.Numero_cupos = Numero_cupos;
    }

}
