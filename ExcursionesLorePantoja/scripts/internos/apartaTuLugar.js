var visible = 0;
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
    alert(visible.toString());
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

