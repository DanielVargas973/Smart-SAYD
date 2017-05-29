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
        <title>JSP Page</title>
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
                        <td><label>Nombre Programa: </label></td>
                        <td><input class="form-control" type="text" name="textnombreprog" placeholder="Nombre"><br><br></td>
                    </tr>
                    <tr>
                        <td><label>Sede: </label></td>
                        <td><input class="form-control" type="text" name="textsedereal" placeholder="Sede"><br><br></td>
                    </tr>
                    <tr>
                        <td><label>Descripcion Programa: </label></td>
                        <td><input class="form-control" type="text" name="textdescrip" placeholder="Descripcion"><br><br></td>
                    </tr>
                    <tr>
                        <td><label>Objetivo Programa: </label></td>
                        <td><input class="form-control" type="text" name="textobjetivo" placeholder="Objetivo"><br><br></td>
                    </tr>
                    <tr>
                        <td><label>Tiempo Duracion: </label></td>
                        <td><input class="form-control" type="number" name="textduracion" placeholder="Tiempo"><br><br></td>
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
