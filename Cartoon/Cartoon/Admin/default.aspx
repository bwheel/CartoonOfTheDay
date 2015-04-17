<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Cartoon.Admin._default"  MasterPageFile="~/CartoonOfTheDay.Master"%>


<asp:Content ContentPlaceHolderID="head" runat="server">
    
    <title>Cartoon of the day Admin</title>
    <link href="Scripts/admin.css" rel="stylesheet" />

</asp:Content>

<asp:Content ContentPlaceHolderID="CenterContent" runat="server">
    <div id="content">
        <asp:Panel ID="pnlControl" runat="server" Visible="true">
            <ul id="controlMenu">
                <li>                
                    <asp:Button ID="btnShowUpload" runat="server" Text="Upload"  OnClick="btnShowUpload_Click"/>
                </li>
                <li>
                    <asp:Button ID="btnShowDownload" runat="server" Text="Download" OnClick="btnShowDownload_Click" />
                </li>
                <li>
                    <asp:Button ID="btnShowView" runat="server" Text="View" OnClick="btnShowView_Click"/>
                </li>
                <li>
                    <asp:Button ID="btnShowRemove" runat="server" Text="Remove" OnClick="btnShowRemove_Click"/>
                </li>
            </ul>
        </asp:Panel>
        <asp:Panel ID="pnlUpload" runat="server" Visible="false">
            <h3>Upload new cartoon</h3>
            <p>Step 1: Pick a day.</p>
            <p>Step 2: Upload file.</p>
            <%--<p>--%>Click Save button.</p>
            <br />
            <asp:Calendar runat="server" ID="calUpload"  ></asp:Calendar> 
            <br />
            <fieldset >
                <legend>File upload</legend>
                <asp:FileUpload ID="fileCartoonUpload" runat="server" />
            </fieldset>
            <br /> 
            <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
        </asp:Panel>
        <asp:Panel ID="pnlDownload" runat="server" Visible="false">
            <h3>Download cartoon</h3>
            <p>Step 1: Select Day from calendar or cartoon title from check box list.</p>
            <p>Step 2: Click Download button.</p>
            <br />
            <asp:Calendar ID="calDownloadCartoon" runat="server"></asp:Calendar>
            <br />
            <asp:CheckBoxList ID="ckBxDownloadCartoon" runat="server" ></asp:CheckBoxList>
            <br />
            <asp:Button ID="btnDownload" runat="server" Text="Download" OnClick="btnDownload_Click" />
        </asp:Panel>
        <asp:Panel ID="pnlView" runat="server" Visible="false">
            <h3>View cartoon</h3>
            <p>Step 1: Select Day from calendar or cartoon title from check box list.</p>
            <p>Step 2: Click View button.</p>
            <br />
            <asp:Calendar ID="calViewCartoon" runat="server"></asp:Calendar>
            <br />
            <asp:CheckBoxList ID="ckBxViewCartoon" runat="server" ></asp:CheckBoxList>
            <br />
            <asp:Button ID="btnView" runat="server" text="View" OnClick="btnView_Click" />
        </asp:Panel>
        <asp:Panel ID="pnlRemove" runat="server" Visible="false">
            <h3>Remove cartoon</h3>
            <p>Step 1: Select Day from calendar or cartoon title from check box list.</p>
            <p>Step 2: Click Remove button.</p>
            <br />
            <asp:Calendar ID="calRemoveCartoon" runat="server"></asp:Calendar>
            <br />
            <asp:CheckBoxList ID="ckBxRemoveCartoon" runat="server" ></asp:CheckBoxList>
            <br />
            <asp:Button ID="btnRemove" runat="server" Text="Remove" OnClick="btnRemove_Click" />
        </asp:Panel>
    <!--
        add control bar for every type of action
        1. Upload
            a. Pick a day.
            b. Give cartoon a title.
            c. Choose file to upload.
        2. View
            a1. Pick a day
            a2. Pick a title
            b. View the file
            
        3. Remove
            a1. Pick a day
            a2. Pick a title
            b. Remove the file
            
        4. Download
            a1. Pick a day
            a2. Pick a title
            b. Download the file
            
        -->
    </div>
</asp:Content>
