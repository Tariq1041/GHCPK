<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master.master" AutoEventWireup="true" CodeFile="Manage_Image.aspx.cs" Inherits="Manage_Image" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<form id="form1" runat="server">

<asp:GridView ID="gvManage_Image" runat="server"   DataKeyNames="ID" 
                                RowStyle-HorizontalAlign="Center"  CssClass="Text"
                                AutoGenerateColumns="False" onpageindexchanging="gvManage_Image_PageIndexChanging"
                                OnRowCommand="gvManage_Image_RowCommand" GridLines="None" onrowdatabound="gvManage_Image_RowDataBound" 
                                Width="100%" CellPadding="4" ForeColor="#333333" Height="100px" AllowPaging="true" PageSize="10">
                                
                                


                                   <%-- #0077A7 url(images/img3.gif) repeat-x left bottom;--%>
                                
                             
                                

<SortedAscendingCellStyle BackColor="#F8FAFA"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="#246B61"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#D4DFE1"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#15524A"></SortedDescendingHeaderStyle>
                                <AlternatingRowStyle  BackColor="White"></AlternatingRowStyle>
                                                                <Columns>
                                    
                                    <asp:BoundField DataField="ID" HeaderText="Picture ID" />
                                    <asp:BoundField DataField="Picture_Name" HeaderText="Picture Name" />
                                    <asp:ImageField HeaderText="Image" DataImageUrlField="Picture_Path" ControlStyle-Width="28" ControlStyle-Height = "28">
           
                                     </asp:ImageField>
                                                                    
                                          <asp:TemplateField>
                                                            <ItemStyle HorizontalAlign="Center" />
                                                            <HeaderStyle HorizontalAlign="Center" />
                                                            <HeaderTemplate>
                                                                Edit Picture
                                                            </HeaderTemplate>
                                                            <ItemTemplate >
                                                                <asp:LinkButton ID="lnkEdit" runat="server" Enabled ="<%# WebCommon.ContainsTask(WebCommon.TaskAdmin_Edit_Picture,sessionUser) %>"   Font-Underline="true" CommandName="Edit Picture"
                                                                 CommandArgument='<%#Eval("ID")%>'>Edit</asp:LinkButton>
                                                                <img id="Img1" src="~/images/edit.gif" alt="Edit" border="0" name="Edit" runat="server"/>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>

                                          <asp:TemplateField>
                                            <ItemStyle HorizontalAlign="Center" />
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <HeaderTemplate>
                                                Delete Picture
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkDelete"  Enabled ="<%# WebCommon.ContainsTask(WebCommon.TaskAdmin_Delete_Picture,sessionUser) %>"   runat="server" Font-Underline="true" CommandName="Delete Picture"
                                                    CommandArgument='<%#Eval("ID")%>'>Delete</asp:LinkButton>
                                                    <img id="Img12" src="~/images/delete.gif" alt="delete" border="0" name="Delete" runat="server"/>
                                            </ItemTemplate>
                                            
                                            </asp:TemplateField>
                                </Columns>

                                <EditRowStyle BackColor="#7C6F57" />
                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle Font-Bold="True"   CssClass="DataLeft" 
                                    ForeColor="White"  BackColor="#68713b" />
                                
                                

                                 <PagerSettings FirstPageText="First" LastPageText="Last"
                                  Mode="NextPreviousFirstLast" NextPageText="Next" PreviousPageText="Previous"/>



                                <PagerStyle BackColor="#abba47" ForeColor="White" HorizontalAlign="Center" />

                            <RowStyle HorizontalAlign="Center" BackColor="#E3EAEB"></RowStyle>
                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />

                             
                                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                <SortedAscendingHeaderStyle BackColor="#246B61" />
                                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                <SortedDescendingHeaderStyle BackColor="#15524A" />
                            </asp:GridView>

                            <div>
                            
                            
                            
                                <table class="nav-justified">
                                    <tr>
                                        <td style="width: 293px">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                             <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 293px">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                             <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 293px">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" ToolTip="Add New Image"
                                                onclick="ImageButton1_Click" Width="65px" ImageUrl="~/images/images.jpg" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                             <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 293px">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                             <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            
                            
                            
                            </div>
    </form>
</asp:Content>

