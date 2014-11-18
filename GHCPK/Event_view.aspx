<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Event_view.aspx.cs" Inherits="Event_view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
 
  <asp:ListView ID="ListView1" runat="server">
                              <ItemTemplate>
 
         <%-- <div class="row">
            <div class="col-md-12">--%>
            <div class="list-event-item">
             <div class="widget-inner">
                 <div class="box-content-inner clearfix">               
                                <div class="event-small-list clearfix">
                                    <div class="calendar-small">
                                        <span class="s-month"><%# Eval("Event_Month")%></span>
                                        <span class="s-date"><%# Eval("Event_Date")%></span>
                                    </div>
                                    <div class="event-small-details">
                                        <h5 class="event-small-title"><a href="Event_ID.aspx?ID=<%#Eval("id")%>""><%# Eval("Event_Subject")%></a></h5>
                                        <p class="event-small-meta small-text"><%# Eval("Event_full_Date")%></p>
                                    </div>
                                </div>
                                 
                                <div class="blog-list-post clearfix">
                                    <%--<div class="blog-list-details">--%>
                                    <div class="list-event-header">
                                         <div class="view-details"><a class="lightBtn" href="Event_ID.aspx?ID=<%#Eval("id")%>">View Details</a></div>
                                    </div>
                                </div>
                            </div>
                            </div>
                            </div>
                           <%-- </div>
                            </div>--%>
  </ItemTemplate>
                                </asp:ListView>
 </form>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<div>
                           <div class="widget-main-title">
                                <h4 class="widget-title">Latest Event</h4>
                            </div> <!-- /.widget-main-title -->
                            <marquee direction="up" onmouseover="this.stop();" onmouseout="this.start();">
                            <div class="widget-inner">
                             <asp:ListView ID="ListView2" runat="server">
                              <ItemTemplate>
                               
                               <div class="widget-inner">
                               
                                <div class="event-small-list clearfix">
                                    <div class="calendar-small">
                                        <span class="s-month"><%# Eval("Event_Month")%></span>
                                        <span class="s-date"><%# Eval("Event_Date")%></span>
                                    </div>
                                    <div class="event-small-details">
                                        <h5 class="event-small-title"><a href="Event_ID.aspx?ID=<%#Eval("id")%>""><%# Eval("Event_Subject")%></a></h5>
                                        <p class="event-small-meta small-text"><%# Eval("Event_full_Date")%></p>
                                    </div>
                                </div>
                                 
                             
                            </div>
                                </ItemTemplate>
                                </asp:ListView>


                                <div class="blog-list-post clearfix">
                                    <div class="blog-list-details">
                                        <h5 class="blog-list-title"><a href="Event_view.aspx">Read more</a></h5>
                                    </div>
                                </div>
                            </div> <!-- /.widget-inner --></marquee>
                        </div>
</asp:Content>

