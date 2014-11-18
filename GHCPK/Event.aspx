<%@ Page Title="" Language="C#" MasterPageFile="~/Front_Master.master" AutoEventWireup="true" CodeFile="Event.aspx.cs" Inherits="Event" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
            <div class="widget-main bottom_widgets_height">
                            <div class="widget-main-title">
                                <h4 class="widget-title">Events</h4>
                            </div> <!-- /.widget-main-title -->

                           

                            <div class="widget-inner">
                               
                                <div class="event-small-list clearfix">
                                    <div class="calendar-small">
                                        <span class="s-month" runat="server"><asp:Label ID="lbl_month" runat="server"></asp:Label></span>
                                        <span class="s-date" runat="server"><asp:Label ID="lbl_date" runat="server"></asp:Label></span>
                                        
                                    </div>
                                    <div class="event-small-details">
                                        <h5 class="event-small-title"><a href="event-single.html" id="subject" runat="server"></a></h5>
                                        <p class="event-small-meta small-text" id="detail" runat="server"></p>
                                    </div>

                                    <div class="event-small-details">
                                    <h5 class="event-small-title"><P id="date_item" runat="server"></P></h5>
                                    </div>
                                </div>
                                    
                            </div> <!-- /.widget-inner -->
                            
                        </div> 
                        </form>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
 <!-- /.widget-main -->

                         <div class="widget-main-title">
                                <h4 class="widget-title">Latest Events</h4>
                            </div> <!-- /.widget-main-title -->
                            <marquee direction="up" onmouseover="this.stop();" onmouseout="this.start();">
                            <div class="widget-inner">
                             <asp:ListView ID="ListView1" runat="server">
                              <ItemTemplate>
                               
                               <div class="widget-inner">
                               
                                <div class="event-small-list clearfix">
                                    <div class="calendar-small">
                                        <span class="s-month"><%# Eval("Event_Month")%></span>
                                        <span class="s-date"><%# Eval("Event_Date")%></span>
                                    </div>
                                    <div class="event-small-details">
                                        <h5 class="event-small-title"><a href="Event.aspx?ID=<%#Eval("id")%>""><%# Eval("Event_Subject")%></a></h5>
                                        <p class="event-small-meta small-text"><%# Eval("Event_full_Date")%></p>
                                    </div>
                                </div>
                                 
                             
                            </div>
                                </ItemTemplate>
                                </asp:ListView>


                                <div class="blog-list-post clearfix">
                                    <div class="blog-list-details">
                                        <h5 class="blog-list-title"><a href="blog-single.html">Read more</a></h5>
                                    </div>
                                </div>
                            </div> <!-- /.widget-inner --></marquee>
 
</asp:Content>

