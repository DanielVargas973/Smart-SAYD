<%-- 
    Document   : GestionCursos
    Created on : 06-may-2017, 12:15:59
    Author     : Daniel Vargas.
--%>

<%@page import="java.sql.*"%>
<%@page import="Util.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    Conexion cnx = new Conexion();

    Connection con = null;
    Statement puente = null;
    ResultSet rs = null;

    con = cnx.ObtenerConexion();
    puente = con.createStatement();

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <title>Gestión de cursos</title>
    </head>
    <body>
        <form method="POST" action="Curso">
            <center>
                <div>
                    <h1>Registro de un nuevo curso</h1>
                    <br>
                    <br>
                    <left>
                        <table>
                            <tr>
                                <td>Identificación del curso: </td>
                                <td><input type="Number" name="textCurso" placeholder="Número de iddentificación"></td>
                            </tr>
                            <tr>
                                <td>Selección del programa: </td>
                                <td><select id="se1" name="textseleccion">
                                        <%try {
                                                out.println("<option value=''>Selecione un Curso</option>");
                                                rs = puente.executeQuery("select * from programa");
                                                while (rs.next()) {

                                        %>

                                        <option value="<%=rs.getString("idPrograma")%>"><%=rs.getString("Nombre_programa")%></option>

                                        <%

                                            }
                                        } catch (Exception e) {
                                        %>
                                        <option value="">No se encontro ninguna lista</option> 
                                        <%
                                            }
                                        %></select>
                                </td>
                            </tr>
                        </table>
                    </left>
                    <right>
                        <table>
                            <tr>
                                <td>Fecha de inicio: </td>
                                <td><input type="date" name="textFechaIni"></td>
                            </tr>
                            <tr>
                                <td>Fecha de finalización:</td>
                                <td><input type="date" name="textFechaFin"></td>
                            </tr>
                        </table>
                    </right>
                    <br>
                    <br>
                    <left>
                        <input type="submit" value="Crear curso">
                        <input type="hidden" name="textOpcion" value="1">
                    </left>
                    </form>
            </center>
            <% if (request.getAttribute("error") != null) { %>
            ${error}
            <% } else { %>
            ${exito}
            <% }%>
    </body>
</html>


