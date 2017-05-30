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
        <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
        <link rel="shortcut icon" type="image/x-icon" href="/favicon.ico">
        <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="Bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <link href="css/registro_estudiante.css" rel="stylesheet" type="text/css"/>
        <link href="JQuery/JqueryUI/jquery-ui-1.12.1/jquery-ui.css" rel="stylesheet" type="text/css"/>
        <script src="JQuery/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="JQuery/JqueryUI/jquery-ui-1.12.1/jquery-ui.js" type="text/javascript"></script>
        <script src="js/val_registro_estudiante.js" type="text/javascript"></script>
        <script src="js/val_fechas_registroestu.js" type="text/javascript"></script>
        <script src="Bootstrap/js/bootstrap.js" type="text/javascript"></script>
        <script>
            $(function () {
                $('[type="date"]').prop('max', function () {
                    return new Date().toJSON().split('T')[0];
                });
                $('$fecha2').prop('min', function () {
                    return new Date().toJSON().split('T')[0];
                });
                $('$fecha2').prop('max', function () {
                    return new Date().toJSON().split('T')[0];
                });
            });
        </script>
        <title>Registro Estudiante</title>
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
        <br><img src="img/registro.png" alt=""/><br><br>
            <form id="fo" method="post" action="Estudiante" class="form-inline">
                <div id="formulario" class="container"><br>
                <table>
                    <tr>
                        <td><label>Nombres: &nbsp;</label></td>
                        <td><input class="form-control has-focus" type="text" id="nombres" name="textnombres" placeholder="Nombres"><p id="Renombre"></p><br></td>
                    </tr>
                    <tr>
                        <td><label>Apellidos: &nbsp;</label></td>
                        <td><input class="form-control" type="text" name="textapellidos" id="apellidos" placeholder="Apellidos"><p id="Reapellido"></p><br></td>
                    </tr>
                    <tr>
                        <td><label>Tipo Identificación: &nbsp;</label></td>
                        <td><select class="form-control" id="se1" name="texttipoid">
                                <option value="" selected="true" disabled="disabled">Elija su Tipo de Documento</option>
                                <option value="1">Cedula de Ciudadania</option>
                                <option value="2">Tarjeta de Identidad</option>
                                <option value="3">Cedula de Extranjería</option>
                                <option value="4">Numero de Identificación Tributaria</option>
                            </select><br><br></td>
                    </tr>
                    <tr>
                        <td><label>Numero Identificación: &nbsp;&nbsp;</label></td>
                        <td><input class="form-control" type="number" name="textnumeroid" id="numero" placeholder="Numero Identificación"><p id="Renumid"></p><br></td>
                    </tr>
                    <tr>
                        <td><label>Fecha Expedición: &nbsp;</label></td>
                        <td><input class="form-control" type="text" id="fecha1" name="textfechaex" placeholder="AAAA/MM/DD"><p id="Reexped"></p><br></td>

                    </tr>
                    <tr>
                        <td><label>Genero: &nbsp;</label></td>
                        <td><select class="form-control" id="se2" name="textgenero">
                                <option value="" selected="true" disabled="disabled">Selecione su Genero</option>
                                <option value="1">Masculino</option>
                                <option value="2">Femenino</option>
                            </select><br><br></td>
                    </tr>
                    <tr>
                        <td><label>Curso: &nbsp;</label></td>
                        <td><select class="form-control" id="se1" name="textidcurso">
                                <%try {
                                        out.print("<option value = '' selected='true' disabled='disabled'>Selecione un Curso</option>");
                                        rs = puente.executeQuery("SELECT count(e.Apellidos) as cantidad ,c.Id_Curso,Nombre_programa FROM curso c left join estudiante e on c.Id_Curso = e.Id_Curso inner join programa p on p.idPrograma = c.id_programa GROUP BY c.Id_Curso;");
                                        while (rs.next()) {
                                            if (Integer.parseInt(rs.getString("cantidad")) < 40) {//Begin IF
                                %>

                                <option value="<%=rs.getString("Id_Curso")%>"><%=rs.getString("Id_Curso")%><%out.print(" - ");%><%=rs.getString("Nombre_programa")%></option>

                                <%
                                        }//End IF

                                    }
                                } catch (Exception e) {
                                %>
                                <option selected="true" disabled="disabled">No se encontro ninguna lista</option> 
                                <%
                                    }
                                %>                          
                            </select><br><br></td>
                    </tr>
                    <tr>
                        <!--<td><label>Fecha Inscripción: &nbsp;</label></td>-->
                        <td><input class="form-control" type="hidden" id="fecha2" name="textfechain" placeholder="AAAA/MM/DD"><br></td>
                    </tr>
                </table>
                </div><br>
                            <button>Registrar Estudiante</button>
                            <input type="hidden" name="textOpcion" value="1"/></td>
            </form>
        
        <%if (request.getAttribute("error") != null) {%>
        ${error}
        <%} else {%>
        ${exito}
        <%}%>
        <br></center>
        <script src="js/clickmenu.js" type="text/javascript"></script>
</body>
</html>
