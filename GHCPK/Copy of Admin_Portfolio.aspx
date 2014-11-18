<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Copy of Admin_Portfolio.aspx.cs" Inherits="Admin_Portfolio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<form id="form1" runat="server">             
                          
                          <asp:ListView ID="ListView2" runat="server" >
                              <ItemTemplate>
                             
                                    <div class="col-md-6 col-sm-6">
                                        <div class="blog-grid-item">
                                            <div class="blog-grid-thumb"   >
                                                <a  id="img_text" class="fancybox"  rel="gallery1" href='<%# Eval("Picture_Path")%>'  ><asp:Label  ID="lbl_imgsub"  class="fancybox"  runat="server"><%# Eval("Picture_Text")%></asp:Label> 
                                              
                                                 <asp:Image alt="" id="img_porfolio" runat="server" EnableViewState="true"  ImageUrl='<%# Eval("Picture_Path")%>'  />
                                              </a>
                                               
                                            </div>
                                             <!-- /.box-content-inner -->
                                        </div> <!-- /.blog-grid-item -->
                                    </div> 
                                   
                          
                             </ItemTemplate>
                                </asp:ListView>
            </form>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

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

