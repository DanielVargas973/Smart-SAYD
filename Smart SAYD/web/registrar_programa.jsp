<%-- 
    Document   : registrar_programa
    Created on : 18/05/2017, 07:43:11 PM
    Author     : Liam
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Util.Conexion"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.DAO.DaoPrograma"%>
<%@page import="Modelo.BEAN.BeanPrograma"%>
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
%>
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
                <title>Registrar Programa</title>
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
        </form><br><br>
        <button type="button"  data-toggle="modal" data-target="#myModal">
            Editar Programa
        </button>
        <div class="modal fullscreen-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Editar Programa</h4>
                    </div>
                    <div class="modal-body">
                        <table border="0" class="b">
                            <tr>
                                <td style="width: 200px; text-align: center;" class="text-primary">
                                    ID Programa:                        
                                </td>
                                <td style="width: 200px; text-align: center;"class="text-primary">
                                    Nombre Programa:                        
                                </td>
                                <td style="width: 200px; text-align: center;"class="text-primary">
                                    Sede Realizacion:                       
                                </td>
                                <td style="width: 200px; text-align: center;"class="text-primary">
                                    Descripcion del Programa:
                                </td>
                                <td style="width: 200px; text-align: center;"class="text-primary">
                                    Objetivo:                      
                                </td>
                                <td style="width: 200px; text-align: center;"class="text-primary">
                                    Pensum Programa:                      
                                </td>
                                <td style="width: 200px; text-align: center;"class="text-primary">
                                    Tiempo Duracion:                      
                                </td>


                            </tr>
                            <%
                                BeanPrograma BProg = new BeanPrograma();
                                DaoPrograma DProg = new DaoPrograma();

                                ArrayList<BeanPrograma> ListarPrograma = DProg.Listar();
                                for (int i = 0; i < ListarPrograma.size(); i++) {
                                    BProg = ListarPrograma.get(i);
                            %>
                            <tr>
                                <td><center><%=BProg.getIdPrograma()%></center></td>
                            <td><center><%=BProg.getNombre_programa()%></center></td>
                            <td><center><%=BProg.getSede_realizacion()%></center></td>
                            <td><center><%=BProg.getDescripcion_programa()%></center></td>
                            <td><center><%=BProg.getObjetivo_formacion()%></center></td>
                            <td><center><%=BProg.getPensum_Archivo()%></center></td>
                            <td><center><%=BProg.getTiempo_duracion()%></center></td>
                            <th>
                                <form method="POST" action="modificar_programa.jsp">

                                    <input type="hidden" name="idPrograma" value="<%=BProg.getIdPrograma()%>"><button type="submit">Modificar</button>   

                                </form>


                            <th>

                                </tr>
                                <% }%>

                        </table>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-dismiss="modal">Cerrar</button>

                    </div>
                </div>
            </div>
        </div>


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
