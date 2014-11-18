<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master.master" AutoEventWireup="true" CodeFile="Menage_User.aspx.cs" Inherits="Menage_User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">

<asp:GridView ID="gvManageUsers" runat="server"   DataKeyNames="ID" 
                                RowStyle-HorizontalAlign="Center"  CssClass="Text"
                                AutoGenerateColumns="False" onpageindexchanging="gvManageUsers_PageIndexChanging"
                                OnRowCommand="gvManageUsers_RowCommand" GridLines="None" onrowdatabound="gvManageUsers_RowDataBound" 
                                Width="100%" CellPadding="4" ForeColor="#333333" Height="100px" AllowPaging="true" PageSize="10">
                                
                                


                                   <%-- #0077A7 url(images/img3.gif) repeat-x left bottom;--%>
                                
                             
                                

<SortedAscendingCellStyle BackColor="#F8FAFA"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="#246B61"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#D4DFE1"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#15524A"></SortedDescendingHeaderStyle>
                                <AlternatingRowStyle  BackColor="White"></AlternatingRowStyle>
                                                                <Columns>
                                    
                                    <asp:BoundField DataField="User_Id" HeaderText="User ID" />
                                    <asp:BoundField DataField="Name" HeaderText="Name" />
                                    <asp:BoundField DataField="Role_Name" HeaderText="Role" />
                                   <asp:BoundField DataField="Phone No" HeaderText="Phone #" />
                                   
                                                                    
                                          <asp:TemplateField>
                                                            <ItemStyle HorizontalAlign="Center" />
                                                            <HeaderStyle HorizontalAlign="Center" />
                                                            <HeaderTemplate>
                                                                Edit User
                                                            </HeaderTemplate>
                                                            <ItemTemplate >
                                                                <asp:LinkButton ID="lnkEdit" runat="server" Enabled ="<%# WebCommon.ContainsTask(WebCommon.TaskAdmin_Edit_User,sessionUser) %>"   Font-Underline="true" CommandName="Edituser"
                                                                 CommandArgument='<%#Eval("ID")%>'>Edit</asp:LinkButton>
                                                                <img id="Img1" src="~/images/edit.gif" alt="Edit" border="0" name="Edit" runat="server"/>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>

                                          <asp:TemplateField>
                                            <ItemStyle HorizontalAlign="Center" />
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <HeaderTemplate>
                                                Delete User
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkDelete"  Enabled ="<%# WebCommon.ContainsTask(WebCommon.TaskAdmin_Delete_User,sessionUser) %>"   runat="server" Font-Underline="true" CommandName="Delete User"
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



                                <PagerStyle BackColor="#68713b" ForeColor="White" HorizontalAlign="Center" /> <%--abba47--%>

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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="73px" 
                                                onclick="ImageButton1_Click" Width="95px" ToolTip="Add New User" 
                                                ImageUrl="~/images/add User.jpg" />
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

