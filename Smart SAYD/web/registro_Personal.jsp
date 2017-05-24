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
        <title>Registrar Usuario</title>
    </head>
    <body>
        <header>
            <br><div class="container">                
                <img src="img/SmartSAYD.png" alt="logo"/>
            </div><br>
        </header>
    <center>
        </br>
        <h1>Registro de nuevo usuario</h1>
        </br>
        </br>
        <form class="form-inline" method="POST" action="Personal">
            <div id="formulario" class="container">
                </br>
                <table>
                    <tr>
                        <td>IdTrabajador: &nbsp;</td>
                        </br>
                        <td><input class="form-control has-focus" type="text" id="txtidTrabajador" placeholder="ID"></td>
                    </tr>
                    <tr>
                        <td>Nombres: &nbsp;</td>
                        </br>
                        <td><input class="form-control has-focus" type="text" id="txtNombre" placeholder="Escribe tus nombres"></td>
                    </tr>
                    <tr>
                        <td>Primer apellido: &nbsp;</td>
                        <td><input class="form-control has-focus" type="text" id="txtPrimerApellido" placeholder="Primer apellido"></td>
                    </tr>
                    <tr>
                        <td>Segundo apellido: &nbsp;</td>
                        <td><input class="form-control has-focus" type="text" id="txtSegundoApellido" placeholder="Segundo apellido"></td>
                    </tr>
                    <tr>
                        <td>Tipo identificación: &nbsp;</td>
                        <td><select class="form-control" id="se1" name="txtTipo_identificacion">
                                <option value="">Elija su Tipo de Documento</option>
                                <option value="1">Cedula de Ciudadania</option>
                                <option value="2">Tarjeta de Identidad</option>
                                <option value="3">Cedula de Extranjería</option>
                                <option value="4">Numero de Identificación Tributaria</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Numero identificacion: &nbsp;</td>
                        <td><input class="form-control has-focus" type="text" id="txtNumeroIdentificacion" placeholder="Numero identificacion"></td>
                    </tr>
                    <tr>
                        <td>Fécha expedicion: &nbsp;</td>
                        <td><input class="form-control has-focus" type="text" id="txtFechaExpedicion" placeholder="Fecha expedicion"></td>
                    </tr>
                    <tr>
                        <td>Ciudad expedicion: &nbsp;</td>
                        <td><input class="form-control has-focus" type="text" id="txtCiudad_Expedicion" placeholder="Ciudad expedicion"></td>
                    </tr>
                    <tr>
                        <td>País expedicion: &nbsp;</td>
                        <td><input class="form-control has-focus" type="text" id="txtPais_Expedicion" placeholder="País expedicion"></td>
                    </tr>
                    <tr>
                        <td>Género: &nbsp;</td>
                        <td><select class="form-control" id="se2" name="txtGenero">
                                <option value="" selected="true" disabled="disabled">Selecione su Genero</option>
                                <option value="1">Masculino</option>
                                <option value="2">Femenino</option>
                            </select><br><br></td>
                    </tr>
                    <tr>
                        <td>Fecha nacimiento: &nbsp;</td>
                        <td><input class="form-control has-focus" type="text" id="txtFecha_Nacimiento" placeholder="Fecha nacimiento"></td>
                    </tr>
                    <tr>
                        <td>Ciudad nacimiento: &nbsp;</td>
                        <td><input class="form-control has-focus" type="text" id="txtCiudad_Nacimiento" placeholder="Ciudad nacimiento"></td>
                    </tr>
                    <tr>
                        <td>País nacimiento: &nbsp;</td>
                        <td><input class="form-control has-focus" type="text" id="txtPais_Nacimiento" placeholder="País nacimiento"></td>
                    </tr>
                    <tr>
                        <td>Estrato: &nbsp;</td>
                        <td><select class="form-control" id="se1" name="txtEstrato">
                                <option value="" selected="true" disabled="disabled">Elija su Estrato</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                            </select><br></td>
                    </tr>
                    <tr>
                        <td>Número telefono: &nbsp;</td>
                        <td><input class="form-control has-focus" type="number" id="txtNumero_Telefono" placeholder="Teléfono - Celular"></td>
                    </tr>
                    <tr>
                        <td>Correo electrónico: &nbsp;</td>
                        <td><input class="form-control has-focus" type="text" id="txtCorreo_Electronico" placeholder="Correo electrónico"></td>
                    </tr>
                    <tr>
                        <td>Direccion residencia: &nbsp;</td>
                        <td><input class="form-control has-focus" type="text" id="txtDireccion_Residencia" placeholder="Direccion"></td>
                    </tr>
                    <tr>
                        <td>EPS: &nbsp;</td>
                        <td><input class="form-control has-focus" type="text" id="txtEPS" placeholder="Nombre entidad"></td>
                    </tr>
                    <tr>
                        <td>RH: &nbsp;</td>
                        <td>
                            <select class="form-control" id="se1" name="txtRH">
                                <option value="" selected="true" disabled="disabled">Elija su tipo</option>
                                <option value="+">+ Positivo</option>
                                <option value="-">- Negativo</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Grupo sanguíneo: &nbsp;</td>
                        <td>
                            <select class="form-control" id="se1" name="txtGrupo_Sanguineo">
                                <option value="" selected="true" disabled="disabled">Elija su grupo</option>
                                <option value="A">A</option>
                                <option value="B">B</option>
                                <option value="AB">AB</option>
                                <option value="O">O</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Rol asignado: &nbsp;</td>
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
                        <td>Contraseña: &nbsp;</td>
                        <td><input class="form-control has-focus" type="password" id="txtContrasena" placeholder="Contraseña"></td>
                    </tr>
                    <tr>
                        <td><input class="btn-danger" type="button" id="bo1" onclick="regresar()" value="Regresar"></td>
                        <td><button class="btn-primary">Registrar usuario</button>
                            <input type="hidden" name="textOpcion" value="1"></td>
                    </tr>
                </table>
            </div>
        </form>
    </center>
</body>
</html>
