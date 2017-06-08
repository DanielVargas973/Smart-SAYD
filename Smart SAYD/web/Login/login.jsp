<%-- 
    Document   : login
    Created on : 31/05/2017, 09:36:27 PM
    Author     : Daniel Vargas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="../css/login.css" rel="stylesheet" type="text/css"/>
        <link href="../Bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <script src="../JQuery/jquery-3.2.1.min.js" type="text/javascript"></script>
        <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
        <title>Smart SAYD</title>
    </head>
    <body>
    <center>
        <br/>
        <br/>
        <h1>Iniciar sesión</h1>
        <br/>
        <br/>
        <form class="form-inline" method="post" action=".../Smart_SAYD">
            <div id="formulario" class="container">
                <br/>
                <table>
                    <tr>
                        <td><label>Número identificación: &nbsp;</label></td>
                        <td><input class="form-control" type="text" name="txtNumIdenti" placeholder="Número identificacion"/></td><br/>
                    </tr>
                    <tr>
                        <td><label> Contraseña: &nbsp;</label></td>
                        <td><input class="form-control" type="password" name="txtContrase" placeholder="Contraseña"/><br/></td>
                    </tr>
                </table>
                <br/>
                <br/>
            </div>
            <br/>
            <br/>
            <input type="submit" value="Ingresar"/>
        </form>
        <%
            //Recupera la sesion
            HttpSession sesion = request.getSession();
            //Cierra la sesion
            if (request.getParameter("cerrar") != null) {
                sesion.invalidate();
                response.sendRedirect("login.jsp");
            }
        %>
        <% if (request.getAttribute("error") != null) {%>
        <%response.sendRedirect("Login/login.jsp");%>
        ${error}
        <% } else { %>
        ${exito}
        <% }%>
    </center>
</body>
</html>