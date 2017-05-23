$(document).ready(function () {
    $("#fecha1").datepicker({dateFormat: 'yy/mm/dd',
        changeMonth: true,
        changeYear: true,
        maxDate: 0
    });
    $("#fecha2").datepicker({dateFormat: 'yy/mm/dd',
        maxDate: 0,
        minDate: 0}).datepicker("setDate", new Date());
});
