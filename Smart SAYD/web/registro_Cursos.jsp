<%-- 
    Document   : GestionCursos
    Created on : 06-may-2017, 12:15:59
    Author     : Daniel Vargas
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
        <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="Bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <link href="css/registro_cursos.css" rel="stylesheet" type="text/css"/>
        <script src="JQuery/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="Bootstrap/js/bootstrap.js" type="text/javascript"></script>
        <script>

            function regresar() {
                window.location.href = 'menu.jsp';
            }

        </script>
        <title>Gestión de cursos</title>
    </head>
    <body>
        <header>
            <br><div class="container">                
                <img src="img/SmartSAYD.png" alt="logo"/>
            </div><br>
        </header>
    <center>
        <br><img src="img/recursos.png" alt=""/><br><br>
        <div id="formulario" class="container"><br>
            <form class="form-inline" method="POST" action="Curso">

                <left>
                    <table>
                        <tr>
                            <td><label>Identificación del curso: &nbsp;</label></td>
                            <td><input class="form-control" type="Number" name="textCurso" placeholder="Número de identificación"><br><br></td>
                        </tr>
                        <tr>
                            <td><label>Selección del programa: &nbsp;</label></td>
                            <td><select class="form-control" id="se1" name="textseleccion">
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
                                    %></select><br><br>
                            </td>
                        </tr>
                    </table>
                </left>
                <right>
                    <table>
                        <tr>
                            <td><label>Fecha de inicio: &nbsp;</label></td>
                            <td><input class="form-control" type="date" name="textFechaIni"><br><br></td>
                        </tr>
                        <tr>
                            <td><label>Fecha de finalización:&nbsp;&nbsp;</label></td>
                            <td><input class="form-control" type="date" name="textFechaFin"><br><br></td>
                        </tr>
                    </table>
                </right>
                <br>
                <br>
                <table>
                    <tr>
                        <td><button class="btn-primary">Crear curso</button>
                            <input type="hidden" name="textOpcion" value="1"></td>
                        <td><input class="btn-danger" type="button" id="bo1" onclick="regresar()" value="Regresar"></td>
                    </tr>
                </table>
            </form>
        </div>
    </center>
    <% if (request.getAttribute("error") != null) { %>
    ${error}
    <% } else { %>
    ${exito}
    <% }%>
</body>
</html>


