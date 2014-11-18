<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master.master" AutoEventWireup="true" CodeFile="Add_News.aspx.cs" Inherits="Add_News" %>

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
                                                   Font-Italic="True">Add New News</asp:Label></h3>
                                        </td>


                                        <%--<td class="DataHeader">
                                           <h3> <asp:Label ID="lblCaption" runat="server" Font-Size="Small">Add New News</asp:Label></h3>
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
                                        <td style="width: 262px"></td>


                                            <td style="color: Red" colspan="2">
                                                &nbsp;<br />
                                                </td>
                                        </tr>
                                        
                                        <tr>
                                         <td style="width: 262px"></td>
                                            <td align="Left" class="style1" style="width: 215px">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
                                            </td>
                                            <td>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>

                                         <td rowspan="3" style="width: 262px">
                                        
                                        
                                             <asp:Image ID="Image1" runat="server" Height="197px" 
                                                 ImageUrl="~/images/add User.jpg" Width="275px" />
                                        
                                        
                                            </td>
                                            <td align="Left" class="style1" style="width: 215px">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lbl_news_subject" runat="server" Text="News Subject" Font-Bold="True" 
                                                    Font-Italic="True" Font-Size="Large" ForeColor="#666633"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtnews_subject" runat="server" Width="380px" Height="91px" 
                                                    ToolTip="Enter Alphanumeric Only" BorderColor="Silver" BorderStyle="Inset" 
                                                    Font-Size="Large" ForeColor="#006600"></asp:TextBox>
                                                <br />
                                            </td>
                                        </tr>

                                                                               

                                        <tr>

                                            <td align="Left" class="style1" style="width: 215px">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                            </td>
                                            <td>
                                                <br />
                                            </td>
                                        </tr>

                                         <tr>

                                            <td align="Left" class="style1" style="width: 215px">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Label ID="lbl_newDes" runat="server" Text="News Description" Font-Bold="True" 
                                                    Font-Italic="True" Font-Size="Large" ForeColor="#666633"></asp:Label> 
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtnews_Des" runat="server" Height="161px"
                                                    ToolTip="Enter Alphanumeric Only" BorderColor="Silver" BorderStyle="Inset" 
                                                    ForeColor="#006600" Width="378px"></asp:TextBox>


                                                   
                                                <br />
                                            </td>
                                        </tr>

                                        <tr>
                                         <td style="width: 262px"></td>
                                        
                                        <td colspan="2">
                                        
                                         <br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                            &nbsp;
                                            
                                           
                                            
                                            
                                            <asp:RadioButton ID="rd_default" runat="server" GroupName="Pic Selection" AutoPostBack="true" 
                                                oncheckedchanged="rd_default_CheckedChanged" Text="By Default" 
                                                Font-Size="Large"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:RadioButton ID="rd_upload" runat="server" GroupName="Pic Selection" AutoPostBack="true" 
                                                oncheckedchanged="rd_upload_CheckedChanged" Text="Upload" 
                                                Font-Size="Large" />
                                            </td>
                                        </tr>

                                    </tbody>
                                </table>
                                <p>
                                </p>
                                <table width="100%" style="height: 50px">
                                    <tbody class="Text">

                                         <tr><td style="width: 296px; height: 78px;"></td>
                                        <td align="center" style="height: 78px"> &nbsp;&nbsp; 
                                            <asp:FileUpload ID="fileuploadimages" runat="server" Visible="False" 
                                                BorderStyle="Ridge" Width="382px" Height="33px" /></td>
                                        </tr>

                                         

                                    </tbody>
                                </table>
                                <p>
                                </p>
                                <table width="100%" style="height: 202px">
                                    <tbody class="Text">

                                         

                                        <tr>
                                            <td class="style3" style="width: 296px" >
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                                </td>
                                            <td class="style2">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                                <asp:ImageButton 
                                                    ID="submit" runat="server" Height="30px" 
                                                    ImageUrl="~/images/Save_Button.jpg" tooltip="Next" 
                                                    onclick="ImageButton1_Click" Width="100px" Visible="False" 
                                                    ImageAlign="Top" />
                                                &nbsp;
                                                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                                &nbsp;&nbsp;&nbsp; &nbsp;                                                <%--<asp:TextBox ID="txtrolno" runat="server" Width="45px" Height="20px" AutoPostBack="true"></asp:TextBox>--%>
                                                </td>
                                        </tr>


                                        <tr>
                                            <td align="Left" class="style1" style="width: 296px">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                            </td>
                                            <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                               <asp:Label ID="lbl_img_Name" Text="Name" runat="server" Visible="False" 
                                                    Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#666633"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:TextBox ID="txtname" runat="server" Width="248px" Height="32px" 
                                                    ToolTip="Enter Alphabatic Only" onkeypress="return validatealpha(event)" 
                                                    BorderColor="Silver" Visible="False" BorderStyle="Inset"></asp:TextBox>
                                                <br />
                                            </td>
                                        </tr>

                                        <tr>
                                            <td colspan="2" style="height: 90px">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                                <asp:Image ID="img" runat="server" Height="134px" Visible="False" 
                                                    Width="231px" ViewStateMode="Enabled" BorderStyle="Ridge"  />
                                            </td>
                                        

                                        </tr>
                                        <tr>
                                            <td align="Left" class="style1" style="width: 296px">
                                                &nbsp;</td>
                                            <td>
                                                <br />
                                            </td>
                                        </tr>

                                        <tr>
                                            <td align="left" class="style1" style="width: 296px">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                            <td>
                                                &nbsp;&nbsp;<asp:Label ID="lblError2" runat="server" Font-Bold="True" 
                                                    Font-Size="Medium"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                                &nbsp;
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style3" style="width: 296px" >
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                               </td>
                                            <td class="style2">
                                                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                                &nbsp;&nbsp;&nbsp; &nbsp;
                                                <%--<asp:TextBox ID="txtrolno" runat="server" Width="45px" Height="20px" AutoPostBack="true"></asp:TextBox>--%>
                                                </td>
                                        </tr>


                                        
                                        <tr>
                                            <td class="style1" style="width: 296px">
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
                    

                        &nbsp;&nbsp;
                        &nbsp;&nbsp;<asp:ImageButton ID="linkSave" runat="server" 
                        CssClass="linkWithoutUnderLine"  CausesValidation="False"
                        OnClick="linkSave_Click" ImageUrl="~/images/Save_Button.jpg" Height="30px" ToolTip="Save Role Description"
                        Width="100px"></asp:ImageButton>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="linkCancel" runat="server" CssClass="linkWithoutUnderLine" CausesValidation="False"
                        OnClick="linkCancel_Click" ImageUrl="~/images/Reset_Button.jpg" ToolTip="Cancel Role Description" 
                        Height="30px" Width="100px"></asp:ImageButton>

                </td>
            </tr>
        </tbody>
    </table>


    </form>
</asp:Content>

