package Modelo.BEAN;

public class BeanFormador {

    private String idFormador;
    private String idTrabajador;
    private String Asignatura;
    private String Cursoacargo;

    public BeanFormador(String idFormador, String idTrabajador, String Asignatura, String Cursoacargo) {
        this.idFormador = idFormador;
        this.idTrabajador = idTrabajador;
        this.Asignatura = Asignatura;
        this.Cursoacargo = Cursoacargo;
    }

    public String getIdFormador() {
        return idFormador;
    }

    public void setIdFormador(String idFormador) {
        this.idFormador = idFormador;
    }

    public String getIdTrabajador() {
        return idTrabajador;
    }

    public void setIdTrabajador(String idTrabajador) {
        this.idTrabajador = idTrabajador;
    }

    public String getAsignatura() {
        return Asignatura;
    }

    public void setAsignatura(String Asignatura) {
        this.Asignatura = Asignatura;
    }

    public String getCursoacargo() {
        return Cursoacargo;
    }

    public void setCursoacargo(String Cursoacargo) {
        this.Cursoacargo = Cursoacargo;
    }
}
