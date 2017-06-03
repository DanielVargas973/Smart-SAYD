<%-- 
    Document   : modificar_programa
    Created on : 3/06/2017, 12:37:20 AM
    Author     : Liam
--%>

<%@page import="Util.Conexion"%>
<%@page import="java.sql.*"%>
<%@page import="Util.Conexion.*"%>
<%@page import="Modelo.DAO.DaoPrograma"%>
<%@page import="Modelo.BEAN.BeanPrograma"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%!
    int Parametro;
    BeanPrograma BProg = new BeanPrograma();
    DaoPrograma DProg = new DaoPrograma(BProg);
    String idPrograma = "";
    String Nombre_programa = "";
    String Sede_realizacion = "";
    String Descripcion_programa = "";
    String Objetivo_formacion = "";
    String Pensum_del_programa = "";
    String Pensum_Archivo = "";
    String Tiempo_duracion = "";
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
        <title>Modificar Programa</title>
    </head>
    <body>
        <%
            Parametro = Integer.parseInt(request.getParameter("idPrograma"));
            BProg = DProg.Consultar(Parametro);
            idPrograma = BProg.getIdPrograma();
            Nombre_programa = BProg.getNombre_programa();
            Sede_realizacion = BProg.getSede_realizacion();
            Descripcion_programa = BProg.getDescripcion_programa();
            Objetivo_formacion = BProg.getObjetivo_formacion();
            Pensum_del_programa = BProg.getPensum_Archivo();
            Pensum_Archivo = BProg.getPensum_Archivo();
            Tiempo_duracion = BProg.getTiempo_duracion();


        %>
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
        <h1>Editar Programa: &nbsp;<%=Nombre_programa%></h1>
        <form action="Programa" method="POST" >
            <div id="formulario" class="container"><br>
                <table border="0">
                    <tr>
                        <td>Id Programa: &nbsp;</td>  
                        <td><input type="text"  class="form-control" value="<%=idPrograma%>" name="textidprog" readonly=""></input></td>  
                    </tr>
                    <tr>
                        <td>Nombre Programa: &nbsp;</td>  
                        <td><input type="text" class="form-control" value="<%=Nombre_programa%>" name="textnombreprog"></input></td>  
                    </tr>
                    <tr>
                    <tr>
                        <td>Sede: &nbsp;</td>  
                        <td><input type="text" value="<%=Sede_realizacion%>" class="form-control" name="textsedereal" ></input></td>  
                    </tr>
                    <tr>
                        <td>Descripcion Programa: &nbsp;</td>  
                        <td><input type="text" value="<%=Descripcion_programa%>" class="form-control" name="textdescrip"></input></td>  
                    </tr>
                    <tr>
                        <td>Objetivo del Programa: &nbsp;</td>  
                        <td><input type="text" value="<%=Objetivo_formacion%>" class="form-control" name="textobjetivo"></input></td>  
                    </tr>
                    <tr>
                        <td>Tiempo de Duracion: &nbsp;</td>  
                        <td><input type="text" value="<%=Tiempo_duracion%>" class="form-control" name="textduracion"></input></td>  
                    </tr>

                </table>
            </div><br>
            <button>Actualizar Programa</button>
            <input type="hidden" name="textOpcion" value="2">
            </form>
            <a type="button" href="registrar_programa.jsp" class="btn btn btn-primary">Volver</a>
        <%if (request.getAttribute("error") != null) {%>
        ${error}
        <%} else {%>
        ${exito}
        <%}%>
    </body>
</html>
