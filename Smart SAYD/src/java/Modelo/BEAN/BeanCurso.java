package Modelo.BEAN;

public class BeanCurso {

    private String id_Curso;
    private String idPrograma;
    private String Fecha_inicio;
    private String Fecha_fin;

    public BeanCurso(String id_Curso, String idPrograma, String Fecha_inicio, String Fecha_fin) {
        this.id_Curso = id_Curso;
        this.idPrograma = idPrograma;
        this.Fecha_inicio = Fecha_inicio;
        this.Fecha_fin = Fecha_fin;
    }

    public String getId_Curso() {
        return id_Curso;
    }

    public void setId_Curso(String id_Curso) {
        this.id_Curso = id_Curso;
    }

    public String getIdPrograma() {
        return idPrograma;
    }

    public void setIdPrograma(String idPrograma) {
        this.idPrograma = idPrograma;
    }

    public String getFecha_inicio() {
        return Fecha_inicio;
    }

    public void setFecha_inicio(String Fecha_inicio) {
        this.Fecha_inicio = Fecha_inicio;
    }

    public String getFecha_fin() {
        return Fecha_fin;
    }

    public void setFecha_fin(String Fecha_fin) {
        this.Fecha_fin = Fecha_fin;
    }

}
