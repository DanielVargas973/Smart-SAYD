$(document).ready(function () {

    $("input[name=textnumeroid]").blur(function () {
        ComprobarNumero();
    });


    $("input[name=textnombres]").blur(function () {
        ComprobarNombre();
    });

    $("input[name=textapellidos]").blur(function () {
        ComprobarApellido();
    });
    
    $("input[name=textfechaex]").blur(function () {
        ComprobarExpedicion();
    });

});

function ComprobarNombre() {
    nombre = $("input[name=textnombres]").val();
    if (nombre == "") {
        $("#Renombre").html("Nombre Requerido. ");
        $("#nombres").css("border-color","red");
    }
    else{
        $("#Renombre").html("");
        $("#nombres").css("border-color","blue");
    }
}


function ComprobarApellido() {
    Apellido = $("input[name=textapellidos]").val();
    if (Apellido == "") {
        $("#Reapellido").html("Apellido Requerido. ");
        $("#apellidos").css("border-color","red");
    }
    else{
        $("#Reapellido").html("");
        $("#apellidos").css("border-color","blue");
    }
}

function ComprobarNumero() {
    numid = $("input[name=textnumeroid]").val();
    if (numid == "") {
        $("#Renumid").html("Numero de identificación Requerido. ");
        $("#numero").css("border-color","red");
    }
    else{
        $("#Renumid").html("");
        $("#numero").css("border-color","blue");
    }
}

function ComprobarExpedicion() {
    expedicion = $("input[name=textfechaex]").val();
    if (expedicion == "") {
        $("#Reexped").html("La fecha de expedicion es Requerida. ");
        $("#fecha1").css("border-color","red");
    }
    else{  
        $("#Reexped").html("");
        $("#fecha1").css("border-color","blue");
    }
}