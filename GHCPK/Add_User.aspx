<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master.master" AutoEventWireup="true" CodeFile="Add_User.aspx.cs" Inherits="Add_User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <form id="form1" runat="server">


<table border="0" cellspacing="5" cellpadding="0" style="width: 100%; height: 100%">
        <tbody class="text">
            <tr>
                <td valign="top" align="left">
                    <table class="Text" height="100%" width="100%" cellspacing="0" cellpadding="0" border="0">
                        <tr>
                            <td>
                                <table width="100%" cellpadding="0" cellspacing="0">
                                   
                                    <tr>
                                       
                                      
                                        
                                        <td class="DataHeader" bgcolor="#68713b">
                                           <h3> <asp:Label ID="lblCaption" runat="server" Font-Size="Large" Font-Bold="True" 
                                                   Font-Italic="True" >Add New User</asp:Label></h3>
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
                                <table width="100%" style="height: 202px">
                                    <tbody class="Text">
                                        <tr>

                                        <td style="width: 330px">
                                        
                                        
                                        </td>
                                            <td style="color: Red" colspan="2">
                                                <asp:Label ID="lblError" runat="server"></asp:Label>
                                                &nbsp;<br />
                                                </td>

                                        </tr>
                                        
                                        <tr>
                                         <td rowspan="6" style="width: 330px">
                                        
                                        
                                             <asp:Image ID="Image1" runat="server" Height="175px" 
                                                 ImageUrl="~/images/add User.jpg" Width="275px" />
                                        
                                        
                                        </td>
                                            <td align="Left" class="style1" style="width: 297px">
                                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Label ID="lblRole" runat="server" Text="Role" BackColor="White" 
                                                     Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#666633"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="drpRolesList" CssClass="Text" runat="server" 
                                                    AutoPostBack="true" AppendDataBoundItems="true"
                                                    Height="32px" Width="255px" ToolTip="Select Role From Given Option" 
                                                    BackColor="#CCCCCC" ForeColor="Black">
                                                </asp:DropDownList>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="Left" class="style1" style="width: 297px">
                                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                               <asp:Label ID="lbl_name" runat="server" Text="Name" Font-Bold="True" 
                                                    Font-Italic="True" Font-Size="Large" ForeColor="#666633"></asp:Label> 
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtname" runat="server" Width="248px" Height="32px" 
                                                    ToolTip="Enter Alphabatic Only" onkeypress="return validatealpha(event)" 
                                                    BorderColor="Silver" BorderStyle="Ridge" ForeColor="Black"></asp:TextBox>
                                                <br />
                                            </td>
                                        </tr>


                                        





                                        <tr>
                                            <td align="Left" class="style1" style="width: 297px">
                                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Label ID="lbl_password" runat="server" Text="Password" Font-Bold="True" 
                                                    Font-Italic="True" Font-Size="Large" ForeColor="#666633"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox TextMode="Password" ID="txtPasword" runat="server" Width="249px" 
                                                    Height="32px" ToolTip="Enter Password"
                                                    onkeypress="return validatealphanumeric(event)" BorderColor="Silver" 
                                                    BorderStyle="Ridge" ViewStateMode="Enabled"></asp:TextBox>
                                                <br />
                                            </td>
                                        </tr>
                                        

                                        <tr>
                                            <td align="Left" class="style1" style="width: 297px">
                                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                               <asp:Label ID="lbl_city" runat="server" Text="City" Font-Bold="True" 
                                                    Font-Italic="True" Font-Size="Large" ForeColor="#666633"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_city" runat="server" Width="248px" Height="32px" 
                                                    ToolTip="Enter Alphabatic Only" BorderColor="Silver" BorderStyle="Ridge"></asp:TextBox>
                                                <br />
                                            </td>
                                        </tr>

                                         <tr>
                                            <td align="Left" class="style1" style="width: 297px">
                                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Label ID="lbl_country" runat="server" Text="Country" Font-Bold="True" 
                                                    Font-Italic="True" Font-Size="Large" ForeColor="#666633"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_country" runat="server" Width="248px" Height="32px" 
                                                    ToolTip="Enter Alphabatic Only" BorderColor="Silver" BorderStyle="Ridge"></asp:TextBox>
                                                <br />
                                            </td>
                                        </tr>

                                        <tr>
                                            <td align="Left" class="style1" style="width: 297px">
                                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                               <asp:Label ID="lbl_phone" runat="server" Text="Phone #" Font-Bold="True" 
                                                    Font-Italic="True" Font-Size="Large" ForeColor="#666633"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_phone" runat="server" Width="248px" Height="32px" 
                                                    ToolTip="Enter Numeric Only" BorderColor="Silver" BorderStyle="Ridge"></asp:TextBox>
                                                <br />
                                            </td>
                                        </tr>

                                        <tr>
                                         <td style="width: 330px">
                                        
                                        
                                        </td>
                                            <td align="Left" class="style1" style="width: 297px">
                                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                               <asp:Label ID="lbl_mail" runat="server" Text="Email ID" Font-Bold="True" 
                                                    Font-Italic="True" Font-Size="Large" ForeColor="#666633"></asp:Label> 
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_mail" runat="server" Width="248px" Height="32px" 
                                                    BorderColor="Silver" BorderStyle="Ridge" ></asp:TextBox>
                                                <br />
                                            </td>
                                        </tr>

                                        <tr>
                                         <td style="width: 330px">
                                        
                                        
                                        </td>
                                            <td align="left" class="style1" style="width: 297px">
                                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lbl_id_name" Text="User" 
                                                    ForeColor="Green" Font-Bold="True" Font-Size="Medium" runat="server" 
                                                    Visible="False"></asp:Label>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
                                                <asp:Label ID="lbl_id_role" Text="Role id" runat="server" ForeColor="Green" 
                                                    Font-Bold="True" Font-Size="Medium" Visible="False"></asp:Label>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                                &nbsp;
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                         <td style="width: 330px">
                                        
                                        
                                        </td>
                                            <td class="style3" style="width: 297px" >
                                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Label ID="lbl_userid" runat="server" Text="User ID" Visible="False" 
                                                    Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#666633" ></asp:Label>
                                            </td>
                                            <td class="style2">
                                                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="lbl_id_nametxt" Text="user" 
                                                    runat="server" Visible="False"></asp:Label>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                                <asp:Label ID="lbl_id_namerole" Text="-" runat="server" Visible="False"></asp:Label>  &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                                <asp:Label ID="lbl_id_roletxt" Text="roleid" runat="server" Visible="False"></asp:Label>  &nbsp;&nbsp;&nbsp; &nbsp;
                                                <%--<asp:TextBox ID="txtrolno" runat="server" Width="45px" Height="20px" AutoPostBack="true"></asp:TextBox>--%>
                                                </td>
                                        </tr>


                                        <tr>
                                            <td style="width: 330px">
                                            </td>
                                         <td style="width: 297px">
                                        
                                        
                                        </td>

                                        <td></td>
                                        </tr>
                                        <tr>
                                            <td class="style3" style="width: 330px" >
                                                &nbsp;</td>
                                            <td class="style2" style="width: 297px">
                                                
                                                       <td><asp:Label id="lbl_id" runat="server" ForeColor="Green" Font-Bold="True" 
                                                    Font-Size="Medium" Visible="False" ></asp:Label>
                                                &nbsp; <asp:Label id="lbl_bar" runat="server" Text="-" Visible="False"></asp:Label>
                                                <asp:TextBox ID="txt_idplus" runat="server"  
                                                    onkeypress="return validatenumeric(event)" MaxLength="3" Visible="False" 
                                                    BorderColor="Silver" BorderStyle="Ridge" Width="185px" ></asp:TextBox></td>
                                                       &nbsp;
                                                       </td>
                                        </tr>
                                        <tr>
                                            <td class="style1" style="width: 330px">
                                                <asp:HiddenField ID="txthiddenID" runat="server" />
                                                <br />
                                                <br />
                                            </td>
                                            <td style="color: Red; width: 297px;">
                                                <asp:Label ID="lblError2" runat="server" Font-Bold="True" 
                                                    Font-Size="Large"></asp:Label></td>
                                        </tr>
                                       
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
                    

                     <asp:ImageButton ID="img_next" runat="server" CssClass="linkWithoutUnderLine" 
                        ImageUrl="~/images/next.gif" Height="30px" ToolTip="Next"
                        Width="100px" onclick="img_next_Click"></asp:ImageButton>
                   <asp:ImageButton ID="img_back" runat="server"  Height="30px" Width="100px" 
                        ImageUrl="~/images/back.gif" Visible="False" 
                        onclick="img_back_Click" ImageAlign="Left" ></asp:ImageButton>
                        &nbsp;&nbsp;
                     
                     &nbsp;&nbsp;&nbsp;

                    <asp:ImageButton ID="linkSave" runat="server" CssClass="linkWithoutUnderLine" 
                        OnClick="linkSave_Click" ImageUrl="~/images/Save_Button.jpg" Height="30px" ToolTip="Save"
                        Width="100px" Visible="False"></asp:ImageButton>
                        &nbsp;&nbsp;
                           &nbsp;&nbsp;&nbsp;
                     <asp:ImageButton ID="linkreset" runat="server" 
                        CssClass="linkWithoutUnderLine"  ToolTip="Reset"
                       ImageUrl="~/images/Reset_Button.jpg" Height="30px" Width="100px" onclick="linkreset_Click" 
                        ></asp:ImageButton>

                </td>
            </tr>
        </tbody>
    </table>


    </form>


</asp:Content>

