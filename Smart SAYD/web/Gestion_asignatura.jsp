<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.DAO.Daoasignatura"%>
<%@page import="Modelo.BEAN.BeanAsignatura"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Util.Conexion"%>
<%@page import="java.sql.*"%>
<%@page import="Util.Conexion.*"%>

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
        <script>
            $(function () {
                $("#fecha").datepicker({dateFormat: 'yy/mm/dd'});
                $('[type="date"]').prop('max', function () {
                    return new Date().toJSON().split('T')[0];
                });
            });
        </script>
        <title>Gestion De excusa</title>
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
        <br> <h1 class="text-danger">Gestion De Asignatura</h1><br>

        <form id="fo" method="post" action="GestionAsignaturas" class="form-inline" >
            <div id="formulario" class="container"><br>
                <table> 
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
                        </td>
                    </tr>

                    <tr>
                        <td><label>Nombre Asignatura: &nbsp;</label></td>
                        <td><input class="form-control" type="text" id="nomasig" name="nombreasig" placeholder="Nombre de la asiganatura"><br><br></td>
                    </tr>
                    <tr>
                        <td><label>codigo Asignatura: &nbsp;</label></td>
                        <td><input class="form-control" type="number" id="codasig" name="codasig" placeholder="Codigo de la asiganatura"><br><br></td>
                    </tr>
                    <tr>
                        <td><label>Decripcion: &nbsp;</label></td>
                        <td><textarea class="form-control" id="descripcion" name="descripcion" placeholder="Escribe Una breve descripcion"></textarea><br><br></td>
                    </tr>
                    <tr>
                        <td><label>Cupos a disponer : &nbsp;</label></td>
                        <td><input class="form-control" type="number" id="numeroscupos" name="cupos"><br><br></td>
                    </tr>
                </table>
            </div><br>
            <button>Crear Asignatura</button>
            <input type="hidden" name="textOpcion" value="1"/>
        </form>
       
                
                <!-- Button trigger modal -->
	<button type="button"  data-toggle="modal" data-target="#myModal">
	  Editar Asignatura
	</button>
	
	<!-- Modal -->
	<div class="modal fullscreen-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel">Editar Asignatura</h4>
	      </div>
	      <div class="modal-body">
	          <table border="0" class="b">
                <tr>
                    <td style="width: 200px; text-align: center;" class="text-primary">
                        ID ASIGNATURA                        
                    </td>
                    <td style="width: 200px; text-align: center;"class="text-primary">
                        ID PROGRAMA                        
                    </td>
                    <td style="width: 200px; text-align: center;"class="text-primary">
                        NOMBRE ASIGNATURA                        
                    </td>
                    <td style="width: 200px; text-align: center;"class="text-primary">
                       CODIGO ASIGNATURA                      
                    </td>
                    <td style="width: 200px; text-align: center;"class="text-primary">
                        DESCRIPCION                      
                    </td>
                    <td style="width: 200px; text-align: center;"class="text-primary">
                        NUMERO DE CUPOS                        
                    </td>
                    
                    
                </tr>
                <% 
                 BeanAsignatura Ba = new BeanAsignatura();
                 Daoasignatura Da = new Daoasignatura();
                 
                 ArrayList<BeanAsignatura>listadeasignaturas = Da.Listar();
                 for(int i=0; i<listadeasignaturas.size(); i++){
                     Ba = listadeasignaturas.get(i);
                %>
                <tr>
            <td><center><%=Ba.getIdAsignatura()%></center></td>
            <td><center><%=Ba.getIdPrograma()%></center></td>
            <td><center><%=Ba.getNombre_asignatura()%></center></td>
            <td><center><%=Ba.getCodigo_asignatura()%></center></td>
            <td><center><%=Ba.getDescripcion()%></center></td>
            <td><center><%=Ba.getNumero_cupos()%></center></td>
                <th>
                                       <form method="post" action="Modificar_asignatura.jsp">
                                           
                                           <input type="hidden" name="idAsignatura" value="<%=Ba.getIdAsignatura()%>"><button type="submit">Modificar</button>   
                                           
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
        <br></center>

    

    <script src="Bootstrap/js/bootstrap.js" type="text/javascript"></script>
    <script src="js/clickmenu.js" type="text/javascript"></script>
</body>
</html>

