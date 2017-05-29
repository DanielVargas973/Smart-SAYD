$(document).ready(function () {
    
    $("input[name=textnombreprog]").blur(function () {
        ComprobarNombre();
    });
    
    $("input[name=textsedereal]").blur(function () {
        ComprobarSede();
    });

    $("textarea[name=textdescrip]").blur(function () {
        ComprobarDescripcion();
    });
    
    $("textarea[name=textobjetivo]").blur(function () {
        ComprobarObjetivo();
    });
    
    $("input[name=textduracion]").blur(function () {
        ComprobarTiempo();
    });

});

function ComprobarNombre() {
    nombre = $("input[name=textnombreprog]").val();
    if (nombre == "") {
        $("#Renombre").html("Nombre de programa Requerido. ");
        $("#nombre").css("border-color","red");
    }
    else{
        $("#Renombre").html("");
        $("#nombre").css("border-color","blue");
    }
}

function ComprobarSede() {
    Sede = $("input[name=textsedereal]").val();
    if (Sede == "") {
        $("#Resede").html("la Sede es Requerida. ");
        $("#sede").css("border-color","red");
    }
    else{
        $("#Resede").html("");
        $("#sede").css("border-color","blue");
    }
}

function ComprobarDescripcion() {
    descrip = $("textarea[name=textdescrip]").val();
    if (descrip == "" || descrip == " ") {
        $("#Redes").html("la descripcion del programa es Requerida. ");
        $("#descripcion").css("border-color","red");
    }
    else{
        $("#Redes").html("");
        $("#descripcion").css("border-color","blue");
    }
}

function ComprobarObjetivo() {
    objetivo = $("textarea[name=textobjetivo]").val();
    if (objetivo == "" || objetivo == " ") {
        $("#Reobj").html("el objetivo del programa es Requerido. ");
        $("#objetivo").css("border-color","red");
    }
    else{  
        $("#Reobj").html("");
        $("#objetivo").css("border-color","blue");
    }
}

function ComprobarTiempo() {
    tiempo = $("input[name=textduracion]").val();
    if (tiempo == "") {
        $("#Retiem").html("la duracion del programa es Requerida. ");
        $("#tiempo").css("border-color","red");
    }
    else{  
        $("#Retiem").html("");
        $("#tiempo").css("border-color","blue");
    }
}