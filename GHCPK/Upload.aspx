<%@ Page Title="" Language="C#" MasterPageFile="~/Front_Master.master" AutoEventWireup="true" CodeFile="Upload.aspx.cs" Inherits="Upload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<form id="form1" runat="server">
    &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="UploadFile" />
    
    <hr />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" 
        EmptyDataText = "No files uploaded" Height="100px" Width="626px">
       
       
       <SortedAscendingCellStyle BackColor="#F8FAFA"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="#246B61"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#D4DFE1"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#15524A"></SortedDescendingHeaderStyle>
                                <AlternatingRowStyle  BackColor="White"></AlternatingRowStyle>
       
       
        <Columns>
            <asp:BoundField DataField="Text" HeaderText="File Name" />
            
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="lnkDownload" Text = "Download" CommandArgument = '<%# Eval("Value") %>' runat="server" OnClick = "DownloadFile"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID = "lnkDelete" Text = "Delete" CommandArgument = '<%# Eval("Value") %>' runat = "server" OnClick = "DeleteFile" />
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
    </form>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
 <!-- /.widget-main -->

                         <div class="widget-main-title">
                                <h4 class="widget-title">Latest News</h4>
                            </div> <!-- /.widget-main-title -->
                            <marquee direction="up" onmouseover="this.stop();" onmouseout="this.start();">
                            <div class="widget-inner">
                             <asp:ListView ID="ListView1" runat="server">
                              <ItemTemplate>
                                <div class="blog-list-post clearfix">
                                
                                
                                  <tr>
                                    <td>
                                     
                                    <div class="blog-list-thumb">
                                        <a id="A1" href="News.aspx" runat="server"><img src="<%# Eval("News_Image")%>"  alt="" /> </a>
                                    </div>
                                   
                                    <div class="blog-list-details">
                               
                                        <h5 class="blog-list-title"><a href="News.aspx?ID=<%#Eval("id")%>">  <%# Eval("News_Subject")%></a></h5>  

                                        <p class="blog-list-meta small-text"><span><a href="#"><%# Eval("Created_Date")%></a></span></p>

                                       
                                    </div>
                                   
                                    </td>

                                    </tr>
                                    
                                </div> <!-- /.blog-list-post -->

                                </ItemTemplate>
                                </asp:ListView>


                                <div class="blog-list-post clearfix">
                                    <div class="blog-list-details">
                                        <h5 class="blog-list-title"><a href="blog-single.html">Read more</a></h5>
                                    </div>
                                </div>
                            </div> <!-- /.widget-inner --></marquee>
 
</asp:Content>