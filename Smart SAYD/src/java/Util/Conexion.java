package Util;

import java.sql.*;

public class Conexion {

    public String driver, url, user, password, bd;
    public Connection conexion;
    public Statement st = null;
    public ResultSet rs = null;

    public Conexion() {

        driver = "com.mysql.jdbc.Driver";
        user = "root";
        password = "";
        bd = "sayd_db";
        url = "jdbc:mysql://localhost:3306/sayd_db";

        try {
            Class.forName(driver).newInstance();
            conexion = DriverManager.getConnection(url, user, password);
            System.out.println("Conexion ok!!!");
        } catch (Exception e) {
            System.out.println("Error al conectarse" + e);
        }

    }

    public Connection ObtenerConexion() {
        return conexion;
    }

    public Connection CerrarConexion() throws SQLException {
        conexion.close();
        conexion = null;
        return conexion;
    }

    public static void main(String[] args) {
        new Conexion();
    }

}
