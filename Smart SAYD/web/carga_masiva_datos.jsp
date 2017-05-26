<%-- 
    Document   : carga_masiva_datos
    Created on : 26-may-2017, 0:50:33
    Author     : Samuel Cubillos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cargar Masiva de Datos</title>
        <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="Bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <link href="css/registro_estudiante.css" rel="stylesheet" type="text/css"/>
        <link href="JQuery/JqueryUI/jquery-ui-1.12.1/jquery-ui.css" rel="stylesheet" type="text/css"/>
        <script src="JQuery/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="JQuery/JqueryUI/jquery-ui-1.12.1/jquery-ui.js" type="text/javascript"></script>
        <script src="Bootstrap/js/bootstrap.js" type="text/javascript"></script>
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
        <br><img src="img/registro.png" alt=""/><br><br>
        <form method="POST" action="">
            <div id="formulario" class="container"><br>
                <table>
                    <tr>
                        <td><label>Tabla: &nbsp;</label></td>
                        <td><select class="form-control" id="se" name="texttabla">
                                <option value="" selected="true" disabled="disabled">Selecione la tabla</option>
                                <option value="asignatura">Asignatura</option>
                                <option value="curso">Curso</option>
                                <option value="estudiante">Estudiante</option>
                                <option value="formador">Formador</option>
                                <option value="inasistencia">Inasistencia</option>
                                <option value="nota_final">Nota Final</option>
                                <option value="personal">Personal</option>
                                <option value="programa">Programa</option>
                            </select><br><br></td>
                    </tr>
                    <tr>
                        <td><label>Suba el archivo (.csv): &nbsp;</label></td>
                        <td><input type="file" name="archivo"><br><br></td>
                    </tr>
                </table>
            </div><br>
            <table>
                <tr>
                    <td><button class="btn-primary">Insertar Datos</button>
                        <input type="hidden" name="textOpcion" value="1"/></td>
                    <td><input class="btn-danger" type="button" id="bo1" onclick="regresar()" value="Regresar"></td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>
