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
        <title>Smart SAYD</title>
    </head>
    <body>
    <center>
        <h1>Inicio de sesion</h1>
        <form method="post" action=".../Smart_SAYD">
            <table>
                <tr>
                    <td><label>Numero identificacion: </label></td>
                    <td><input type="text" name="txtNumIdenti"/></td><br/>
                </tr>
                <tr>
                    <td><label> Contraseña: </label></td>
                    <td><input type="text" name="txtContrase"/><br/></td>
                </tr>
            </table>
            <input type="submit" value="Ingresar"/>
            <input type="hidden" name="textOpcion" value="1"/>
        </form>
        <% if (request.getAttribute("error") != null) { %>
        ${error}
        <% } else { %>
        ${exito}
        <% }%>
    </center>
</body>
</html>
