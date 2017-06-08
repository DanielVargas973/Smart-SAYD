$(document).ready(function () {
    
  
    
    $("input[name=nombreasig]").blur(function () {
        ComprobarNombre();
    });

    $("input[name=codasig]").blur(function () {
        ComprobarCodigoAsig();
    });
    
    $("textarea[name=descripcion]").blur(function () {
        ComprobarDescripcion();
    });
    
    $("input[name=cupos]").blur(function () {
        ComprobarCupos();
    });

});



function ComprobarNombre() {
    Nombre = $("input[name=nombreasig]").val();
    if (Nombre == "") {
        $("#Renombre").html("la nombre de la asignatura es Requerida. ");
        $("#nombre").css("border-color","red");
    }
    else{
        $("#Renombre").html("");
        $("#nombre").css("border-color","blue");
    }
}

function ComprobarCodigoAsig() {
    Codigo = $("input[name=codasig]").val();
    if (Codigo == "") {
        $("#reCodigo").html("el codigo del programa es requerido. ");
        $("#Codigo").css("border-color","red");
    }
    else{
        $("#reCodigo").html("");
        $("#Codigo").css("border-color","blue");
    }
}

function ComprobarDescripcion() {
    Descripcion = $("textarea[name=descripcion]").val();
    if (Descripcion == "" || Descripcion == " ") {
        $("#ReDescripcion").html("la descripcion  de la asignatura es Requerida. ");
        $("#Descripcion").css("border-color","red");
    }
    else{  
        $("#ReDescripcion").html("");
        $("#Descripcion").css("border-color","blue");
    }
}

function ComprobarCupos() {
    Cupos = $("input[name=cupos]").val();
    if (Cupos == "") {
        $("#ReCupos").html("es necesario sabercuantos cupos obtendra el programa. ");
        $("#Cupos").css("border-color","red");
    }
    else{  
        $("#ReCupos").html("");
        $("#Cupos").css("border-color","blue");
    }
}
