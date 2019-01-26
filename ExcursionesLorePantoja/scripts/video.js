function addRowDT(data)
{
    //var tabla = $("#tableGr").DataTable();
    for (var i = 0; i < data.length; i++)
    {
        $("#tableGr").dataTable().fnAddData([
            data[i].Nombre,
            data[i].Estado,
            data[i].Url
        ]);
    }
}

function sendDataAjax() {

    $.ajax({
        type: "POST",
        url: "PrincipalVideo.aspx/ListVideos",
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

//Llamando a la funcion de ajax
sendDataAjax();