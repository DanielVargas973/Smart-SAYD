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
        <script src="Bootstrap/js/bootstrap.js" type="text/javascript"></script>
        <script>
                    
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
        <div id="formulario" class="container"><br>
            <form method="post" action="Estudiante">
                <table>
                    <td><label>Numero de identificación:&nbsp;</label></td>
                    <td><input class="form-control" type="number" name="textidestu" value="<%=idEstudiante%>"><br></td>
                </table>
                <button class="btn-primary">Actualizar Datos&nbsp;</button>
                <input type="hidden" name="textOpcion" value="3"><br>
            </form>
            <form method="post" action="Estudiante">
                <table>
                    <tr>
                        <td><label>Nombres: &nbsp;</label></td>
                        <td><input class="form-control" type="text" name="textnombres" readonly="readonly" value="<%=nombres%>"><br>  </td>
                    </tr>
                    <tr>
                        <td><label>Apellidos: &nbsp;</label></td>
                        <td><input class="form-control" type="text" name="textapellidos" readonly="readonly" value="<%=apellidos%>"><br> </td>
                    </tr>
                    <tr>
                        <td><label>Fecha de Nacimiento: &nbsp;</label></td>
                        <td><input class="form-control" type="date" name="textfechan"><br> </td>
                    </tr>
                    <tr>
                        <td><label>Contraseña: &nbsp;</label></td>
                        <td><input class="form-control" type="password" name="textcontrasena"><br>  </td>
                    </tr>
                    <tr>
                        <td><label>Repetir Contraseña: &nbsp;</label></td>
                        <td><input class="form-control" type="password" name="textcontrasena"><br> </td>
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
                        <td><input class="form-control" type="text" name="textcorreo"><br> </td>
                    </tr>
                    <tr>
                        <td><label>Numero de telefono: &nbsp;</label></td>
                        <td><input class="form-control" type="number" name="textnumerotel"><br> </td>
                    </tr>

                </table><br>
                <table>
                    <tr>
                    <td><button class="btn-primary">Actualizar Estudiante</button>
                        <input type="hidden" name="textOpcion" value="2"></td>
                    <td><input class="btn-danger" type="button" id="bo1" onclick="regresar()" value="Regresar"></td>
                    </tr>
                </table>
            </form>
        </div>
        <%if (request.getAttribute("error") != null) {%>
        ${error}
        <% } else { %>
        ${Exito}
        <% }%>
    </center>
</body>
</html>