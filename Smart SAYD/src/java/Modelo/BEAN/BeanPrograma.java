package Modelo.BEAN;

public class BeanPrograma {

    private String idPrograma;
    private String Nombre_programa;
    private String Sede_realizacion;
    private String Descripcion_programa;
    private String Objetivo_formacion;
    private boolean Pensum_del_programa;
    private long Pensum_Archivo;
    private String Tiempo_duracion;

    public BeanPrograma(String idPrograma, String Nombre_programa, String Sede_realizacion, String Descripcion_programa, String Objetivo_formacion, boolean Pensum_del_programa, long Pensum_Archivo, String Tiempo_duracion) {
        this.idPrograma = idPrograma;
        this.Nombre_programa = Nombre_programa;
        this.Sede_realizacion = Sede_realizacion;
        this.Descripcion_programa = Descripcion_programa;
        this.Objetivo_formacion = Objetivo_formacion;
        this.Pensum_del_programa = Pensum_del_programa;
        this.Pensum_Archivo = Pensum_Archivo;
        this.Tiempo_duracion = Tiempo_duracion;
    }

    public String getIdPrograma() {
        return idPrograma;
    }

    public void setIdPrograma(String idPrograma) {
        this.idPrograma = idPrograma;
    }

    public String getNombre_programa() {
        return Nombre_programa;
    }

    public void setNombre_programa(String Nombre_programa) {
        this.Nombre_programa = Nombre_programa;
    }

    public String getSede_realizacion() {
        return Sede_realizacion;
    }

    public void setSede_realizacion(String Sede_realizacion) {
        this.Sede_realizacion = Sede_realizacion;
    }

    public String getDescripcion_programa() {
        return Descripcion_programa;
    }

    public void setDescripcion_programa(String Descripcion_programa) {
        this.Descripcion_programa = Descripcion_programa;
    }

    public String getObjetivo_formacion() {
        return Objetivo_formacion;
    }

    public void setObjetivo_formacion(String Objetivo_formacion) {
        this.Objetivo_formacion = Objetivo_formacion;
    }

    public boolean isPensum_del_programa() {
        return Pensum_del_programa;
    }

    public void setPensum_del_programa(boolean Pensum_del_programa) {
        this.Pensum_del_programa = Pensum_del_programa;
    }

    public long getPensum_Archivo() {
        return Pensum_Archivo;
    }

    public void setPensum_Archivo(long Pensum_Archivo) {
        this.Pensum_Archivo = Pensum_Archivo;
    }

    public String getTiempo_duracion() {
        return Tiempo_duracion;
    }

    public void setTiempo_duracion(String Tiempo_duracion) {
        this.Tiempo_duracion = Tiempo_duracion;
    }
}
