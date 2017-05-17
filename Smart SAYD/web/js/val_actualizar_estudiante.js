$(document).ready(function () {
    $("input[name=textcontrasena1]").blur(function () {
            ComprobarClave();
    });
    $("input[name=textcontrasena]").blur(function () {
            ComprobarClave2();
        });
});
function ComprobarClave() {
    pass1 = $("input[name=textcontrasena]").val();
    pass2 = $("input[name=textcontrasena1]").val();

    if (pass1 == "" && pass2 == "") {
        $("#Res").html("Contraseñas Requeridas.");
        $("#contrasena").css("border-color", "red");
        $("#contrasena1").css("border-color", "red");
    } else {
        if (pass1 == pass2) {
            $("#Res").html("Contraseñas Correctas. ");
        } else {
            $("#Res").html("Contraseñas no Coinciden. ");
            $("#contrasena").css("border-color", "red");
            $("#contrasena1").css("border-color", "red");
        }
    }

}
function ComprobarClave2() {
    pass1 = $("input[name=textcontrasena]").val();
    pass2 = $("input[name=textcontrasena1]").val();

    if (pass1 == "" && pass2 == "") {
    } else {
        if (pass1 == pass2) {
            $("#Res").html("Contraseñas Correctas. ");
        } else {
            $("#Res").html("Contraseñas no Coinciden. ");
            $("#contrasena").css("border-color", "red");
            $("#contrasena1").css("border-color", "red");
        }
    }

}

$(document).ready(function () {

    $("input[name=textidestu]").blur(function () {
        ComprobarEstudiante();
    });

    $("input[name=textnombres]").blur(function () {
        ComprobarNombre();
    });

    $("input[name=textapellidos]").blur(function () {
        ComprobarApellido();
    });

    $("input[name=textcorreo]").blur(function () {
        ComprobarCorreo();
    });

    $("input[name=textnumerotel]").blur(function () {
        ComprobarTelefono();
    });

});

function ComprobarNombre() {
    nombre = $("input[name=textnombres]").val();
    if (nombre == "") {
        $("#Renombre").html("Nombre Requerido. ");
        $("#nombres").css("border-color", "red");
    }
}


function ComprobarApellido() {
    Apellido = $("input[name=textapellidos]").val();
    if (Apellido == "") {
        $("#Reapellido").html("Apellido Requerido. ");
        $("#apellidos").css("border-color", "red");
    }
}


function ComprobarCorreo() {
    correo = $("input[name=textcorreo]").val();
    if (correo == "") {
        $("#Recorreo").html("Correo Requerido. ");
        $("#correo").css("border-color", "red");
    }
}

function ComprobarTelefono() {
    telefono = $("input[name=textnumerotel]").val();
    if (telefono == "") {
        $("#Retel").html("Telefono Requerido. ");
        $("#numerotel").css("border-color", "red");
    }
}

function ComprobarEstudiante() {
    estudiante = $("input[name=textidestu]").val();
    if (estudiante == "") {
        $("#ReEstu").html("Documento Requerido. ");
        $("#estu").css("border-color", "red");
        $("#estu1").css("border-color", "red");
    }
}


