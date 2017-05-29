<%-- 
    Document   : registrar_programa
    Created on : 18/05/2017, 07:43:11 PM
    Author     : Liam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="Bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <link href="css/registro_estudiante.css" rel="stylesheet" type="text/css"/>
        <script src="JQuery/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="Bootstrap/js/bootstrap.js" type="text/javascript"></script>
        <title>Registro Programa</title>
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
        <br><h1>Registro Programa</h1><br>
        <div id="formulario" class="container"><br>
            <form method="post" action="Programa" class="form-inline">
                <table>
                    <tr>
                        <td><label>Nombre Programa: &nbsp;</label></td>
                        <td><input class="form-control" type="text" name="textnombreprog" id="nombre" placeholder="Nombre"><p id="Renombre"></p><br><br></td>
                    </tr>
                    <tr>
                        <td><label>Sede: &nbsp;</label></td>
                        <td><input class="form-control" type="text" name="textsedereal" id="sede" placeholder="Sede"><p id="Resede"></p><br><br></td>
                    </tr>
                    <tr>
                        <td><label>Descripcion Programa: &nbsp;</label></td>
                        <td><textarea class="form-control" name="textdescrip" id="descripcion" placeholder="Descripcion"></textarea><p id="Redes"></p><br><br></td>
                    </tr>
                    <tr>
                        <td><label>Objetivo Programa: &nbsp;</label></td>
                        <td><textarea class="form-control" type="textarea" name="textobjetivo" id="objetivo" placeholder="Objetivo"></textarea><p id="Reobj"></p><br><br></td>
                    </tr>
                    <tr>
                        <td><label>Tiempo Duracion: &nbsp;</label></td>
                        <td><input class="form-control" type="number" name="textduracion" id="tiempo" placeholder="Tiempo"><p id="Retiem"></p><br><br></td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td><button  class="btn-primary">Registrar Programa</button>
                            <input type="hidden" name="textOpcion" value="1"/></td>
                        <td><input class="btn-danger" type="button" id="bo1" onclick="regresar()" value="Regresar"></td>
                    </tr>
                </table>
            </form><br>
        </div><br>
        <%if (request.getAttribute("error") != null) {%>
        ${error}
        <%} else {%>
        ${exito}
        <%}%>
        </center>
    </body>
</html>
