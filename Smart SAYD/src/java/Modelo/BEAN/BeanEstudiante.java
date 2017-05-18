package Modelo.BEAN;

public class BeanEstudiante {

    private String idEstudiante;
    private String id_Curso;
    private String Nombres;
    private String Apellidos;
    private String Contrasena;
    private String Genero;
    private String Fecha_nacimiento;
    private String Tipo_identificacion;
    private String Numero_identificacion;
    private String Fecha_inscripcion;
    private String Fecha_expedicion;
    private String Estrato;
    private String Numero_telefono;
    private String Correo_electronico;

    public BeanEstudiante(String idEstudiante, String id_Curso, String Nombres, String Apellidos, String Contrasena, String Genero, String Fecha_nacimiento, String Tipo_identificacion, String Numero_identificacion, String Fecha_inscripcion, String Fecha_expedicion, String Estrato, String Numero_telefono, String Correo_electronico) {
        this.idEstudiante = idEstudiante;
        this.id_Curso = id_Curso;
        this.Nombres = Nombres;
        this.Apellidos = Apellidos;
        this.Contrasena = Contrasena;
        this.Genero = Genero;
        this.Fecha_nacimiento = Fecha_nacimiento;
        this.Tipo_identificacion = Tipo_identificacion;
        this.Numero_identificacion = Numero_identificacion;
        this.Fecha_inscripcion = Fecha_inscripcion;
        this.Fecha_expedicion = Fecha_expedicion;
        this.Estrato = Estrato;
        this.Numero_telefono = Numero_telefono;
        this.Correo_electronico = Correo_electronico;
    }

    public String getIdEstudiante() {
        return idEstudiante;
    }

    public void setIdEstudiante(String idEstudiante) {
        this.idEstudiante = idEstudiante;
    }

    public String getId_Curso() {
        return id_Curso;
    }

    public void setId_Curso(String id_Curso) {
        this.id_Curso = id_Curso;
    }

    public String getNombres() {
        return Nombres;
    }

    public void setNombres(String Nombres) {
        this.Nombres = Nombres;
    }

    public String getApellidos() {
        return Apellidos;
    }

    public void setApellidos(String Apellidos) {
        this.Apellidos = Apellidos;
    }
    
    public String getContrasena() {
        return Contrasena;
    }

    public void setContrasena(String Contrasena) {
        this.Contrasena = Contrasena;
    }
   

    public String getGenero() {
        return Genero;
    }

    public void setGenero(String Genero) {
        this.Genero = Genero;
    }

    public String getFecha_nacimiento() {
        return Fecha_nacimiento;
    }

    public void setFecha_nacimiento(String Fecha_nacimiento) {
        this.Fecha_nacimiento = Fecha_nacimiento;
    }

    public String getTipo_identificacion() {
        return Tipo_identificacion;
    }

    public void setTipo_identificacion(String Tipo_identificacion) {
        this.Tipo_identificacion = Tipo_identificacion;
    }

    public String getNumero_identificacion() {
        return Numero_identificacion;
    }

    public void setNumero_identificacion(String Numero_identificacion) {
        this.Numero_identificacion = Numero_identificacion;
    }

    public String getFecha_inscripcion() {
        return Fecha_inscripcion;
    }

    public void setFecha_inscripcion(String Fecha_inscripcion) {
        this.Fecha_inscripcion = Fecha_inscripcion;
    }

    public String getFecha_expedicion() {
        return Fecha_expedicion;
    }

    public void setFecha_expedicion(String Fecha_expedicion) {
        this.Fecha_expedicion = Fecha_expedicion;
    }

    public String getEstrato() {
        return Estrato;
    }

    public void setEstrato(String Estrato) {
        this.Estrato = Estrato;
    }

    public String getNumero_telefono() {
        return Numero_telefono;
    }

    public void setNumero_telefono(String Numero_telefono) {
        this.Numero_telefono = Numero_telefono;
    }

    public String getCorreo_electronico() {
        return Correo_electronico;
    }

    public void setCorreo_electronico(String Correo_electronico) {
        this.Correo_electronico = Correo_electronico;
    }
}
