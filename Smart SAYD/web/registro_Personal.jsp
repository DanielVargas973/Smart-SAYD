<%-- 
    Document   : registro_Personal
    Created on : 23/05/2017, 03:52:00 PM
    Author     : Daniel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="Bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <link href="css/registro_Personal.css" rel="stylesheet" type="text/css"/>
        <link href="JQuery/JqueryUI/jquery-ui-1.12.1/jquery-ui.css" rel="stylesheet" type="text/css"/>
        <script src="JQuery/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="JQuery/JqueryUI/jquery-ui-1.12.1/jquery-ui.js" type="text/javascript"></script>
        <script src="js/val_registro_personal.js" type="text/javascript"></script>
        <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
        <title>Registrar Usuario</title>
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
        <br/>
        <h1>Registro de nuevo usuario</h1>
        <br/>
        <form class="form-inline" method="POST" action="Personal">
            <div id="formulario" class="container"><br/><br/>
                <table>
                    <tr>
                        <td><label>Nombres: &nbsp;</label></td>
                        <td><input class="form-control has-focus" type="text" id="txtNombre" name="txtNombre" placeholder="Escribe tus nombres"><br><br></td>
                    </tr>
                    <tr>
                        <td><label>Primer apellido: &nbsp;</label></td>
                        <td><input class="form-control has-focus" type="text" id="txtPrimerApellido" name="txtPrimerApellido" placeholder="Primer apellido"><br><br></td>
                    </tr>
                    <tr>
                        <td><label>Segundo apellido: &nbsp;</label></td>
                        <td><input class="form-control has-focus" type="text" id="txtSegundoApellido" name="txtSegundoApellido" placeholder="Segundo apellido"><br><br></td>
                    </tr>
                    <tr>
                        <td><label>Tipo identificación: &nbsp;</label></td>
                        <td><select class="form-control" id="se1" name="txtTipo_identificacion">
                                <option value="">Elija su Tipo de Documento</option>
                                <option value="1">Cedula de Ciudadania</option>
                                <option value="2">Tarjeta de Identidad</option>
                                <option value="3">Cedula de Extranjería</option>
                                <option value="4">Numero de Identificación Tributaria</option>
                            </select><br><br></td>
                    </tr>
                    <tr>
                        <td><label>Número identificación: &nbsp;</label></td>
                        <td><input class="form-control has-focus" type="text" id="txtNumeroIdentificacion" name="txtNumeroIdentificacion" placeholder="Numero identificacion"><br><br></td>
                    </tr>
                    <tr>
                        <td><label>Fécha expedicion: &nbsp;</label></td>
                        <td><input class="form-control has-focus" type="text" id="txtFechaExpedicion" name="txtFechaExpedicion" placeholder="Fecha expedicion"><br><br></td>
                    </tr>
                    <tr>
                        <td><label>Ciudad expedicion: &nbsp;</label></td>
                        <td><input class="form-control has-focus" type="text" id="txtCiudad_Expedicion" name="txtCiudad_Expedicion" placeholder="Ciudad expedicion"><br><br></td>
                    </tr>
                    <tr>
                        <td><label>País expedicion: &nbsp;</label></td>
                        <td><input class="form-control has-focus" type="text" id="txtPais_Expedicion" name="txtPais_Expedicion" placeholder="País expedicion"><br><br></td>
                    </tr>
                    <tr>
                        <td><label>Género: &nbsp;</label></td>
                        <td><select class="form-control" id="se2" name="txtGenero">
                                <option value="" selected="true" disabled="disabled">Selecione su Genero</option>
                                <option value="1">Masculino</option>
                                <option value="2">Femenino</option>
                            </select><br><br></td>
                    </tr>
                    <tr>
                        <td><label>Fecha nacimiento: &nbsp;</label></td>
                        <td><input class="form-control has-focus" type="text" id="txtFecha_Nacimiento" name="txtFecha_Nacimiento" placeholder="Fecha nacimiento"><br><br></td>
                    </tr>
                    <tr>
                        <td><label>Ciudad nacimiento: &nbsp;</label></td>
                        <td><input class="form-control has-focus" type="text" id="txtCiudad_Nacimiento" name="txtCiudad_Nacimiento" placeholder="Ciudad nacimiento"><br><br></td>
                    </tr>
                    <tr>
                        <td><label>País nacimiento: &nbsp;</label></td>
                        <td><input class="form-control has-focus" type="text" id="txtPais_Nacimiento" name="txtPais_Nacimiento" placeholder="País nacimiento"><br><br></td>
                    </tr>
                    <tr>
                        <td><label>Estrato: &nbsp;</label></td>
                        <td><select class="form-control" id="se1" name="txtEstrato">
                                <option value="" selected="true" disabled="disabled">Elija su Estrato</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                            </select><br><br></td>
                    </tr>
                    <tr>
                        <td><label>Número telefono: &nbsp;</label></td>
                        <td><input class="form-control has-focus" type="number" id="txtNumero_Telefono" name="txtNumero_Telefono" placeholder="Teléfono - Celular"><br><br></td>
                    </tr>
                    <tr>
                        <td><label>Correo electrónico: &nbsp;</label></td>
                        <td><input class="form-control has-focus" type="text" id="txtCorreo_Electronico" name="txtCorreo_Electronico" placeholder="Correo electrónico"><br><br></td>
                    </tr>
                    <tr>
                        <td><label>Direccion residencia: &nbsp;</label></td>
                        <td><input class="form-control has-focus" type="text" id="txtDireccion_Residencia" name="txtDireccion_Residencia" placeholder="Direccion"><br><br></td>
                    </tr>
                    <tr>
                        <td><label>EPS: &nbsp;</label></td>
                        <td><input class="form-control has-focus" type="text" id="txtEPS" name="txtEPS" placeholder="Nombre entidad"><br><br></td>
                    </tr>
                    <tr>
                        <td><label>Grupo sanguíneo: &nbsp;</label></td>
                        <td>
                            <select class="form-control" id="se1" name="txtGrupo_Sanguineo">
                                <option value="" selected="true" disabled="disabled">Elija su grupo</option>
                                <option value="A">A</option>
                                <option value="B">B</option>
                                <option value="AB">AB</option>
                                <option value="O">O</option>
                            </select><br><br>
                        </td>
                    </tr>
                    <tr>
                        <td><label>RH: &nbsp;</label></td>
                        <td>
                            <select class="form-control" id="se1" name="txtRH">
                                <option value="" selected="true" disabled="disabled">Elija su tipo</option>
                                <option value="+">+ Positivo</option>
                                <option value="-">- Negativo</option>
                            </select><br><br>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Rol asignado: &nbsp;</label></td>
                        <td>
                            <select class="form-control" id="se1" name="txtRol_Asignado">
                                <option value="" selected="true" disabled="disabled">Elija un rol</option>
                                <option value="1">Administrador</option>
                                <option value="2">Secretaria</option>
                                <option value="3">Formador</option>
                            </select><br><br>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Contraseña: &nbsp;</label></td>
                        <td><input class="form-control has-focus" type="password" id="txtContrasena" name="txtContrasena" placeholder="Contraseña"><br><br></td>
                    </tr>
                </table>
                <br/>
            </div><br>
            <div>
                <button>Registrar Estudiante</button>
                <input type="hidden" name="textOpcion" value="1"/>
            </div><br>
        </form>
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
