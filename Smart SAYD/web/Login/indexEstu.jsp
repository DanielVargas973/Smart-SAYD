<%-- 
    Document   : indexEstu
    Created on : 31/05/2017, 09:11:38 PM
    Author     : Daniel Vargas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../Bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <script src="../JQuery/jquery-3.2.1.min.js" type="text/javascript"></script>
        <link href="../css/menu.css" rel="stylesheet" type="text/css"/>
        <link href="../css/font/raleway.css" rel="stylesheet" type="text/css"/>
        <title>Smart SAYD</title>
    </head>
    <body>
        <header>
            <div id="mostrar-menu"><label class="menu">Menú</label></div>
            <nav id="menu">
                  
                <li><a href="actualizar_estudiante.jsp"><img id="me" width="42px" height="42px" src="../img/menu5.png" alt=""/>Actualizar Estudiante</a></li>  
                <li><a href="Subirexcusa.jsp"><img id="me" width="42px" height="42px" src="../img/menu6.png" alt=""/>Gestión Excusas</a></li>    
                <li><a href="Gestion_asignatura.jsp"><img id="me" width="42px" height="42px" src="../img/Menu8.png" alt=""/>Gestionar Asignaturas</a></li>
            </nav>
            <br><div class="container">                
                <img src="../img/SmartSAYD.png" alt="logo"/>
                <% HttpSession sesion = request.getSession();
                    String Numero_identificacion;
                    String Rol;
                    if (sesion.getAttribute("User") != null && sesion.getAttribute("Rol") != null) {
                        Numero_identificacion = sesion.getAttribute("User").toString();
                        Rol = sesion.getAttribute("Rol").toString();
                        out.print("<a href='login.jsp?cerrar=true'><h5>Cerrar sesion" + Numero_identificacion + "</h5></a>");
                    } else {
                        out.print("<script>location.replace('login.jsp');</script>");
                    }
                    %>
            </div><br>
        </header>
    <center>
        <h1>Estudiante</h1>

    </center>
    <script src="../Bootstrap/js/bootstrap.js" type="text/javascript"></script>
    <script src="../js/clickmenu.js" type="text/javascript"></script>
</body>
</html>