<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin_Contactus.aspx.cs" Inherits="Admin_Contactus" %>

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
                                        
                                        <%--<td class="DataHeader" style="color:#0666">
                                           <h3> <asp:Label ID="lblCaption" runat="server" Font-Size="X-Large" 
                                                   BorderColor="#333333" Font-Bold="True" Font-Italic="True">Add New News</asp:Label></h3>
                                        </td>--%>
                                        <td class="DataHeader" bgcolor="#68713b">
                                        <h3>
                                            <asp:Label ID="lblCaption" runat="server" Font-Size="Large" Font-Bold="True" 
                                                   Font-Italic="True" Text="Contact Us"></asp:Label></h3>
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

                                        <td style="width: 249px" rowspan="15">
                                            <asp:Image ID="Image1" runat="server" Height="256px" 
                                                ImageUrl="~/images/contactus.jpg" Width="236px" />
                                            </td>
                                            <td style="color: Red" colspan="2">
                                                &nbsp;<br />
                                                </td>
                                        </tr>
                                        
                                        <tr>  
                                            <td align="Left" class="style1" style="width: 287px">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
                                            </td>
                                            <td>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>  
                                            <td align="Left" class="style1" style="width: 287px; height: 30px;">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                               <asp:Label ID="lbl_fname" runat="server" Text="First Name" Font-Bold="True" 
                                                    Font-Italic="True" Font-Size="Large"></asp:Label>
                                            </td>
                                            <td style="height: 30px">
                                                <asp:TextBox ID="txt_fname" runat="server" Width="382px" Height="33px" 
                                                    ToolTip="Enter Alphanumeric Only" BorderColor="Silver" BorderStyle="Inset" 
                                                    Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#006600"></asp:TextBox>
                                                <br />
                                            </td>
                                        </tr>

                                                                               

                                        <tr>  
                                            <td align="Left" class="style1" style="width: 287px">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                            </td>
                                            <td>
                                                <br />
                                            </td>
                                        </tr>

                                         <tr>  
                                            <td align="Left" class="style1" style="width: 287px; height: 6px;">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Label ID="lbl_lname" runat="server" Text="Last Name" 
                                                    BorderColor="Silver" Font-Bold="True" Font-Italic="True" Font-Size="Large"></asp:Label>
                                            &nbsp;</td>
                                            <td style="height: 6px">
                                                <asp:TextBox ID="txt_lname" runat="server" Width="382px" Height="40px"
                                                    ToolTip="Enter Alphanumeric Only" BorderColor="Silver" BorderStyle="Inset" 
                                                    Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#006600"></asp:TextBox>
                                                    
                                                <br />
                                            </td>
                                        </tr>

                                        <tr>  
                                        
                                        <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                        </tr>

                                        <tr>  
                                        
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lbl_email" runat="server" Text="E-mail Id" 
                                                             Font-Bold="True" Font-Italic="True" Font-Size="Large"></asp:Label>
                                
                                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                        
                                        <td>
                                                    <asp:TextBox ID="txt_email" runat="server" 
                                                        Width="389px" BorderColor="Silver" BorderStyle="Inset" ForeColor="#006600" 
                                                        Height="30px"></asp:TextBox>
                                            </td>
                                        </tr>

                                        <tr>  
                                        
                                        <td>&nbsp;</td>
                                        
                                        <td>&nbsp;</td>
                                        </tr>

                                        <tr>  
                                        
                                        <td> 
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                            <asp:Label ID="lbl_subject" runat="server" Text="Subject" 
                                                             Font-Bold="True" Font-Italic="True" Font-Size="Large"></asp:Label>
                                
                                                 </td>
                                        
                                        <td>
                                                    <asp:TextBox ID="txt_subject" runat="server" 
                                                        Width="389px" BorderColor="Silver" BorderStyle="Inset" ForeColor="#006600" TextMode="SingleLine" 
                                                        Height="30px"></asp:TextBox>
                                            </td>
                                        </tr>


                                       <%-- <tr>
                                            <td style="height: 29px"></td>
                                         <td style="height: 29px"></td>
                                        </tr>--%>
                                         <tr>
                                            <td style="height: 29px"></td>
                                         <td style="height: 29px"></td>
                                        </tr>
                                        <tr>  
                                        
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lbl_message" runat="server" Text="Message" 
                                                             Font-Bold="True" Font-Italic="True" Font-Size="Large"></asp:Label>
                                
                                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                        
                                        <td>
                                                    <asp:TextBox ID="txt_msg" runat="server" 
                                                        Width="389px" BorderColor="Silver" BorderStyle="Inset" ForeColor="#006600" 
                                                        Height="160px" TextMode="MultiLine"></asp:TextBox>
                                            </td>
                                        </tr>

                                        <tr>  
                                        
                                        <td colspan="2">&nbsp;</td>
                                        </tr>

                                        <tr>  
                                        
                                        <td colspan="2">
                                                <asp:HiddenField ID="txthiddenID" runat="server" />
                                                <asp:Label ID="lblError2" runat="server" Font-Bold="True" 
                                                    Font-Size="Medium" ForeColor="Red"></asp:Label>
                                            </td>
                                        </tr>

                                        <tr>  
                                        
                                        <td colspan="2">&nbsp;</td>
                                        </tr>

                                        <tr>  
                                        
                                        <td colspan="2">&nbsp;</td>
                                        </tr>

                                        <tr>  
                                        
                                        <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;


                    <asp:ImageButton ID="linkSave" runat="server" CssClass="linkWithoutUnderLine" 
                        OnClick="linkSave_Click" ImageUrl="~/images/Save_Button.jpg" Height="30px" ToolTip="Send Message"
                        Width="100px"></asp:ImageButton>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:ImageButton ID="linkreset" runat="server" 
                        CssClass="linkWithoutUnderLine"  ToolTip="Reset"
                       ImageUrl="~/images/Reset_Button.jpg" Height="30px" Width="100px" onclick="linkreset_Click" 
                        ></asp:ImageButton>

                                            </td>
                                        </tr>

                                    </tbody>
                                </table>
                                
                                <p>
                                </p>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp; &nbsp;&nbsp;

                </td>
            </tr>
        </tbody>
    </table>


    </form>
</asp:Content>