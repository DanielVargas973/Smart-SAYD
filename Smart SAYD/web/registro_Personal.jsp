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
        <script src="Bootstrap/js/bootstrap.js" type="text/javascript"></script>
        <script>
            function regresar() {
                window.location.href = 'menu.jsp';
            }
        </script>
        <title>Registrar Usuario</title>
    </head>
    <body>
        <header>
            <br><div class="container">                
                <img src="img/SmartSAYD.png" alt="logo"/>
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
                        <td><input class="form-control has-focus" type="text" id="txtNombre" name="txtNombre" placeholder="Escribe tus nombres"><br/></td>
                    </tr>
                    <tr>
                        <td><label>Primer apellido: &nbsp;</label></td>
                        <td><input class="form-control has-focus" type="text" id="txtPrimerApellido" name="txtPrimerApellido" placeholder="Primer apellido"><br/></td>
                    </tr>
                    <tr>
                        <td><label>Segundo apellido: &nbsp;</label></td>
                        <td><input class="form-control has-focus" type="text" id="txtSegundoApellido" name="txtSegundoApellido" placeholder="Segundo apellido"><br/></td>
                    </tr>
                    <tr>
                        <td><label>Tipo identificación: &nbsp;</label></td>
                        <td><select class="form-control" id="se1" name="txtTipo_identificacion">
                                <option value="">Elija su Tipo de Documento</option>
                                <option value="1">Cedula de Ciudadania</option>
                                <option value="2">Tarjeta de Identidad</option>
                                <option value="3">Cedula de Extranjería</option>
                                <option value="4">Numero de Identificación Tributaria</option>
                            </select><br/><br/></td>
                    </tr>
                    <tr>
                        <td><label>Número identificación: &nbsp;</label></td>
                        <td><input class="form-control has-focus" type="text" id="txtNumeroIdentificacion" name="txtNumeroIdentificacion" placeholder="Numero identificacion"><br/></td>
                    </tr>
                    <tr>
                        <td><label>Fécha expedicion: &nbsp;</label></td>
                        <td><input class="form-control has-focus" type="text" id="txtFechaExpedicion" name="txtFechaExpedicion" placeholder="Fecha expedicion"><br/></td>
                    </tr>
                    <tr>
                        <td><label>Ciudad expedicion: &nbsp;</label></td>
                        <td><input class="form-control has-focus" type="text" id="txtCiudad_Expedicion" name="txtCiudad_Expedicion" placeholder="Ciudad expedicion"><br/><br/></td>
                    </tr>
                    <tr>
                        <td><label>País expedicion: &nbsp;</label></td>
                        <td><input class="form-control has-focus" type="text" id="txtPais_Expedicion" name="txtPais_Expedicion" placeholder="País expedicion"><br/></td>
                    </tr>
                    <tr>
                        <td><label>Género: &nbsp;</label></td>
                        <td><select class="form-control" id="se2" name="txtGenero">
                                <option value="" selected="true" disabled="disabled">Selecione su Genero</option>
                                <option value="1">Masculino</option>
                                <option value="2">Femenino</option>
                            </select><br/></td>
                    </tr>
                    <tr>
                        <td><label>Fecha nacimiento: &nbsp;</label></td>
                        <td><input class="form-control has-focus" type="text" id="txtFecha_Nacimiento" name="txtFecha_Nacimiento" placeholder="Fecha nacimiento"><br/></td>
                    </tr>
                    <tr>
                        <td><label>Ciudad nacimiento: &nbsp;</label></td>
                        <td><input class="form-control has-focus" type="text" id="txtCiudad_Nacimiento" name="txtCiudad_Nacimiento" placeholder="Ciudad nacimiento"><br/><br/></td>
                    </tr>
                    <tr>
                        <td><label>País nacimiento: &nbsp;</label></td>
                        <td><input class="form-control has-focus" type="text" id="txtPais_Nacimiento" name="txtPais_Nacimiento" placeholder="País nacimiento"><br/></td>
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
                            </select><br/></td>
                    </tr>
                    <tr>
                        <td><label>Número telefono: &nbsp;</label></td>
                        <td><input class="form-control has-focus" type="number" id="txtNumero_Telefono" name="txtNumero_Telefono" placeholder="Teléfono - Celular"><br/></td>
                    </tr>
                    <tr>
                        <td><label>Correo electrónico: &nbsp;</label></td>
                        <td><input class="form-control has-focus" type="text" id="txtCorreo_Electronico" name="txtCorreo_Electronico" placeholder="Correo electrónico"><br/><br/></td>
                    </tr>
                    <tr>
                        <td><label>Direccion residencia: &nbsp;</label></td>
                        <td><input class="form-control has-focus" type="text" id="txtDireccion_Residencia" name="txtDireccion_Residencia" placeholder="Direccion"><br/></td>
                    </tr>
                    <tr>
                        <td><label>EPS: &nbsp;</label></td>
                        <td><input class="form-control has-focus" type="text" id="txtEPS" name="txtEPS" placeholder="Nombre entidad"><br/></td>
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
                            </select><br/>
                        </td>
                    </tr>
                    <tr>
                        <td><label>RH: &nbsp;</label></td>
                        <td>
                            <select class="form-control" id="se1" name="txtRH">
                                <option value="" selected="true" disabled="disabled">Elija su tipo</option>
                                <option value="+">+ Positivo</option>
                                <option value="-">- Negativo</option>
                            </select>
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
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Contraseña: &nbsp;</label></td>
                        <td><input class="form-control has-focus" type="password" id="txtContrasena" name="txtContrasena" placeholder="Contraseña"><br/></td>
                    </tr>
                </table>
                <br/>
            </div>
            <div>
                <table>
                    <br/>
                    <tr>
                        <td><input class="btn-danger" type="button" id="bo1" onclick="regresar()" value="Regresar"></td>
                        <td><button class="btn-primary">Registrar Estudiante</button>
                            <input type="hidden" name="textOpcion" value="1"/></td>
                    </tr>
                </table>
            </div>
        </form>
        <%if (request.getAttribute("error") != null) {%>
        ${error}
        <%} else {%>
        ${exito}
        <%}%>
    </center>
</body>
</html>
