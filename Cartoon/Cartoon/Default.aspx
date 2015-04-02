<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Cartoon.Default" MasterPageFile="~/CartoonOfTheDay.Master" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <script>
        $(document).ready(function () {

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

    </script>
</asp:Content>

<asp:Content ContentPlaceHolderID="CenterContent" runat="server">
    
    


    <div>
        Entry 1: <input type="text" id="txtBxEntry1" /> <br />
        Entry 2: <input type="text" id="txtBxEntry2" /> <br />
        <input type="button" id="btnSubmit" value="Post to server for response."/>
    </div>
    <div id="AjaxResponse">

    </div>
</asp:Content>