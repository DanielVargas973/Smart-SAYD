package Modelo.BEAN;

public class BeanInasistencia {
    private String idAsistencia;
    private String idAsignatura;
    private String idEstudiante;
    private String Fecha;
    private String Hora;
    private String Observacion;
    private String Excusa;
    private String Excusa_archivo;
    private String inasistencia;

    public BeanInasistencia(String idAsistencia, String idAsignatura, String idEstudiante, String Fecha, String Hora, String Observacion, String Excusa, String Excusa_archivo, String inasistencia) {
        this.idAsistencia = idAsistencia;
        this.idAsignatura = idAsignatura;
        this.idEstudiante = idEstudiante;
        this.Fecha = Fecha;
        this.Hora = Hora;
        this.Observacion = Observacion;
        this.Excusa = Excusa;
        this.Excusa_archivo = Excusa_archivo;
        this.inasistencia = inasistencia;
    }


    public String getIdAsistencia() {
        return idAsistencia;
    }

    public void setIdAsistencia(String idAsistencia) {
        this.idAsistencia = idAsistencia;
    }

    public String getIdAsignatura() {
        return idAsignatura;
    }

    public void setIdAsignatura(String idAsignatura) {
        this.idAsignatura = idAsignatura;
    }

    public String getIdEstudiante() {
        return idEstudiante;
    }

    public void setIdEstudiante(String idEstudiante) {
        this.idEstudiante = idEstudiante;
    }

    public String getFecha() {
        return Fecha;
    }

    public void setFecha(String Fecha) {
        this.Fecha = Fecha;
    }

    public String getHora() {
        return Hora;
    }

    public void setHora(String Hora) {
        this.Hora = Hora;
    }

    public String getObservacion() {
        return Observacion;
    }

    public void setObservacion(String Observacion) {
        this.Observacion = Observacion;
    }

    public String getExcusa() {
        return Excusa;
    }

    public void setExcusa(String Excusa) {
        this.Excusa = Excusa;
    }

    public String getExcusa_archivo() {
        return Excusa_archivo;
    }

    public void setExcusa_archivo(String Excusa_archivo) {
        this.Excusa_archivo = Excusa_archivo;
    }

    public String getInasistencia() {
        return inasistencia;
    }

    public void setInasistencia(String inasistencia) {
        this.inasistencia = inasistencia;
    }
    
     
   

}
    