<%-- 
    Document   : GestionCursos
    Created on : 06-may-2017, 12:15:59
    Autor: Daniel Vargas 
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
        <link href="JQuery/JqueryUI/jquery-ui-1.12.1/jquery-ui.css" rel="stylesheet" type="text/css"/>
        <script src="JQuery/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="JQuery/JqueryUI/jquery-ui-1.12.1/jquery-ui.js" type="text/javascript"></script>
        <script src="js/val_registro_cursos.js" type="text/javascript"></script>
        <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
        <script>
            $(function () {
                $("#FI").datepicker({dateFormat:'yy/mm/dd'});
                $("#FF").datepicker({dateFormat:'yy/mm/dd'});
            });
        </script>
        <title>Gestión de cursos</title>
    </head>
    <body>
        <header>
            <div id="mostrar-menu"><label class="menu">Menú</label></div>
            <nav id="menu">
                <li><a href="registro_Personal.jsp"><img id="me" width="42px" height="42px" src="img/menu1.png" alt=""/>Registrar Personal</a></li>                
                <li><a href="registrar_programa.jsp"><img id="me" width="42px" height="42px" src="img/menu2.png" alt=""/>Registrar Programa</a></li>  
                <li><a href="registro_Cursos.jsp"><img id="me" width="42px" height="42px" src="img/menu3.png" alt=""/>Registrar Cursos</a></li>  
                <li><a href="registro_estudiante.jsp"><img id="me" width="42px" height="42px" src="img/menu4.png" alt=""/>Registrar Estudiante</a></li>  
                <li><a href="actualizar_estudiante.jsp"><img id="me" width="42px" height="42px" src="img/menu5.png" alt=""/>Actualizar Estudiante</a></li>  
                <li><a href="Subirexcusa.jsp"><img id="me" width="42px" height="42px" src="img/menu6.png" alt=""/>Gestión Excusas</a></li>  
                <li><a href="carga_masiva_datos.jsp"><img id="me" width="42px" height="42px" src="img/menu7.png" alt=""/>Carga Masiva</a></li>  
                 <li><a href="Gestion_asignatura.jsp"><img id="me" width="42px" height="42px" src="img/Menu8.png" alt=""/>Gestionar Asignaturas</a></li>
            </nav>
            <br><div class="container">                
                <img id="logo" margin-left="200px" src="img/SmartSAYD.png" alt="logo"/>
            </div><br>
        </header>
    <center>
        <br><img src="img/recursos.png" alt=""/><br><br>
        <form class="form-inline" method="POST" action="Curso">
            <div id="formulario" class="container"><br>
                <table>
                    <tr>
                        <td><label>Identificación del curso: &nbsp;</label></td>
                        <td><input class="form-control" type="Number" id="Curso" name="textCurso" placeholder="Número de identificación"><p id="curso"></p><br></td>
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
                <table>
                    <tr>
                        <td><label>Fecha de inicio: &nbsp;</label></td>
                        <td><input id="FI"class="form-control" type="text" name="textFechaIni"><br><br></td>
                    </tr>
                    <tr>
                        <td><label>Fecha de finalización:&nbsp;&nbsp;</label></td>
                        <td><input id="FF"class="form-control" type="text" name="textFechaFin"><br><br></td>
                    </tr>
                </table>
            </div>
            <br>
                    <button>Crear curso</button>
                    <input type="hidden" name="textOpcion" value="1">
        </form>
    </center>
    <% if (request.getAttribute("error") != null) { %>
    ${error}
    <% } else { %>
    ${exito}
    <% }%>
    <script src="Bootstrap/js/bootstrap.js" type="text/javascript"></script>
    <script src="js/clickmenu.js" type="text/javascript"></script>    
</body>
</html>


