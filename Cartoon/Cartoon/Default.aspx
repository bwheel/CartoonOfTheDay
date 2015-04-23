<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Cartoon.Default" MasterPageFile="~/CartoonOfTheDay.Master" %>

<%@ Register Src="~/Controls/NavigationMenu.ascx" TagPrefix="nm" TagName="NavigationMenu" %>


<asp:Content ContentPlaceHolderID="head" runat="server">
    

    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/themes/smoothness/jquery-ui.min.css" />
    
    <!-- My Javascript-->
    <script src="Scripts/Home.js"></script>
    

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
                                    Tag Search: <input type="text" id="txtBxSearch" />
                            </div>
                            <div>
                                    Day lookup: <input id="datepicker" type="text" />
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
                    <a href="https://developers.facebook.com/" >facebook</a>
                </li>
                <li>
                    <a href="https://developers.pinterest.com/">Pinterest</a>
                </li>
                <li>
                    <a href="https://dev.twitter.com/">Twitter</a>
                </li>
                <li>
                    <a href="https://developer.linkedin.com/">Linked In</a>
                </li>
                <li>
                    <a href="http://www.w3schools.com/tags/tag_address.asp">MailTo</a>
                </li>
                <li>
                    <a href="Default.aspx?ImageID=4444444">URL</a>
                </li>
            </ul>
        </div>
    </div>
</asp:Content>