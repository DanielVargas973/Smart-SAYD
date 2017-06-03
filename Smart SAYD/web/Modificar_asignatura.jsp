<%-- 
    Document   : Modificar_asignatura
    Created on : 31/05/2017, 09:07:34 PM
    Author     : Box
--%>
<%@page import="Modelo.BEAN.BeanAsignatura"%>
<%@page import="Modelo.DAO.Daoasignatura"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Util.Conexion"%>
<%@page import="java.sql.*"%>
<%@page import="Util.Conexion.*"%>

<%!int Parametro;
    BeanAsignatura BAsig = new BeanAsignatura();
    Daoasignatura DAsig = new Daoasignatura(BAsig);
    String idAsignatura = "";
    String idPrograma = "";
    String Nombre_asignatura = "";
    String Codigo_asignatura = "";
    String Descripcion = "";
    String Numero_cupos = "";
%>

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
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="Bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <link href="css/Subirexcusa.css" rel="stylesheet" type="text/css"/>
        <link href="JQuery/JqueryUI/jquery-ui-1.12.1/jquery-ui.css" rel="stylesheet" type="text/css"/>
        <script src="JQuery/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="JQuery/JqueryUI/jquery-ui-1.12.1/jquery-ui.js" type="text/javascript"></script>
        <script src="js/val_registro_estudiante.js" type="text/javascript"></script>
        <script src="js/fechas.js" type="text/javascript"></script>
        <script src="js/gestion_excusas.js" type="text/javascript"></script>
        <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">

        <title></title>
    </head>
    <body>
        <%
            Parametro = Integer.parseInt(request.getParameter("idAsignatura"));
            BAsig = DAsig.Consultar(Parametro);
            idAsignatura = BAsig.getIdAsignatura();
            idPrograma = BAsig.getIdPrograma();
            Nombre_asignatura = BAsig.getNombre_asignatura();
            Codigo_asignatura = BAsig.getCodigo_asignatura();
            Descripcion = BAsig.getDescripcion();
            Numero_cupos = BAsig.getNumero_cupos();


        %>
        <br><div class="container">                
            <img id="logo" margin-left="200px" src="img/SmartSAYD.png" alt="logo"/>
        </div><br>

    <center>
        <h1>Estas Editando la materia de <%=Nombre_asignatura%></h1>

        <form action="GestionAsignaturas" method="POST" >

            <div id="formulario" class="container"><br>

                <table border="0">


                    <tr>
                        <td>Id Asignatura:</td>  
                        <td><input type="text"  class="form-control" value="<%=idAsignatura%>" name="idasig" readonly=""></input></td>  
                    </tr>
                    <tr>
                        <td><label>selecciona programa: &nbsp;</label></td>
                        <td><select class="form-control" id="se1" name="textseleccion1">
                                <%try {
                                        out.println("<option value=''>Selecione un programa</option>");
                                        rs = puente.executeQuery("select * from programa");
                                        while (rs.next()) {
                                %>

                                <option value="<%=rs.getString("idPrograma")%>"><%=rs.getString("Nombre_programa")%></option>

                                <%
                                    }
                                } catch (Exception e) {
                                %>
                                <option value="">No se encontro ninguna lista</option> 
                                <%
                                    }
                                %></select><br><br>
                    </tr>
                    <tr>
                        <td>Nombre Asignatura</td>  
                        <td><input type="text" class="form-control" value="<%=Nombre_asignatura%>" name="nombreasig"></input></td>  
                    </tr>
                    <tr>
                    <tr>
                        <td>codigo Asignatura:</td>  
                        <td><input type="text" value="<%=Codigo_asignatura%>" class="form-control" name="codasig" ></input></td>  
                    </tr>
                    <tr>
                        <td>Descripcion</td>  
                        <td><input type="text" value="<%=Descripcion%>" class="form-control" name="descripcion"></input></td>  
                    </tr>
                    <tr>
                        <td>Numero de cupos</td>  
                        <td><input type="text" value="<%=Numero_cupos%>" class="form-control" name="cupos"></input></td>  
                    </tr>







                </table>
            </div><br>
            <button>Actualizar asignatura</button>
            <input type="hidden" name="textOpcion" value="2">
        </form>  
        <a type="button" href="Gestion_asignatura.jsp" class="btn btn btn-primary">Volver</a>


        <%if (request.getAttribute("error") != null) {%>
        ${error}
        <%} else {%>
        ${exito}
        <%}%>
        <br></center>
    <script src="Bootstrap/js/bootstrap.js" type="text/javascript"></script>
    <script src="js/clickmenu.js" type="text/javascript"></script>
</body>
</html>

