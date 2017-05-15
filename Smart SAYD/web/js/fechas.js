$(document).ready(function () {
    
    $("#fecha1").datepicker();
    $("#fecha2").datepicker();
    var fecha1 = $("#fecha1").val();
    var fecha2 = $("#fecha2").val();
    if (fecha1 === "" || fecha2 === "") {
        alert("Por favor seleccione las fechas de inscripcion y/o de expedición.");
    }
    if (!Modernizr.inputtypes.date) {
        $('input[type=date]').datepicker({
            // Consistent format with the HTML5 picker
            dateFormat: 'yy-mm-dd'
        });
    }
    if (!Modernizr.touch || !Modernizr.inputtypes.date) {
        $('input[type=date]')
                .attr('type', 'text')
                .datepicker({
                    // Consistent format with the HTML5 picker
                    dateFormat: 'yy-mm-dd'
                });
    }
});
