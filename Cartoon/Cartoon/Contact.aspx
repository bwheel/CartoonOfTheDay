<%@ Page Title="" Language="C#" MasterPageFile="~/CartoonOfTheDay.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Cartoon.Contact" %>

<%@ Register Src="~/Controls/NavigationMenu.ascx" TagPrefix="uc1" TagName="NavigationMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CenterContent" runat="server">
    <div>
        <div id="divNav">
            <uc1:NavigationMenu runat="server" ID="NavigationMenu" />
        </div>
        <div>
            <p>Email:</p>
            <p>Website:</p>
            <p>Portfolio link:</p>
            <p>Facebook link:</p>
            <p>Phone number:</p>
        </div>
    </div>
</asp:Content>
