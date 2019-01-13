var visible = 0;
var asientosSeleccionados = [];
$(document).ready(function () {
    $("#txtTotal").val(Sumar());
    $("#lblTotalNinos").html("$" + pagoNino().toString());
    $("#lblTotalAdultos").html("$" + pagoAdulto().toString());

});

function Sumar() {
    var n1 = document.getElementById('cmbAdultos').value;
    var n2 = document.getElementById('cmbNinos').value;
    var suma = parseInt(n1) + parseInt(n2);
    return suma;
}

function pagoAdulto() {
    var n1 = document.getElementById('cmbAdultos').value;
    var precio = 500;
    var suma = parseInt(n1) * precio;
    return suma;
}

function pagoNino() {
    var precio = 200;
    var n2 = document.getElementById('cmbNinos').value;
    var suma = precio * parseInt(n2);
    return suma;
}

function pagoTotal() {
    var n1 = document.getElementById('cmbAdultos').value;
    var n2 = document.getElementById('cmbNinos').value;
    var suma = parseInt(n1) + parseInt(n2);
    return suma;
}

$("#cmbAdultos").change(function () {
    $("#txtTotal").val(Sumar());
    $("#lblTotalAdultos").html("$" + pagoAdulto().toString());
});
$("#cmbNinos").change(function () {
    $("#txtTotal").val(Sumar());
    $("#lblTotalNinos").html("$" + pagoNino().toString());
});

$(".btn.btn-dark").click(function () {
    alert(asientosSeleccionados);
});

$("#btnNiños").click(function () {
    visible++;
    if (visible % 2 === 0) {
        Ocultar();
    }
    else {
        mostrar();
    }
});

function mostrar() {
        $('#oculto').addClass('animated bounceInUp form-group col-md-4');
        $('#lblNinos').addClass('animated bounceInUp');
        $('#lblTotalNinos').addClass('animated bounceInUp');
        $('#oculto').css({ 'display': 'block' });
        $('#lblTotalNinos').css({ 'display': 'block' });
        $('#lblNinos').css({ 'display': 'block' });
        $('.btn.btn-dark').css({ 'margin-top': '-200px' });
        $('#oculto').css({ 'display': 'block' });
}

function Ocultar() {
    $('#oculto').css({ 'display': 'none' });
    $('#lblTotalNinos').css({ 'display': 'none' });
    $('#lblNinos').css({ 'display': 'none' });
    $('.btn.btn-dark').css({ 'margin-top': '-300px' });
    document.getElementById("cmbNinos").value = '0';
    $("#txtTotal").val(Sumar());
}

$("#btnAs1").click(function () {
    $("#btnAs1").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("1");
});

$("#btnAs2").click(function () {
    $("#btnAs2").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("2");
});

$("#btnAs3").click(function () {
    $("#btnAs3").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("3");
});

$("#btnAs4").click(function () {
    $("#btnAs4").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("4");
});

$("#btnAs5").click(function () {
    $("#btnAs5").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("5");
});

$("#btnAs6").click(function () {
    $("#btnAs6").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("6");
});

$("#btnAs7").click(function () {
    $("#btnAs7").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("7");
});

$("#btnAs8").click(function () {
    $("#btnAs8").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("8");
});

$("#btnAs9").click(function () {
    $("#btnAs9").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("9");
});

$("#btnAs10").click(function () {
    $("#btnAs10").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("10");
});

$("#btnAs11").click(function () {
    $("#btnAs11").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("11");
});

$("#btnAs12").click(function () {
    $("#btnAs12").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("12");
});

$("#btnAs13").click(function () {
    $("#btnAs13").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("13");
});

$("#btnAs14").click(function () {
    $("#btnAs14").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("14");
});

$("#btnAs15").click(function () {
    $("#btnAs15").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("15");
});

$("#btnAs16").click(function () {
    $("#btnAs16").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("16");
});

$("#btnAs17").click(function () {
    $("#btnAs17").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("17");
});

$("#btnAs18").click(function () {
    $("#btnAs18").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("18");
});

$("#btnAs19").click(function () {
    $("#btnAs19").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("19");
});

$("#btnAs20").click(function () {
    $("#btnAs20").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("20");
});

$("#btnAs21").click(function () {
    $("#btnAs21").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("21");
});

$("#btnAs22").click(function () {
    $("#btnAs22").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("22");
});

$("#btnAs23").click(function () {
    $("#btnAs23").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("23");
});

$("#btnAs24").click(function () {
    $("#btnAs24").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("24");
});

$("#btnAs25").click(function () {
    $("#btnAs25").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("25");
});

$("#btnAs26").click(function () {
    $("#btnAs26").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("26");
});

$("#btnAs27").click(function () {
    $("#btnAs27").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("27");
});

$("#btnAs28").click(function () {
    $("#btnAs28").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("28");
});

$("#btnAs29").click(function () {
    $("#btnAs29").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("29");
});

$("#btnAs30").click(function () {
    $("#btnAs30").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("30");
});

$("#btnAs31").click(function () {
    $("#btnAs31").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("31");
});

$("#btnAs32").click(function () {
    $("#btnAs32").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("32");
});

$("#btnAs33").click(function () {
    $("#btnAs33").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("33");
});

$("#btnAs34").click(function () {
    $("#btnAs34").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("34");
});

$("#btnAs35").click(function () {
    $("#btnAs35").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("35");
});

$("#btnAs36").click(function () {
    $("#btnAs36").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("36");
});

$("#btnAs37").click(function () {
    $("#btnAs37").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("37");
});

$("#btnAs38").click(function () {
    $("#btnAs38").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("38");
});

$("#btnAs39").click(function () {
    $("#btnAs39").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("39");
});

$("#btnAs40").click(function () {
    $("#btnAs40").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("40");
});

$("#btnAs41").click(function () {
    $("#btnAs41").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("41");
});

$("#btnAs42").click(function () {
    $("#btnAs42").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("42");
});

$("#btnAs43").click(function () {
    $("#btnAs43").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("43");
});

$("#btnAs44").click(function () {
    $("#btnAs44").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("44");
});

$("#btnAs45").click(function () {
    $("#btnAs45").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("45");
});

$("#btnAs46").click(function () {
    $("#btnAs46").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("46");
});

$("#btnAs47").click(function () {
    $("#btnAs47").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("47");
});

$("#btnAs48").click(function () {
    $("#btnAs48").css({ 'backgroundColor': 'green' });
    asientosSeleccionados.push("48");
});

