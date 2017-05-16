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

});

function ComprobarNombre() {
    nombre = $("input[name=textnombres]").val();
    if (nombre == "") {
        $("#Renombre").html("Nombre Requerido. ");
    }
}


function ComprobarApellido() {
    Apellido = $("input[name=textapellidos]").val();
    if (Apellido == "") {
        $("#Reapellido").html("Apellido Requerido. ");
    }
}

function ComprobarNumero() {
    numid = $("input[name=textnumeroid]").val();
    if (numid == "") {
        $("#Renumid").html("Numero de identificación Requerido. ");
    }
}