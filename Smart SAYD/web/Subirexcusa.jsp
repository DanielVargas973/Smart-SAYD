<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Util.Conexion"%>
<%@page import="java.sql.*"%>
<%@page import="Util.Conexion.*"%>

<%
    Conexion cnx = new Conexion();
    Connection con = null;
    Statement puente = null;
    ResultSet rs = null;
    boolean encontrado = false;
    boolean listo = false;
    con = cnx.ObtenerConexion();
    puente = con.createStatement();
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="Bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <link href="css/registro_estudiante.css" rel="stylesheet" type="text/css"/>
        <script src="JQuery/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="js/val_registro_estudiante.js" type="text/javascript"></script>
        <script src="js/fechas.js" type="text/javascript"></script>
        <script src="Bootstrap/js/bootstrap.js" type="text/javascript"></script>
        <script src="js/gestion_excusas.js" type="text/javascript"></script>
        <script>
            $(function () {
                $('[type="date"]').prop('max', function () {
                    return new Date().toJSON().split('T')[0];
                });
            });
            function regresar() {
                window.location.href = 'menu.jsp';
            }
        </script>
        <title>Excusa</title>
    </head>
    <body>
        <header>
            <br><div class="container">                
                <img src="img/SmartSAYD.png" alt="logo"/>
            </div><br>
        </header>
    <center>
        <br> <img src="img/gestion_excusas.png" alt=""/> <br><br>
        
        <form id="fo" method="post" action="Excusa" class="form-inline" >
                <div id="formulario" class="container"><br>
                <table> 
                    <tr>
                        <td><label>Elija estudiante: &nbsp;</label></td>
                            <td><select class="form-control" id="se1" name="textseleccion1">
                                    <%try {
                                            out.println("<option value=''>Selecione un estudiante</option>");
                                            rs = puente.executeQuery("select * from estudiante");
                                            while (rs.next()) {
                                    %>

                                    <option value="<%=rs.getString("idEstudiante")%>"><%=rs.getString("Numero_identificacion")%></option>

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
                    <tr>
                        <td><label>Elija la asignatura: &nbsp;</label></td>
                            <td><select class="form-control" id="se1" name="textseleccion">
                                    <%try {
                                            out.println("<option value=''>Selecione una asigantura</option>");
                                            rs = puente.executeQuery("select * from asignatura");
                                            while (rs.next()) {
                                    %>

                                    <option value="<%=rs.getString("idAsignatura")%>"><%=rs.getString("Nombre_asignatura")%></option>

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
                    <tr>
                        <td><label>Fecha: &nbsp;</label></td>
                        <td><input class="form-control" type="date" id="fecha" name="textfecha"><br><br></td>
                    </tr>
                    <tr>
                        <td><label>observaciones: &nbsp;</label></td>
                        <td><input class="form-control" type="text" id="OBSERVACION" name="textobservaciones"><br><br></td>
                    </tr>
                    <tr>
                        <td><label>Seleccionar archivo: &nbsp;</label></td>
                        <td><input class="form-control" type="file" id="ARCHIVO" name="textarchivo"><br><br></td>
                    </tr>
                </table>
                </div><br>
                <table>
                    <tr>
                        <td><button class="btn-primary">Subir excusa</button>
                            <input type="hidden" name="textOpcion" value="1"/></td>
                        <td><input class="btn-danger" type="button" id="bo1" onclick="regresar()" value="Regresar"></td>
                    </tr>
                </table>
            </form>
        
        <%if (request.getAttribute("error") != null) {%>
        ${error}
        <%} else {%>
        ${exito}
        <%}%>
        <br></center>               
</body>
</html>

