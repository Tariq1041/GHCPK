<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="News_view.aspx.cs" Inherits="News_view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
 
  <asp:ListView ID="ListView2" runat="server">
                              <ItemTemplate>
 
 <div class="row">
            <div class="col-md-12">
           
           
                    <div class="list-event-item">
                    
                            <div class="box-content-inner clearfix">
                                <div class="list-event-thumb">
                                    <a >
                                       <%-- <img alt=""  id="img_news_Desc" src="<%# Eval("News_Image")%>" />--%>
                                       <%-- <asp:Image ID="img_news_Desc"  runat="server" Visible="true" width="227px" ViewStateMode="Enabled"  />--%>
                                        <img src="<%# Eval("News_Image")%>"  alt="" width="227px" />
                                    </a>
                                </div>
                                <div class="list-event-header">
                                    <span class="event-date small-text"><i class="fa fa-calendar-o"></i> <%# Eval("Updated_Date")%></span>
                                    <div class="view-details"><a class="lightBtn" href="AdminNews_View.aspx?ID=<%#Eval("id")%>">View Details</a></div>
                                    <br />
                                    <h5 class="event-title"><p> <a href="AdminNews_View.aspx?ID=<%#Eval("id")%>"> <%# Eval("News_Subject")%></a></p></h5>
                                    
                                </div>

                              
                                         </div> <!-- /.box-content-inner -->
                                          
                        </div> 
             </div>
 </div>
  </ItemTemplate>
                                </asp:ListView>
 </form>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<div>
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
                                        <a id="A1"  runat="server"><img src="<%# Eval("News_Image")%>"  alt="" /> </a>
                                    </div>
                                   
                                    <div class="blog-list-details">
                               
                                        <h5 class="blog-list-title"><a href="AdminNews_View.aspx?ID=<%# Eval("ID")%>">  <%# Eval("News_Subject")%></a></h5>

                                        <p class="blog-list-meta small-text"><span><a href="AdminNews_View.aspx"><%# Eval("Created_Date")%></a></span></p>

                                       
                                    </div>
                                   
                                    </td>

                                    </tr>
                                    
                                </div> <!-- /.blog-list-post -->

                                </ItemTemplate>
                                </asp:ListView>


                                <div class="blog-list-post clearfix">
                                    <div class="blog-list-details">
                                        <h5 class="blog-list-title"><a href="News_view.aspx">Read more</a></h5>
                                    </div>
                                </div>
                            </div> <!-- /.widget-inner --></marquee>
                        </div>
</asp:Content>

