<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master.master" AutoEventWireup="true" CodeFile="Add_Image.aspx.cs" Inherits="Add_Image" %>

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
                                        <h3>
                                            <asp:Label ID="lblCaption" runat="server" Font-Size="Large" Font-Bold="True" 
                                                   Font-Italic="True">Add New Image</asp:Label></h3>
                                        </td>

                                        <%--<td class="DataHeader">
                                           <h3> <asp:Label ID="lblCaption" runat="server" Font-Size="Medium">Add New Image</asp:Label></h3>
                                        </td>--%>
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
                                        <td style="width: 287px"></td>
                                                <td style="color: Red" colspan="2">
                                                <asp:Label ID="lblError" runat="server"></asp:Label>
                                                &nbsp;<br />
                                                </td>
                                        </tr>
                                        


                                        





                                        <tr>
                                        <td rowspan="4" style="width: 287px">
                                            <asp:Image ID="Image1" runat="server" Height="175px" 
                                                ImageUrl="~/images/images.jpg" Width="232px" />
                                            </td>
                                        <td colspan="1" align="center" style="width: 557px; height: 57px;">  
                                            <asp:FileUpload ID="fileuploadimages" runat="server" BorderStyle="Ridge" 
                                                Width="394px" Font-Bold="True" Font-Italic="True" Font-Size="Large" 
                                                Height="34px" /></td>

                                                <td style="height: 57px"></td>
                                        </tr>

                                         

                                        <tr>
                                            <td class="style3" style="width: 557px; height: 86px;" >
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;<asp:ImageButton 
                                                    ID="submit" runat="server" Height="30px" ImageUrl="~/images/next.gif" tooltip="Next" 
                                                    onclick="ImageButton1_Click" Width="100px" />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                               <%-- <asp:Button ID="submit" runat="server" onclick="submit_Click" Text="Button" />--%>
                                               </td>
                                            <td class="style2" style="height: 86px">
                                                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                                &nbsp;&nbsp;&nbsp; &nbsp;
                                                <%--<asp:TextBox ID="txtrolno" runat="server" Width="45px" Height="20px" AutoPostBack="true"></asp:TextBox>--%>
                                                </td>
                                                  <td></td>
                                        </tr>


                                        <tr>
                                            <td align="Left" class="style1" style="width: 557px">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                               <asp:Label ID="lbl_img_Name" Text="Name" runat="server" Visible="False" 
                                                    Font-Bold="True" Font-Italic="True" Font-Size="Large"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:TextBox ID="txtname" runat="server" Width="248px" Height="32px" 
                                                    ToolTip="Enter Alphabatic Only" onkeypress="return validatealpha(event)" 
                                                    BorderColor="Silver" Visible="False" BorderStyle="Ridge"></asp:TextBox>
                                            </td>
                                            <td>
                                                <br />
                                            </td>
                                        </tr>
                                         <tr>
                                            <td align="Left" class="style1" style="width: 557px">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                               <asp:Label ID="lbl_picsubject" Text="Picture Subject" runat="server" Visible="False" 
                                                    Font-Bold="True" Font-Italic="True" Font-Size="Large"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:TextBox ID="txt_picSub" runat="server" Width="248px" Height="32px" 
                                                     onkeypress="return validatealpha(event)" 
                                                    BorderColor="Silver" Visible="False" BorderStyle="Ridge"></asp:TextBox>
                                            </td>
                                            <td>
                                                <br />
                                            </td>
                                        </tr>

                                        <tr>
                                            <td colspan="2" style="height: 90px">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Image ID="img" runat="server" Height="124px" Visible="False" 
                                                    Width="182px" ViewStateMode="Enabled" BorderStyle="Ridge"  />
                                            </td>
                                        

                                        </tr>
                                        <tr>
                                        <td style="width: 287px"></td>
                                            <td class="style3" style="width: 557px" >
                                                <asp:Label ID="lblError2" runat="server" Font-Bold="True" 
                                                    Font-Size="Medium" ForeColor="Red"></asp:Label></td>
                                            <td class="style2">
                                                &nbsp;</td>   &nbsp;
                                        </tr>
                                        <tr>
                                        <td style="width: 287px"></td>
                                            <td class="style1" style="width: 557px">
                                                <asp:HiddenField ID="txthiddenID" runat="server" />
                                                <br />
                                                <br />
                                            </td>
                                            <td style="color: Red">&nbsp;</td>
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
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    

                     &nbsp;<asp:ImageButton ID="linkSave" runat="server" CssClass="linkWithoutUnderLine" 
                         ImageUrl="~/images/Save_Button.jpg" Height="30px" ToolTip="Save"
                        Width="100px" Visible="False" onclick="linkSave_Click"></asp:ImageButton>
                        &nbsp;&nbsp;
                      |&nbsp;
                     <asp:ImageButton ID="linkreset" runat="server" 
                        CssClass="linkWithoutUnderLine"  ToolTip="Reset"
                       ImageUrl="~/images/Reset_Button.jpg" Height="30px" Width="100px" 
                        onclick="linkreset_Click" Visible="False" 
                        ></asp:ImageButton>

                </td>
            </tr>
        </tbody>
    </table>


    </form>
</asp:Content>

