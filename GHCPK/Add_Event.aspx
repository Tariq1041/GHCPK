<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master.master" AutoEventWireup="true" CodeFile="Add_Event.aspx.cs" Inherits="Add_Event" %>





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
                                                   Font-Italic="True" Text="Add New Event"></asp:Label></h3>
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

                                        <td style="width: 249px"></td>
                                            <td style="color: Red" colspan="2">
                                                &nbsp;<br />
                                                </td>
                                        </tr>
                                        
                                        <tr>  <td style="width: 249px"></td>
                                            <td align="Left" class="style1" style="width: 287px">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
                                            </td>
                                            <td>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>  <td rowspan="3" style="width: 249px">
                                            <asp:Image ID="Image1" runat="server" Height="211px" 
                                                ImageUrl="~/images/eventicon2.jpg" Width="239px" />
                                            </td>
                                            <td align="Left" class="style1" style="width: 287px">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                               <asp:Label ID="lbl_subject" runat="server" Text="Event Subject" Font-Bold="True" 
                                                    Font-Italic="True" Font-Size="Large"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtevent_subject" runat="server" Width="380px" Height="91px" 
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
                                            <td align="Left" class="style1" style="width: 287px">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Label ID="lbl_description" runat="server" Text="Event Description" 
                                                    BorderColor="Silver" Font-Bold="True" Font-Italic="True" Font-Size="Large"></asp:Label>
                                            &nbsp;</td>
                                            <td>
                                                <asp:TextBox ID="txtevent_Des" runat="server" Width="382px" Height="161px"
                                                    ToolTip="Enter Alphanumeric Only" BorderColor="Silver" BorderStyle="Inset" 
                                                    Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#006600" 
                                                    TextMode="MultiLine"></asp:TextBox>
                                                    
                                                <br />
                                            </td>
                                        </tr>

                                        <tr>  <td style="width: 249px"></td>
                                        
                                        <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                        </tr>

                                    </tbody>
                                </table>
                                
                                <table width="100%" style="height: 50px">
                                    <tbody class="Text">

                                         <tr>
                                         
                                                 <td style="width: 539px; height: 78px;">
                                     
                                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
                                                         &nbsp;<asp:Label ID="lbl_org_country" runat="server" Text="Organized Country" 
                                                             Font-Bold="True" Font-Italic="True" Font-Size="Large"></asp:Label>
                                
                                                 </td>
                                                <td align="left" style="height: 78px">
                                                    <asp:TextBox ID="txt_country" runat="server" 
                                                        Width="389px" BorderColor="Silver" BorderStyle="Inset" ForeColor="#006600" 
                                                        Height="30px"></asp:TextBox>
                                                 </td>
                                        </tr>

                                         <tr>
                                         
                                                 <td style="width: 539px; height: 78px;">
                                     
                                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
                                                         &nbsp;   <asp:Label ID="lbl_city" runat="server" Text="City" Font-Bold="True" 
                                                             Font-Italic="True" Font-Size="Large"></asp:Label>
                                
                                                 </td>
                                                <td align="left" style="height: 78px">
                                                    <asp:TextBox ID="txt_city" runat="server" 
                                                        Width="389px" BorderColor="Silver" BorderStyle="Inset" ForeColor="#006600" 
                                                        Height="29px"></asp:TextBox>
                                                 </td>
                                        </tr>
                                        <tr>
                                         
                                                 <td style="width: 539px; height: 78px;">
                                     
                                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
                                                         &nbsp;   <asp:Label 
                                                             ID="lbl_orgztion" runat="server" Text="Organization" Font-Bold="True" 
                                                             Font-Italic="True" Font-Size="Large"></asp:Label>
                                            &nbsp;</td>
                                                <td align="left" style="height: 78px">
                                                    <asp:TextBox ID="txt_org" runat="server" 
                                                        Width="389px" BorderColor="Silver" BorderStyle="Inset" ForeColor="#006600" 
                                                        Height="30px"></asp:TextBox>
                                                 </td>
                                        </tr>
                                         <tr>
                                         
                                                 <td style="width: 539px; height: 78px;">
                                     
                                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
                                                         &nbsp;  <asp:Label 
                                                             ID="lbl_org_date" runat="server" Text="Organized Date" Font-Bold="True" 
                                                             Font-Italic="True" Font-Size="Large"></asp:Label>
                                            &nbsp;</td>
                                                <td align="left" class="datepicker">                                                 <%--<asp:TextBox ID="txt_orgdate" runat="server" 
                                                        Width="389px" BorderColor="Silver" BorderStyle="Inset" ForeColor="#006600"></asp:TextBox>--%>
			                                                                                                       
                                                                     
                                                                     
	                                                        			                                                                                                       
                                                                <%--<asp:TextBox ID="datepick" runat="server" 
                                                        Width="66px" BorderColor="Silver" BorderStyle="Inset" ForeColor="#006600"></asp:TextBox>   --%>
                                                        
                                                                    <asp:DropDownList ID="ddl_day" runat="server">
                                                                    </asp:DropDownList> 
                                                              &nbsp;        |&nbsp; &nbsp;<asp:DropDownList ID="ddl_month" 
                                                        runat="server" Height="18px" Width="139px">
                                                                    </asp:DropDownList>  
                                                                     &nbsp;&nbsp;   |   &nbsp;
                                                                     
                                                               <asp:DropDownList ID="ddl_year" runat="server">
                                                                      </asp:DropDownList>
                                                                   
                                                                     <br />

                                                                    <%-- <asp:Label ID="lbl_date" runat="server" Text="* Please insert date DD/MM/YYYY" ></asp:Label>--%>
	                                                         <%--<input class="datepicker" id="datepick" runat="server" 
                                                        style="border-style: ridge; border-width: inherit; border-color: #FFFFFF" 
                                                        align="left" /><br />--%>

	
                                                                     
                                                                     
                                                                              </td>                                           
                                              
                                                
                                         </tr>
                                       
                                    </tbody>
                                </table>
                                <p>
                                </p>
                                <table width="100%" style="height: 62px">
                                    <tbody class="Text">

                                       
                                     
                                        <tr>
                                            <td class="style1" style="width: 296px">
                                                <asp:HiddenField ID="txthiddenID" runat="server" />
                                                <br />
                                                <br />
                                            </td>
                                            <td style="color: Red"><asp:Label ID="lblError2" runat="server" Font-Bold="True" 
                                                    Font-Size="Medium"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;


                    <asp:ImageButton ID="linkSave" runat="server" CssClass="linkWithoutUnderLine" 
                        OnClick="linkSave_Click" ImageUrl="~/images/Save_Button.jpg" Height="30px" ToolTip="Save"
                        Width="100px"></asp:ImageButton>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
                        &nbsp;&nbsp;
                     <asp:ImageButton ID="linkreset" runat="server" 
                        CssClass="linkWithoutUnderLine"  ToolTip="Reset"
                       ImageUrl="~/images/Reset_Button.jpg" Height="30px" Width="100px" 
                        ></asp:ImageButton>

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

