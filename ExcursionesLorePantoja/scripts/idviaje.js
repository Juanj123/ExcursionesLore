$(document).on('click','.btnIdViaje', function (e) {
    e.preventDefault();

    var value= $(this).attr("data-id");

    if (value !== null)
    {
        
        sendIdViaje(value);
    }
    

    

});


function sendIdViaje(data) {
    var obj = JSON.stringify({ idViaje: data });

    $.ajax({
        type: "POST",
        url: "ViajesUsers.aspx/setIdViaje",
        data: obj,
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        error: function (xhr, ajaxOptions, thrownError) {
            console.log(xhr.status + " \n" + xhr.responseText, "\n" + thrownError);
        },
        success: function (response) {
            if (response.d) {
                alert("Video actualizado correcto");
            } else {
                alert("Error al actualizar");

            }
        }

    });
}
//function sendIdViaje(data) {
//    alert(data);
//    $.ajax({
//        type: "POST",
//        url: "/",
//        data: data,
//        contentType: "application/json; charset=utf-8",
//        dataType: "json",
//        error: function (xhr, ajaxOptions, thrownError) {
//            console.log(xhr.status + " \n" + xhr.responseText, "\n" + thrownError);
//        },
//        success: function (data) {
//            console.log(data.d);

//        }

//    });
//}
