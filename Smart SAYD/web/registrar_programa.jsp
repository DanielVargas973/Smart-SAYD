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
        <script src="js/val_registrar_programa.js" type="text/javascript"></script>
        <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
        <title>Registro Programa</title>
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
        <br><h1>Registro Programa</h1><br>
        
            <form method="post" action="Programa" class="form-inline">
                <div id="formulario" class="container"><br>
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
                </div><br>
                    <button>Registrar Programa</button>
                    <input type="hidden" name="textOpcion" value="1"/>
            </form><br>
        
        <%if (request.getAttribute("error") != null) {%>
        ${error}
        <%} else {%>
        ${exito}
        <%}%>
    </center>
    <script src="Bootstrap/js/bootstrap.js" type="text/javascript"></script>
    <script src="js/clickmenu.js" type="text/javascript"></script>
</body>
</html>
