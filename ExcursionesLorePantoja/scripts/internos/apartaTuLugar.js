﻿var visible = 0;
var asientosActivo1=0; var asientosActivo2=0; var asientosActivo3=0; var asientosActivo4=0; var asientosActivo5=0; var
    asientosActivo6=0; var asientosActivo7=0; var asientosActivo8=0; var asientosActivo9=0; var asientosActivo10=0; var
    asientosActivo11=0; var asientosActivo12=0; var asientosActivo13=0; var asientosActivo14=0; var asientosActivo15=0; var
    asientosActivo16=0; var asientosActivo17=0; var asientosActivo18=0; var asientosActivo19=0; var asientosActivo20=0; var
    asientosActivo21=0; var asientosActivo22=0; var asientosActivo23=0; var asientosActivo24=0; var asientosActivo25=0; var
    asientosActivo26=0; var asientosActivo27=0; var asientosActivo28=0; var asientosActivo29=0; var asientosActivo30=0; var
    asientosActivo31=0; var asientosActivo32=0; var asientosActivo33=0; var asientosActivo34=0; var asientosActivo35=0; var
    asientosActivo36=0; var asientosActivo37=0; var asientosActivo38=0; var asientosActivo39=0; var asientosActivo40=0; var
    asientosActivo41=0; var asientosActivo42=0; var asientosActivo43=0; var asientosActivo44=0; var asientosActivo45=0; var
    asientosActivo46 = 0; var asientosActivo47 = 0; var asientosActivo48 = 0;
var asientosSeleccionados = [];
Array.prototype.unique = function (a) {
    return function () {
        return this.filter(a);
    };
}
(function (a, b, c) {
    return c.indexOf(a, b + 1) < 0;
    }); 

$(document).ready(function () {
    $("#txtTotal").val(Sumar());
    $("#lblTotalNinos").html("$" + pagoNino().toString());
    $("#lblTotalAdultos").html("$" + pagoAdulto().toString());

    $("#btnCerrar").click(function () {
        $("#exampleModal").modal("hide");
    });

    $('#exampleModal').on('hidden.bs.modal', function () {
        jQuery(this).find('.modal-body').empty();
        $(".modal-body").html('<div class="alert alert-light" role="alert">' +
            '<h3 style="color:black; text-align:center;">Lugares Apartados</h3>' +
            '</div>' +
            '<div class="alert alert-primary" role="alert">' +
            '<h3 style="color:black; text-align:center;">Adultos</h3>' +
            '</div>' +
            '<h3 style="color:black; text-align:center;">' + document.getElementById('cmbAdultos').value + '</h3>' +
            '<div class="alert alert-info" role="alert">' +
            '<h3 style="color:black; text-align:center;">Niños</h3>' +
            '</div>' +
            '<h3 style="color:black; text-align:center;">' + document.getElementById('cmbNinos').value + '</h3>' +
            '<div class="alert alert-dark" role="alert">' +
            '<h3 style="color:black; text-align:center;">Total a pagar</h3>' +
            '</div>' +
            '<h3 style="color:black; text-align:center; font-weight: bold;">$' + (parseFloat(pagoAdulto()) + parseFloat(pagoNino())) + '</h3>' +
            '<div class="alert alert-dark" role="alert">' +
            '<h3 style="color:black; text-align:center;">Asientos Seleccionados</h3>' +
            '</div>' +
            '<div id="Padre"></div>');
    });
});

$("#btnSelectAsientos").click(function () {
    autobus();
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

$("#btnNiños").click(function () {
    visible++;
    if (visible % 2 === 0) {
        Ocultar();
    }
    else {
        mostrar();
    }
});

function autobus() {
    $("#tarjetaLugarViaje").css({ 'position': 'absolute', 'margin-left': '65%', 'margin-top': '1px' });
    $("#opcionesApartaTuLugar").css({ 'position': 'absolute','margin-left': '30%', 'margin-top': '5%' });
    $("#asientosAutobus").css({ 'display': 'block' });
    //style = "position: absolute; margin-left: 65%; margin-top: 1px"
    //style = "margin-top: 5%; margin-left: 100px"
}

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
    asientosActivo1++;
    if (asientosActivo1 % 2 === 0) {
        $("#btnAs1").css({ 'backgroundColor': 'transparent' });
        var index1 = asientosSeleccionados.indexOf("1");
        asientosSeleccionados.splice(index1, 1);
    }
    else {
        $("#btnAs1").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("1");
    }
});

$("#btnAs2").click(function () {
    asientosActivo2++;
    if (asientosActivo2 % 2 === 0) {
        $("#btnAs2").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("2");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs2").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("2");
    }
});

$("#btnAs3").click(function () {
    asientosActivo3++;
    if (asientosActivo3 % 2 === 0) {
        $("#btnAs3").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("3");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs3").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("3");
    }
});

$("#btnAs4").click(function () {
    asientosActivo4++;
    if (asientosActivo4 % 2 === 0) {
        $("#btnAs4").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("4");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs4").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("4");
    }
});

$("#btnAs5").click(function () {
    asientosActivo5++;
    if (asientosActivo5 % 2 === 0) {
        $("#btnAs5").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("5");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs5").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("5");
    }
});

$("#btnAs6").click(function () {
    asientosActivo6++;
    if (asientosActivo6 % 2 === 0) {
        $("#btnAs6").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("6");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs6").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("6");
    }
});

$("#btnAs7").click(function () {
    asientosActivo7++;
    if (asientosActivo7 % 2 === 0) {
        $("#btnAs7").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("7");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs7").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("7");
    }
});

$("#btnAs8").click(function () {
    asientosActivo8++;
    if (asientosActivo8 % 2 === 0) {
        $("#btnAs8").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("8");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs8").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("8");
    }
});

$("#btnAs9").click(function () {
    asientosActivo9++;
    if (asientosActivo9 % 2 === 0) {
        $("#btnAs9").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("9");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs9").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("9");
    }
});

$("#btnAs10").click(function () {
    asientosActivo10++;
    if (asientosActivo10 % 2 === 0) {
        $("#btnAs10").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("10");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs10").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("10");
    }
});

$("#btnAs11").click(function () {
    asientosActivo11++;
    if (asientosActivo11 % 2 === 0) {
        $("#btnAs11").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("11");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs11").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("11");
    }
});

$("#btnAs12").click(function () {
    asientosActivo12++;
    if (asientosActivo12 % 2 === 0) {
        $("#btnAs12").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("12");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs12").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("12");
    }
});

$("#btnAs13").click(function () {
    asientosActivo13++;
    if (asientosActivo13 % 2 === 0) {
        $("#btnAs13").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("13");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs13").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("13");
    }
});

$("#btnAs14").click(function () {
    asientosActivo14++;
    if (asientosActivo14 % 2 === 0) {
        $("#btnAs14").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("14");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs14").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("14");
    }
});

$("#btnAs15").click(function () {
    asientosActivo15++;
    if (asientosActivo15 % 2 === 0) {
        $("#btnAs15").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("15");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs15").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("15");
    }
});

$("#btnAs16").click(function () {
    asientosActivo16++;
    if (asientosActivo16 % 2 === 0) {
        $("#btnAs16").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("16");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs16").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("16");
    }
});

$("#btnAs17").click(function () {
    asientosActivo17++;
    if (asientosActivo17 % 2 === 0) {
        $("#btnAs17").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("17");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs17").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("17");
    }
});

$("#btnAs18").click(function () {
    asientosActivo18++;
    if (asientosActivo18 % 2 === 0) {
        $("#btnAs18").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("18");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs18").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("18");
    }
});

$("#btnAs19").click(function () {
    asientosActivo19++;
    if (asientosActivo19 % 2 === 0) {
        $("#btnAs19").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("19");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs19").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("19");
    }
});

$("#btnAs20").click(function () {
    asientosActivo20++;
    if (asientosActivo20 % 2 === 0) {
        $("#btnAs20").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("20");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs20").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("20");
    }
});

$("#btnAs21").click(function () {
    asientosActivo21++;
    if (asientosActivo21 % 2 === 0) {
        $("#btnAs21").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("21");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs21").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("21");
    }
});

$("#btnAs22").click(function () {
    asientosActivo22++;
    if (asientosActivo22 % 2 === 0) {
        $("#btnAs22").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("22");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs22").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("22");
    }
});

$("#btnAs23").click(function () {
    asientosActivo23++;
    if (asientosActivo23 % 2 === 0) {
        $("#btnAs23").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("23");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs23").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("23");
    }
});

$("#btnAs24").click(function () {
    asientosActivo24++;
    if (asientosActivo24 % 2 === 0) {
        $("#btnAs24").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("24");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs24").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("24");
    }
});

$("#btnAs25").click(function () {
    asientosActivo25++;
    if (asientosActivo25 % 2 === 0) {
        $("#btnAs25").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("25");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs25").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("25");
    }
});

$("#btnAs26").click(function () {
    asientosActivo26++;
    if (asientosActivo26 % 2 === 0) {
        $("#btnAs26").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("26");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs26").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("26");
    }
});

$("#btnAs27").click(function () {
    asientosActivo27++;
    if (asientosActivo27 % 2 === 0) {
        $("#btnAs27").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("27");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs27").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("27");
    }
});

$("#btnAs28").click(function () {
    asientosActivo28++;
    if (asientosActivo28 % 2 === 0) {
        $("#btnAs28").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("28");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs28").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("28");
    }
});

$("#btnAs29").click(function () {
    asientosActivo29++;
    if (asientosActivo29 % 2 === 0) {
        $("#btnAs29").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("29");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs29").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("29");
    }
});

$("#btnAs30").click(function () {
    asientosActivo30++;
    if (asientosActivo30 % 2 === 0) {
        $("#btnAs30").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("30");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs30").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("30");
    }
});

$("#btnAs31").click(function () {
    asientosActivo31++;
    if (asientosActivo31 % 2 === 0) {
        $("#btnAs31").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("31");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs31").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("31");
    }
});

$("#btnAs32").click(function () {
    asientosActivo32++;
    if (asientosActivo32 % 2 === 0) {
        $("#btnAs32").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("32");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs32").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("32");
    }
});

$("#btnAs33").click(function () {
    asientosActivo33++;
    if (asientosActivo33 % 2 === 0) {
        $("#btnAs33").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("33");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs33").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("33");
    }
});

$("#btnAs34").click(function () {
    asientosActivo34++;
    if (asientosActivo34 % 2 === 0) {
        $("#btnAs34").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("34");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs34").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("34");
    }
});

$("#btnAs35").click(function () {
    asientosActivo35++;
    if (asientosActivo35 % 2 === 0) {
        $("#btnAs35").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("35");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs35").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("35");
    }
});

$("#btnAs36").click(function () {
    asientosActivo36++;
    if (asientosActivo36 % 2 === 0) {
        $("#btnAs36").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("36");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs36").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("36");
    }
});

$("#btnAs37").click(function () {
    asientosActivo37++;
    if (asientosActivo37 % 2 === 0) {
        $("#btnAs37").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("37");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs37").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("37");
    }
});

$("#btnAs38").click(function () {
    asientosActivo38++;
    if (asientosActivo38 % 2 === 0) {
        $("#btnAs38").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("38");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs38").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("38");
    }
});

$("#btnAs39").click(function () {
    asientosActivo39++;
    if (asientosActivo39 % 2 === 0) {
        $("#btnAs39").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("39");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs39").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("39");
    }
});

$("#btnAs40").click(function () {
    asientosActivo40++;
    if (asientosActivo40 % 2 === 0) {
        $("#btnAs40").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("40");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs40").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("40");
    }
});

$("#btnAs41").click(function () {
    asientosActivo41++;
    if (asientosActivo41 % 2 === 0) {
        $("#btnAs41").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("41");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs41").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("41");
    }
});

$("#btnAs42").click(function () {
    asientosActivo42++;
    if (asientosActivo42 % 2 === 0) {
        $("#btnAs42").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("42");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs42").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("42");
    }
});

$("#btnAs43").click(function () {
    asientosActivo43++;
    if (asientosActivo43 % 2 === 0) {
        $("#btnAs43").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("43");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs43").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("43");
    }
});

$("#btnAs44").click(function () {
    asientosActivo44++;
    if (asientosActivo44 % 2 === 0) {
        $("#btnAs44").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("44");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs44").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("44");
    }
});

$("#btnAs45").click(function () {
    asientosActivo45++;
    if (asientosActivo45 % 2 === 0) {
        $("#btnAs45").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("45");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs45").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("45");
    }
});

$("#btnAs46").click(function () {
    asientosActivo46++;
    if (asientosActivo46 % 2 === 0) {
        $("#btnAs46").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("46");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs46").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("46");
    }
});

$("#btnAs47").click(function () {
    asientosActivo47++;
    if (asientosActivo47 % 2 === 0) {
        $("#btnAs47").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("47");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs47").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("47");
    }
});

$("#btnAs48").click(function () {
    asientosActivo48++;
    if (asientosActivo48 % 2 === 0) {
        $("#btnAs48").css({ 'backgroundColor': 'transparent' });
        var index = asientosSeleccionados.indexOf("48");
        asientosSeleccionados.splice(index, 1);
    }
    else {
        $("#btnAs48").css({ 'backgroundColor': 'green' });
        asientosSeleccionados.push("48");
    }
});

$("#btnConfirmar").click(function () {
    $(".modal-body").html('<div class="alert alert-light" role="alert">' +
        '<h3 style="color:black; text-align:center;">Lugares Apartados</h3>' +
        '</div>' +
        '<div class="alert alert-primary" role="alert">' +
        '<h3 style="color:black; text-align:center;">Adultos</h3>' +
        '</div>' +
        '<h3 style="color:black; text-align:center;">' + document.getElementById('cmbAdultos').value + '</h3>' +
        '<div class="alert alert-info" role="alert">' +
        '<h3 style="color:black; text-align:center;">Niños</h3>' +
        '</div>' +
        '<h3 style="color:black; text-align:center;">' + document.getElementById('cmbNinos').value + '</h3>' +
        '<div class="alert alert-dark" role="alert">' +
        '<h3 style="color:black; text-align:center;">Total a pagar</h3>' +
        '</div>' +
        '<h3 style="color:black; text-align:center; font-weight: bold;">$' + (parseFloat(pagoAdulto()) + parseFloat(pagoNino())) + '</h3>' +
        '<div class="alert alert-dark" role="alert">' +
        '<h3 style="color:black; text-align:center;">Asientos Seleccionados</h3>' +
        '</div>' +
        '<div id="Padre"></div>');
    $("#exampleModal").modal("show");
    for (var i = 0; i < asientosSeleccionados.length; i++) {
        var asiento = '<button type="button" class="btn btn-primary"><h4>Asiento <span class="badge badge-light">' + asientosSeleccionados.unique()[i] + '</span></h4></button>';
        $("#Padre").append(asiento);
    }
    var Json = JSON.stringify(asientosSeleccionados.unique());
    document.cookie = 'Prueba=' + Json + ';';
});

function sendDataAjax() {

    $.ajax({
        type: "POST",
        url: "apartaTuLugar.aspx/asientos",
        data: null,
        contentType: "application/json; charset=utf-8",
        error: function (xhr, ajaxOptions, thrownError) {
            console.log(xhr.status + " \n" + xhr.responseText, "\n" + thrownError);
        },
        success: function (data) {
            console.log(data.d);
            addRowDT(data.d);
        }

    });
}