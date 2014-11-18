<%@ Page Title="" Language="C#" MasterPageFile="~/Front_Master.master" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
<div class="event-container clearfix">
                            <div class="left-event-content">
                              
                                <asp:Image ID="img_news" runat="server" Visible="true" width="227px" ViewStateMode="Enabled"  />



                            </div> 
                            <!-- /.left-event-content -->
                            <div class="right-event-content">
                                <h2 class="event-title"><P id="P_subject" runat="server"></P></h2> 
                                <span class="event-time"></span><P id="date" runat="server"></P>
                                <p id="p_def" runat="server"></p>
                                          </div> <!-- /.right-event-content -->
                      </div> 
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

