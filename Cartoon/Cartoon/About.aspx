<%@ Page Title="" Language="C#" MasterPageFile="~/CartoonOfTheDay.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Cartoon.About" %>

<%@ Register Src="~/Controls/NavigationMenu.ascx" TagPrefix="uc1" TagName="NavigationMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CenterContent" runat="server">
    <div>
        <div id="divNav">
            <uc1:NavigationMenu runat="server" ID="NavigationMenu" />
        </div>
        <div>
            <p id="what is cartoon of the day"></p>
            <p id="Who does cartoon of the day"></p>
            <p id="Type of freelance work available"></p>
            <p id="links to different forms of contact."></p>

        </div>
    </div>
</asp:Content>
