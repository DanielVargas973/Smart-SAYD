
package Modelo.BEAN;

public class BeanCargaMasiva {
    
    private String tabla;
    private String archivo;
    
    public BeanCargaMasiva(String tabla, String archivo) {
        this.tabla = tabla;
        this.archivo = archivo;
    }
    
    public String getTabla() {
        return tabla;
    }

    public void setTabla(String tabla) {
        this.tabla = tabla;
    }

    public String getArchivo() {
        return archivo;
    }

    public void setArchivo(String archivo) {
        this.archivo = archivo;
    }

}
