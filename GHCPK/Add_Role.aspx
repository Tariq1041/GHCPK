<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master.master" AutoEventWireup="true" CodeFile="Add_Role.aspx.cs" Inherits="Add_Role" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
<table border="0" cellspacing="5" cellpadding="0" 
                      style="width: 100%; height: 505px">
        <tbody class="text">
            <tr>
                <td valign="top" align="left">
                    <table class="Text" height="100%" width="100%" cellspacing="0" cellpadding="0" border="0">
                        <tr>
                            <td>
                                <table width="100%" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td>
                                            <img height="1" />
                                        </td>
                                        <td class="DataHeader" bgcolor="#68713b">
                                        <h3>
                                            <asp:Label ID="lblCaption" runat="server" Font-Size="Large" Font-Bold="True" 
                                                   Font-Italic="True">Add New Role</asp:Label></h3>
                                        </td>
                                        <td class="DataRight">
                                            <img height="1" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" height="100%">
                                <table width="100%" style="height: 344px">
                                    <tbody class="Text">
                                        <tr>
                                        <td style="width: 186px" rowspan="4">
                                        
                                        <asp:Image ID="Image1" runat="server" Height="175px" 
                                                 ImageUrl="~/images/addnewRole1.jpg" Width="232px" />
                                        
                                        </td>
                                            <td style="color: Red" colspan="2">
                                                &nbsp;&nbsp;
                                                <asp:Label ID="lblError" runat="server"></asp:Label>
                                                &nbsp;
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="Left" class="style1" style="width: 215px">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Label ID="lbl_rolename" runat="server" Text="Role Name" Font-Bold="True" 
                                                    Font-Italic="True" Font-Size="Large" ForeColor="#666633"></asp:Label>
                                            </td>
                                            <td class="style3" style="width: 335px">
                                                <asp:TextBox ID="txtName" runat="server" Width="249px" Height="34px" 
                                                    onkeypress="return validatealpha(event)" ToolTip="Must Be in Alphabatic" 
                                                    BorderStyle="Ridge"></asp:TextBox>
                                            </td>
                                        </tr>
                                       
                                        <tr>
                                            <td align="left" class="style5" style="width: 215px">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                                                    ID="Label1" runat="server" Text="AvailableFunctions" Font-Bold="True" 
                                                    Font-Italic="True" Font-Size="Large" ForeColor="#003399" />
                                            </td>
                                            <td class="style6" style="width: 335px">
                                                <br />
                                                <br />
                                                <br />
                                            </td>
                                            <td align="left" class="style6">
                                                &nbsp;&nbsp;
                                                <asp:Label ID="Label2" runat="server" Text="SelectedFunctions" Font-Bold="True" 
                                                    Font-Italic="True" Font-Size="Large" ForeColor="#0033CC" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" align="right" class="style7" style="width: 215px">
                                                <asp:ListBox ID="lstAvailableServerList" runat="server" CssClass="LstBox" SelectionMode="Multiple"
                                                    Width="152px" Height="217px" ForeColor="#666633"></asp:ListBox>
                                                <asp:HiddenField ID="txthiddenID" runat="server" />
                                            </td>
                                            <td valign="top" align="center" class="style8" style="width: 335px">
                                                <table style="width: 98%; margin-left: 22; height: 212px;">
                                                
                                                    <tr>
                                                   
                                                        <td align="center" class="style4" style="height: 43px">
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <%--<asp:Button ID="btnMoveRight" runat="server" CssClass="NextPreviousButton" BackColor="#669999"
                                                                Text=">" OnClick="btnMoveRight_Click"></asp:Button>--%>
                                                            <asp:ImageButton ID="btnMoveRight" runat="server"   
                                                                OnClick="btnMoveRight_Click" ImageUrl="~/images/select role.png" 
                                                                Height="40px" Width="140px"/>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" class="style4" style="height: 43px">
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <%--<asp:Button ID="btnMoveAllRight" runat="server" CssClass="NextPreviousButton" BackColor="#669999"
                                                                Text=">>" OnClick="btnMoveAllRight_Click"></asp:Button>--%>
                                                                <asp:ImageButton ID="btnMoveAllRight"
                                                                    runat="server"  OnClick="btnMoveAllRight_Click" 
                                                                ImageUrl="~/images/select all roles.png" Height="40px" Width="140px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" class="style4">
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <%--<asp:Button ID="btnMoveLeft" runat="server" CssClass="NextPreviousButton" BackColor="#669999"
                                                                Text="<" OnClick="btnMoveLeft_Click"></asp:Button>--%>
                                                                <asp:ImageButton ID="btnMoveLeft"
                                                                    runat="server" 
                                                                ImageUrl="~/images/delet role.png" onclick="btnMoveLeft_Click1" 
                                                                Height="40px" Width="140px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" class="style4">
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <%--<asp:Button ID="btnMoveAllLeft" runat="server" CssClass="NextPreviousButton" BackColor="#669999"
                                                                Text="<<" OnClick="btnMoveAllLeft_Click"></asp:Button>--%>
                                                                <asp:ImageButton ID="btnMoveAllLeft"
                                                                    runat="server" OnClick="btnMoveAllLeft_Click" 
                                                                ImageUrl="~/images/delete all roles.png" Height="40px" Width="140px"/>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td valign="top" align="left" class="style9">
                                                <asp:ListBox ID="lstSelectedServerList" runat="server" CssClass="LstBox" SelectionMode="Multiple"
                                                    Width="160px" Height="218px" BackColor="White" ForeColor="#CC0000"></asp:ListBox>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="linkSave" runat="server" CssClass="linkWithoutUnderLine"  CausesValidation="False"
                        OnClick="linkSave_Click" ImageUrl="~/images/Save_Button.jpg" Height="30px" ToolTip="Save Role Description"
                        Width="100px"></asp:ImageButton>

                    &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="linkCancel" runat="server" CssClass="linkWithoutUnderLine" CausesValidation="False"
                        OnClick="linkCancel_Click" ImageUrl="~/images/cancel.gif" ToolTip="Cancel Role Description" 
                        Height="30px" Width="100px"></asp:ImageButton>
                </td>
            </tr>
        </tbody>
    </table>

    </form>
</asp:Content>

