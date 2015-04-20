$(document).ready(function () {

    $('#datetimepicker').datetimepicker(
        {
            dateFormat: 'yy-mm-dd',
            dateonly: true,
            timeFormat: ''
        });

    $('#divPrevious').click(function (e) {
        alert("left click");
    });


    $('#divNext').click(function (e) {
        alert("right click");
    });


    $("#btnSubmit").click(function () {

        // TODO: I tried to be dynamic and make my JSON, but I ran out of debug patience to figure out how to add it.
        var entry1 = $("#txtBxEntry1").val();
        var entry2 = $("#txtBxEntry2").val();

        var parameters =
            {
                "param1": entry1,
                "param2": entry2
            };


        $.ajax({
            type: "POST",
            url: "WebService1.asmx/HelloWorld",//"Cartoons.aspx/GetCartoon",
            data: "{'param1':'" + $("#txtBxEntry1").val() + "', 'param2':'" + $("#txtBxEntry2").val() + "'}", // Pass in the parameters as the data.
            dataType: "json",
            contentType: "application/json; charset=utf-8",
            success: function (result) {
                // TODO: it will return something in result.d (i don't know what the 'd' is.
                alert(result.d);
                $("#AjaxResponse").html("<h3>" + result.d + "</h3>");
            },
            error: function (xhr, status, error) {
                alert("Error we messed up with something " + status + " " + error);
            }
        });
    });
});
