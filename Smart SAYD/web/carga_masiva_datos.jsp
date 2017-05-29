<%-- 
    Document   : carga_masiva_datos
    Created on : 26-may-2017, 0:50:33
    Author     : Samuel Cubillos
--%>

<%@page import="Util.Conexion"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.*" %>
<%@ page import="java.io.*" %>
 

<%

   /*Conexion cnx = new Conexion();

    Connection con = null;
    Statement puente = null;
    ResultSet rs = null;

    boolean mensaje = false;

    con = cnx.ObtenerConexion();
    puente = con.createStatement();*/
%>

<%
    /*String tabla = "";
    tabla = request.getParameter("texttabla");
    
    try {
        
        puente.executeUpdate("LOAD DATA INFILE ‘C:/Users/Usuario/Documents/carga"+archivo+"’ INTO TABLE "+tabla+" FIELDS TERMINATED BY ‘,’ IGNORED 1 LINES;");
        mensaje = true;

    } catch (Exception e) {
        e.printStackTrace();
    }
    
    if (mensaje == true) {
            
    }
    else{
        
    }*/
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cargar Masiva de Datos</title>
        <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="Bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <link href="css/registro_estudiante.css" rel="stylesheet" type="text/css"/>
        <link href="JQuery/JqueryUI/jquery-ui-1.12.1/jquery-ui.css" rel="stylesheet" type="text/css"/>
        <script src="JQuery/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="JQuery/JqueryUI/jquery-ui-1.12.1/jquery-ui.js" type="text/javascript"></script>
        <script src="Bootstrap/js/bootstrap.js" type="text/javascript"></script>
        <script>

            function regresar() {
                window.location.href = 'menu.jsp';
            }

        </script>
    </head>
    <body>
        <header>
            <br><div class="container">                
                <img src="img/SmartSAYD.png" alt="logo"/>
            </div><br>
        </header>
    <center>        
        <br><img src="img/registro.png" alt=""/><br><br>
        <form method="POST" enctype="MULTIPART/FORM-DATA" action="CargaMasiva">
            <div id="formulario" class="container"><br>
                <table>
                    <tr>
                        <td><label>Tabla: &nbsp;</label></td>
                        <td><select class="form-control" id="se" name="texttabla">
                                <option value="" selected="true" disabled="disabled">Selecione la tabla</option>
                                <option value="asignatura">Asignatura</option>
                                <option value="curso">Curso</option>
                                <option value="estudiante">Estudiante</option>
                                <option value="formador">Formador</option>
                                <option value="inasistencia">Inasistencia</option>
                                <option value="nota_final">Nota Final</option>
                                <option value="personal">Personal</option>
                                <option value="programa">Programa</option>
                            </select><br><br></td>
                    </tr>
                    <tr>
                        <td><label>Suba el archivo (.csv): &nbsp;</label></td>
                        <td><input type="file" name="archivo"><br><br></td>
                    </tr>
                </table>
            </div><br>
            <table>
                <tr>
                    <td><button class="btn-primary">Insertar Datos</button>
                        <input type="hidden" name="textOpcion" value="1"></td>
                    <td><input class="btn-danger" type="button" id="bo1" onclick="regresar()" value="Regresar"></td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>
