<%@ Page Title="" Language="C#" MasterPageFile="~/LoginMaster.master" AutoEventWireup="true" CodeFile="Test Mail.aspx.cs" Inherits="Test_Mail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">

<div>
        <table>
            <tr>
                <td>From : </td>
                <td><asp:TextBox ID="txtFrom" runat="server" Width="148px"></asp:TextBox>@gmail.com</td>
            </tr>
            <tr>
                <td>Password : </td>
                <td><asp:TextBox ID="txtPassword" runat="server" Width="148px" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td>To : </td>
                <td><asp:TextBox ID="txtTo" runat="server" Width="200px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Subject : </td>
                <td><asp:TextBox ID="txtSubject" runat="server" Width="200px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Message : </td>
                <td><asp:TextBox ID="txtMessage" runat="server" Width="200px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Attachment : </td>
                <td><asp:FileUpload ID="FileUpload1" runat="server" /></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Button ID="btnSend" runat="server" Text="Send Mail" OnClick="btnSend_Click" /></td>
            </tr>
        </table>
    </div>


</form>
</asp:Content>

