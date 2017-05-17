$(document).ready(function(){
    
$("input[name=textCurso]"). blur(function(){
        ComprobarCurso();
});


});

function ComprobarCurso(){
curso = $("input[name=textCurso]").val();
    if (curso =="") {
        $("#curso").html("Numero Curso Requerido. ");
    }
}