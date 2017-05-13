package Modelo.BEAN;

public class BeanNota_final {

    private String idnota;
    private String idEstudiante;
    private String idAsignatura;
    private String idFormador;
    private String Fecha_hora;
    private float Nota_final;
    private String Observaciones;

    public BeanNota_final(String idnota, String idEstudiante, String idAsignatura, String idFormador, String Fecha_hora, float Nota_final, String Observaciones) {
        this.idnota = idnota;
        this.idEstudiante = idEstudiante;
        this.idAsignatura = idAsignatura;
        this.idFormador = idFormador;
        this.Fecha_hora = Fecha_hora;
        this.Nota_final = Nota_final;
        this.Observaciones = Observaciones;
    }

    public String getIdnota() {
        return idnota;
    }

    public void setIdnota(String idnota) {
        this.idnota = idnota;
    }

    public String getIdEstudiante() {
        return idEstudiante;
    }

    public void setIdEstudiante(String idEstudiante) {
        this.idEstudiante = idEstudiante;
    }

    public String getIdAsignatura() {
        return idAsignatura;
    }

    public void setIdAsignatura(String idAsignatura) {
        this.idAsignatura = idAsignatura;
    }

    public String getIdFormador() {
        return idFormador;
    }

    public void setIdFormador(String idFormador) {
        this.idFormador = idFormador;
    }

    public String getFecha_hora() {
        return Fecha_hora;
    }

    public void setFecha_hora(String Fecha_hora) {
        this.Fecha_hora = Fecha_hora;
    }

    public float getNota_final() {
        return Nota_final;
    }

    public void setNota_final(float Nota_final) {
        this.Nota_final = Nota_final;
    }

    public String getObservaciones() {
        return Observaciones;
    }

    public void setObservaciones(String Observaciones) {
        this.Observaciones = Observaciones;
    }
}
