<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Cartoon.Default" MasterPageFile="~/CartoonOfTheDay.Master" %>

<%@ Register Src="~/Controls/NavigationMenu.ascx" TagPrefix="nm" TagName="NavigationMenu" %>


<asp:Content ContentPlaceHolderID="head" runat="server">
    
    <script src="Scripts/jquery-2.1.3.js"></script>
    <script src="Scripts/Home.js" type="text/javascript"></script>
    <link href="Scripts/dateTimePicker/jquery.datetimepicker.css" rel="stylesheet" />
    <script src="Scripts/dateTimePicker/jquery.js"></script>
    <script src="Scripts/dateTimePicker/jquery.datetimepicker.js"></script>
</asp:Content>

<asp:Content ContentPlaceHolderID="CenterContent" runat="server">
    
    <div>
        <div id="CartoonContent">
            <div id="CartoonSearch"> 
                <ul>
                    <li>
                        <div id="divPrevious">
                            <img id="imgArrowLeft" src="Images/left-arrow.png" height="20" width="20"/>
                        </div>
                    </li>
                    <li>
                        <div id="divNext">
                            <img id="imgArrowRight2" src="Images/right-arrow.png" height="20" width="20"/>
                        </div>
                    </li>
                    <li>
                        <div>
                            <div>
                                    Search: <input type="text" id="txtBxSearch" />
                            </div>
                            <div>
                                    Calendar: <input id="datetimepicker" type="text" />
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <div id="CartoonHeader">
                <ul>
                    <li>
                        <div id="CartoonTitle"><p>Title</p></div>
                    </li>
                    <li>
                        <div id="CartoonDate"><p>Date</p></div>
                    </li>
                </ul>
            </div>

            <div id="CartoonImage">
                <img id="imgCartoon" src="/Images/Cartoons/B01.png" style="max-height:725px; max-width:725px;" /> <!-- todo  image dynamically pulled from AJAX -->
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