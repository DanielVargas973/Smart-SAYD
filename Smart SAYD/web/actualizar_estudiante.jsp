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

    String idEstudiante = "";
    idEstudiante = request.getParameter("textidestu");
    String nombres = "";
    String apellidos = "";

    try {
        rs = puente.executeQuery("select * from estudiante where idEstudiante ='" + idEstudiante + "';");
        while (rs.next()) {

            nombres = rs.getString("Nombres");
            apellidos = rs.getString("Apellidos");

            if (true) {

            }

        }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="Bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <link href="css/actualizar_estudiante.css" rel="stylesheet" type="text/css"/>
        <script src="JQuery/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="js/val_actualizar_estudiante.js" type="text/javascript"></script>
        <script src="Bootstrap/js/bootstrap.js" type="text/javascript"></script>
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
        <title>Actualizar Estudiante</title>
    </head>
    <body>
        <header>
            <br><div class="container">                
                <img src="img/SmartSAYD.png" alt="logo"/>
            </div><br>
        </header>
    <center>
        <br><img src="img/actualizar.png" alt=""/><br><br>
        <div id="formulario1" class="container"><br>
            <form method="post" action="Estudiante">
                
                <table>
                    <td><label>Numero de identificación:&nbsp;</label></td>
                    <td><input class="form-control" type="number" id="estu" name="textidestu"><p id="ReEstu"></p><br></td>
                </table>
                <button class="btn-primary">Actualizar Datos&nbsp;</button>
                <input type="hidden" name="textOpcion" value="3"><br>
            </form>
            </div>
            <form method="post" action="Estudiante">
                <div id="formulario2" class="container">
                <table>
                    <tr>
                        <td><label>Documento:  </label></td>
                        <td><input class="form-control" type="number" readonly="readonly" id="estu1" name="textidestu" value="<%=idEstudiante%>"><p id="ReEstu"></p><br></td>
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
                        <td><input class="form-control" type="date" name="textfechan"><br></td>
                    </tr>
                    <tr>
                        <td><label>Contraseña: &nbsp;</label></td>
                        <td><input class="form-control" type="password" id="contrasena" name="textcontrasena"><p id="Recontra"></p><br> </td>
                    </tr>
                    <tr>
                        <td><label>Repetir Contraseña: &nbsp;</label></td>
                        <td><input class="form-control" type="password" id="contrasena1" name="textcontrasena1"><p id="Res"></p><br></td>
                    </tr>
                    <tr>
                        <td><label>Estrato: &nbsp;</label></td>
                        <td><select class="form-control" id="se1" name="textestrato">
                                <option value="">Elija su Estrato</option>
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
                        <td><input class="form-control" type="email" id="correo" name="textcorreo"><p id="Recorreo"></p><br></td>
                    </tr>
                    <tr>
                        <td><label>Numero de telefono: &nbsp;</label></td>
                        <td><input class="form-control" type="number" id="numerotel" name="textnumerotel"><p id="Retel"></p><br></td>
                    </tr>
                
                </table>
                </div><br>    
                <table>
                    <tr>
                        <td><button class="btn-primary">Actualizar Estudiante</button>
                            <input type="hidden" name="textOpcion" value="2"></td>
                        <td><input class="btn-danger" type="button" id="bo1" onclick="regresar()" value="Regresar"></td>
                    </tr>
                </table>
            </form>
        
        <%if (request.getAttribute("error") != null) {%>
        ${error}
        <% } else { %>
        ${exito}
        <% }%>
    </center>
</body>
</html>