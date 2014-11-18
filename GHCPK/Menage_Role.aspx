<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master.master" AutoEventWireup="true" CodeFile="Menage_Role.aspx.cs" Inherits="Menage_Role" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <form id="form1" runat="server">
        

                        <asp:GridView ID="gvManageRoles" runat="server"   DataKeyNames="Role_Id" 
                                RowStyle-HorizontalAlign="Center"  CssClass="Text"
                                AutoGenerateColumns="False" onpageindexchanging="gvManageRoles_PageIndexChanging"
                                OnRowCommand="gvManageRoles_RowCommand" GridLines="None" onrowdatabound="gvManageRoles_RowDataBound" 
                                Width="98%" CellPadding="4" ForeColor="#333333" Height="100px" 
                                AllowPaging="true" PageSize="10">
                                
                                                           
                                

<SortedAscendingCellStyle BackColor="#F8FAFA"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="#246B61"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#D4DFE1"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#15524A"></SortedDescendingHeaderStyle>
                                <AlternatingRowStyle  BackColor="White"></AlternatingRowStyle>
                                                                <Columns>
                                    
                                    <asp:BoundField DataField="Role_Id" HeaderText="Role ID" />
                                    <asp:BoundField DataField="Role_Name" HeaderText="Name" />
                                   
                                                                      
                                          <asp:TemplateField>
                                                            <ItemStyle HorizontalAlign="Center" />
                                                            <HeaderStyle HorizontalAlign="Center" />
                                                            <HeaderTemplate>
                                                                Edit Role
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                         <asp:LinkButton  ID="lnkEdit" runat="server" Enabled ="<%# WebCommon.ContainsTask(WebCommon.TaskAdmin_Edit_Role,sessionUser) %>"   Font-Underline="true" CommandName="Edit Role"
                                                                    CommandArgument='<%#Eval("Role_Id")%>'>Edit</asp:LinkButton>
                                                                    
                                                                <img id="Img2" src="~/images/edit.gif" alt="Edit" border="0" name="Edit"  runat="server"/>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>

                                          <asp:TemplateField>
                                            <ItemStyle HorizontalAlign="Center" />
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <HeaderTemplate>
                                                Delete Role
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkDelete"  Enabled ="<%# WebCommon.ContainsTask(WebCommon.TaskAdmin_Delete_Role,sessionUser) %>"   runat="server" Font-Underline="true" CommandName="Delete Role"
                                                    CommandArgument='<%#Eval("Role_Id")%>'>Delete</asp:LinkButton>
                                                    <img id="Img1" src="~/images/delete.gif" alt="delete" border="0" name="Delete" runat="server"/>
                                            </ItemTemplate>
                                            
                                            </asp:TemplateField>
                                </Columns>

                                <EditRowStyle BackColor="#7C6F57" />
                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle Font-Bold="True"   CssClass="DataLeft" 
                                    ForeColor="White"  BackColor="#abba47" />
                                
                                

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


                              <br />
                        
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;
                
                   <asp:ImageButton ID="linkAddnewUser" runat="server" Width="65px" 
                        ImageUrl="~/images/addnewRole1.jpg" ToolTip="Add New Role" 
                        Height="50px" onclick="linkAddnewUser_Click" />
                       
</form>
</asp:Content>

