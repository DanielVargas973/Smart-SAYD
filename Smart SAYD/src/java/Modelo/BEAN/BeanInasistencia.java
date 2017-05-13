package Modelo.BEAN;

public class BeanInasistencia {

    private String idAsistencia;
    private String idAsignatura;
    private String idEstudiante;
    private String Fecha;
    private String Hora;
    private String Observacion;
    private boolean Excusa;
    private long Excusa_archivo;

    public BeanInasistencia(String idAsistencia, String idAsignatura, String idEstudiante, String Fecha, String Hora, String Observacion, boolean Excusa, long Excusa_archivo) {
        this.idAsistencia = idAsistencia;
        this.idAsignatura = idAsignatura;
        this.idEstudiante = idEstudiante;
        this.Fecha = Fecha;
        this.Hora = Hora;
        this.Observacion = Observacion;
        this.Excusa = Excusa;
        this.Excusa_archivo = Excusa_archivo;
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

    public boolean isExcusa() {
        return Excusa;
    }

    public void setExcusa(boolean Excusa) {
        this.Excusa = Excusa;
    }

    public long getExcusa_archivo() {
        return Excusa_archivo;
    }

    public void setExcusa_archivo(long Excusa_archivo) {
        this.Excusa_archivo = Excusa_archivo;
    }
}
