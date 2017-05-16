$(document).ready(function (){
    $("input[name=textcontrasena1]"). blur(function (){
        ComprobarClave();
    });
});
function ComprobarClave(){
    pass1 = $("input[name=textcontrasena]").val();
    pass2 = $("input[name=textcontrasena1]").val();
    
    if (pass1 =="" && pass2=="") {
        $("#Res").html("Contraseñas Requeridas.");
    }else{
        if (pass1 == pass2) {
        $("#Res").html("Contraseñas Correctas. ");
         }else{
        $("#Res").html("Contraseñas no Coinciden. ");
    }
    }
    
}

$(document).ready(function(){

$("input[name=textidestu]"). blur(function(){
        ComprobarEstudiante();
});
    
$("input[name=textnombres]"). blur(function(){
        ComprobarNombre();
});

$("input[name=textapellidos]"). blur(function(){
        ComprobarApellido();
});

$("input[name=textcorreo]"). blur(function(){
        ComprobarCorreo();
});

$("input[name=textnumerotel]"). blur(function(){
        ComprobarTelefono();
});

});

function ComprobarNombre(){
nombre = $("input[name=textnombres]").val();
if (nombre =="") {
        $("#Renombre").html("Nombre Requerido. ");
    }
}   


function ComprobarApellido(){
Apellido = $("input[name=textapellidos]").val();
if (Apellido =="") {
        $("#Reapellido").html("Apellido Requerido. ");
    }
} 


function ComprobarCorreo(){
correo = $("input[name=textcorreo]").val();
if (correo =="") {
        $("#Recorreo").html("Correo Requerido. ");
    }
}

function ComprobarTelefono(){
telefono = $("input[name=textnumerotel]").val();
    if (telefono =="") {
        $("#Retel").html("Telefono Requerido. ");
    }
}

function ComprobarEstudiante(){
estudiante = $("input[name=textidestu]").val();
    if (estudiante =="") {
        $("#ReEstu").html("Documento Requerido. ");
    }
}


