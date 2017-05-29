<%-- 
    Document   : modificar_estudiante
    Created on : 06-may-2017, 22:03:53
    Author     : Samuel Cubillos
--%>

<%@page import="java.sql.*"%>
<%@page import="Util.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

<%
    String numeroid = "";
    numeroid = request.getParameter("textnumeroid");
    String nombres = "";
    String apellidos = "";
    String fechan = "";
    String correo = "";
    String telefono = "";
    try {
        rs = puente.executeQuery("select * from estudiante where Numero_identificacion ='" + numeroid + "';");
        while (rs.next()) {

            nombres = rs.getString("Nombres");
            apellidos = rs.getString("Apellidos");
            correo = rs.getString("Correo_electronico");
            telefono = rs.getString("Numero_telefono");
            if (correo != null && telefono != null) {
                fechan = rs.getString("Fecha_inscripcion");
            } else {
                fechan = "";
                correo = "";
                telefono = "";
            }

        }

    } catch (Exception e) {
        e.printStackTrace();
    }
    if (numeroid != "") {
        if (nombres == "" || apellidos == "" || nombres == "" && apellidos == "") {
            numeroid = "";
        }
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="Bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <link href="css/actualizar_estudiante.css" rel="stylesheet" type="text/css"/>
        <link href="JQuery/JqueryUI/jquery-ui-1.12.1/jquery-ui.css" rel="stylesheet" type="text/css"/>
        <script src="JQuery/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="JQuery/JqueryUI/jquery-ui-1.12.1/jquery-ui.js" type="text/javascript"></script>
        <script src="js/val_fechas_actuaestudiante.js" type="text/javascript"></script>
        <script src="js/val_actualizar_estudiante.js" type="text/javascript"></script>
        <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
        <script>
            lim = false;
            $(function () {
                $("#fechaN").datepicker({dateFormat: 'yy/mm/dd'});
                $('[type="date"]').prop('max', function () {
                    return new Date().toJSON().split('T')[0];
                });
            });
            /*function limpiar() {
             $("#estu1").val("");
             $("#nombres").val("");
             $("#apellidos").val("");
             }*/
        </script>
        <title>Actualizar Estudiante</title>
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
            </nav>
            <br><div class="container">                
                <img id="logo" margin-left="200px" src="img/SmartSAYD.png" alt="logo"/>
            </div><br>
        </header>
    <center>
        <br><img src="img/actualizar.png" alt=""/><br><br>
        <div id="formulario1" class="container"><br>
            <form method="post" action="Estudiante">
                <table>
                    <td><label>Numero de identificación:&nbsp;</label></td>
                    <td><input class="form-control" type="number" name="textnumeroid" id="estu" ><p id="ReEstu"></p><br></td>
                </table>
                <button>Actualizar Datos</button>
                <input type="hidden" name="textOpcion" value="3"><br>
            </form>
        </div>
        <form method="post" action="Estudiante">
            <div id="formulario2" class="container">
                <table>
                    <tr>
                        <td><input class="form-control" type="hidden" readonly="readonly" id="estu1" name="textnumeroid" value="<%=numeroid%>"><p id="ReEstu"></p><br></td>
                    </tr>
                    <tr>
                        <td><label>Nombres: &nbsp;</label></td>
                        <td><input class="form-control" type="text" readonly="readonly" id="nombres" name="textnombres" value="<%=nombres%>"><p id="Renombre"></p><br></td>
                    </tr>
                    <tr>
                        <td><label>Apellidos: &nbsp;</label></td>
                        <td><input class="form-control" type="text" readonly="readonly" id="apellidos" name="textapellidos" value="<%=apellidos%>"><p id="Reapellido"></p><br></td>
                    </tr>
                    <tr>
                        <td><label>Fecha de Nacimiento: &nbsp;</label></td>
                        <td><input class="form-control" type="text" id="fechaN" name="textfechan" placeholder="AAAA/MM/DD" value="<%=fechan%>"><br></td>
                    </tr>
                    <tr>
                        <td><label>Contraseña: &nbsp;</label></td>
                        <td><input class="form-control" type="password" id="contrasena" name="textcontrasena"><p id="Recontra"></p><br> </td>
                    </tr>
                    <tr>
                        <td><label>Repetir Contraseña: &nbsp;</label></td>
                        <td><input class="form-control" type="password" id="contrasena1" name="textcontrasena1"><p id="Res" ></p><br></td>
                    </tr>
                    <tr>
                        <td><label>Estrato: &nbsp;</label></td>
                        <td><select class="form-control" id="se1" name="textestrato" spellcheck="1">
                                <option selected="true" disabled="disabled">Elija su Estrato</option>
                                <option value="1">1 - Muy Bajo</option>
                                <option value="2">2 - Bajo</option>
                                <option value="3">3 - Medio Bajo</option>
                                <option value="4">4 - Medio</option>
                                <option value="5">5 - Medio Alto</option>
                                <option value="6">6 - Alto</option>
                            </select><br></td>
                    </tr>
                    <tr>
                        <td><label>Correo Electronico: &nbsp;</label></td>
                        <td><input class="form-control" type="email" id="correo" name="textcorreo" value="<%=correo%>"><p id="Recorreo"></p><br></td>
                    </tr>
                    <tr>
                        <td><label>Numero de telefono: &nbsp;</label></td>
                        <td><input class="form-control" type="number" id="numerotel" name="textnumerotel" value="<%=telefono%>"><p id="Retel"></p><br></td>
                    </tr>

                </table>
            </div><br>    
            <button>Actualizar Estudiante</button>
            <input type="hidden" name="textOpcion" value="2">
        </form>
        <%if (request.getAttribute("error") != null) {%>
        ${error}
        <%} else { %>
        ${exito}      
        <%}%>
    </center>
    <script src="Bootstrap/js/bootstrap.js" type="text/javascript"></script>
    <script src="js/clickmenu.js" type="text/javascript"></script>
</body>
</html>