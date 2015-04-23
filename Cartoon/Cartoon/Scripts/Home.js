$(document).ready(function () {
    
    /* 
        On browser ready...
        1. Check for Query String in URL.
        2. Use today's date if no query string.
        3. Request images(and image properties) via Ajax
        4. Show loading icon until the stuff arrives.
        5. Show cartoon images.
    */
    

    $("#datepicker").datepicker();

    /* On get previous image click
        1. Check for image in list
        
        2a. Display that image
        3a. If less than 3 left in the list, start Ajax for more images.

        2b. Start Ajax call for more images
        3b. Display that image.

        3c. If there are no previous images notify user.
    */
    $('#divPrevious').click(function (e) {
        alert("left click");
    });

    $('#divNext').click(function (e) {
        alert("right click");
    });

    /*test ajax */ 
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
