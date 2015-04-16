<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Cartoon.Default" MasterPageFile="~/CartoonOfTheDay.Master" %>

<%@ Register Src="~/Controls/NavigationMenu.ascx" TagPrefix="nm" TagName="NavigationMenu" %>


<asp:Content ContentPlaceHolderID="head" runat="server">
    
    <script src="Scripts/jquery-2.1.3.js"></script>
    <link href="Scripts/main.css" rel="stylesheet" />
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
    <style type="text/css">
        #txtTitle {
            margin-bottom: 0px;
        }
    </style>
</asp:Content>

<asp:Content ContentPlaceHolderID="CenterContent" runat="server">
    
    <div>
        <div id="divNav">
            <ul class="navMenu">
                <li>
                    <a href="Default.aspx">Home</a>
                </li>
                <li>
                    <a href="Cartoons.aspx">Cartoons</a>
                </li>
                <li>
                    <a href="About.aspx">About</a>
                </li>
                <li>
                    <a href="Contact.aspx">Contact</a>
                </li>
            </ul>
        </div>

        <div id="CartoonContent">
            <div id="CartoonSearch"> 
                <div class="left">
                    <img id="imgArrowLeft" src="Images/left-arrow.png" />
                </div>
                <div class="center">
                    <table>
                        <tr>
                            <td>
                                Search: <input type="text" id="txtBxSearch" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Calendar: <input type="button" id="btnCalendar" title="Calendar" />
                            </td>
                        </tr>
                    </table>
                    
                    
                </div>
                <div class="right">
                    <img id="imgArrowRight2" src="Images/right-arrow.png" />

                </div>
                <!--
                <table>
                    <tr>
                        <td rowspan="2">
                            <button id="btnPrevious" type="button">Previous</button>
                        </td>
                        <td>
                            
                        </td>
                        <td rowspan="2">
                            
                            <button id="btnNext" type="button" >Next</button>
                        </td>
                    </tr>
                    <td>
                        <button id="btnCalendar" type="button" >Date</button>
                    </td>
                    </table>
                -->
            </div>
            <div id="CartoonItself">
                <img id="imgCartoon" src="defaultEmptyPicture.png" style="max-height:400px; max-width:400px;" /> <!-- todo  image dynamically pulled from AJAX -->
            </div>
        </div>
        <div id="Share">
            <ul>
                <li>
                    <p>facebook</p>
                </li>
                <li>
                    <p>Pinterest</p>
                </li>
                <li>
                    <p>Twitter</p>
                </li>
                <li>
                    <p>Linked In</p>
                </li>
                <li>
                    <p>MailTo</p>
                </li>
                <li>
                    <p>URL</p>
                </li>
            </ul>
        </div>

    </div>
    <!--
    <div>
        Entry 1: <input type="text" id="txtBxEntry1" /> <br />
        Entry 2: <input type="text" id="txtBxEntry2" /> <br />
        <input type="button" id="btnSubmit" value="Post to server for response."/>
    </div>
    <div id="AjaxResponse">

    </div>
    -->
</asp:Content>