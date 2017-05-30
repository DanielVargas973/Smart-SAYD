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
        <link href="css/Subirexcusa.css" rel="stylesheet" type="text/css"/>
        <link href="JQuery/JqueryUI/jquery-ui-1.12.1/jquery-ui.css" rel="stylesheet" type="text/css"/>
        <script src="JQuery/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="JQuery/JqueryUI/jquery-ui-1.12.1/jquery-ui.js" type="text/javascript"></script>
        <script src="js/val_registro_estudiante.js" type="text/javascript"></script>
        <script src="js/fechas.js" type="text/javascript"></script>
        <script src="js/gestion_excusas.js" type="text/javascript"></script>
        <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
        <script>
            $(function () {
                $("#fecha").datepicker({dateFormat: 'yy/mm/dd'});
                $('[type="date"]').prop('max', function () {
                    return new Date().toJSON().split('T')[0];
                });
            });
        </script>
        <title>Excusa</title>
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
                        <td><input class="form-control" type="text" id="fecha" name="textfecha" placeholder="AAAA/MM/DD"><br><br></td>
                    </tr>
                    <tr>
                        <td><label>observaciones: &nbsp;</label></td>
                        <td><textarea class="form-control" id="observacion" name="textobservaciones" placeholder="Escribe el motivo de tu inasistencia"></textarea><br><br></td>
                    </tr>
                    <tr>
                        <td><label>Seleccionar archivo: &nbsp;</label></td>
                        <td><input class="form-control" type="file" id="ARCHIVO" name="textarchivo"><br><br></td>
                    </tr>
                </table>
            </div><br>
            <button>Subir excusa</button>
            <input type="hidden" name="textOpcion" value="1"/>
        </form>

        <%if (request.getAttribute("error") != null) {%>
        ${error}
        <%} else {%>
        ${exito}
        <%}%>
        <br></center>
    <script src="Bootstrap/js/bootstrap.js" type="text/javascript"></script>
    <script src="js/clickmenu.js" type="text/javascript"></script>
</body>
</html>

