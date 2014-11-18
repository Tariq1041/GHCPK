<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Home.aspx.cs" Inherits="Admin_Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html class="no-js" lang="en"> <!--<![endif]-->

<head>
    <title>GHC - Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="" />
   <%-- <meta charset="UTF-8" />
--%>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800' rel='stylesheet' type='text/css' />
        
    <!-- CSS Bootstrap & Custom -->
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" media="screen" type="text/css" />
    <link href="css/font-awesome.min.css" rel="stylesheet" media="screen" type="text/css" />
    <link href="css/animate.css" rel="stylesheet" media="screen" type="text/css" />
    
    <link href="style.css" rel="stylesheet" media="screen" type="text/css" />
     


     <!-- FAVICON -->   
    <link rel="shortcut icon" href="images/favicon.ico" />
    
    <!-- JavaScripts -->
    <script src="js/jquery-1.10.2.min.js.js" type="text/javascript"></script>
    <script src="js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
    <script src="js/modernizr.js" type="text/javascript"></script>

     

    <!--[if lt IE 8]>
	<div style=' clear: both; text-align:center; position: relative;'>
            <a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" alt="" /></a>
        </div>
    <![endif]-->
</head>
<body>

    <!-- This one in here is responsive menu for tablet and mobiles -->
    


    <header class="site-header">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                   <div class="logo">
                        <a href="Admin_Home.aspx" title="GHCPK" rel="home">
                            <img src="images/logo.png" alt="GHCPK">
                        </a>
                    </div> <!-- /.logo -->
                </div> <!-- /.header-left -->

                <div class="col-md-4">
                    
                </div> <!-- /.col-md-4 -->

                <div class="col-md-4 header-right">
                    <ul class="small-links login_width pull-right">
                        <li><a class="login_color" href="Home.aspx"><div class="login_icon"></div><asp:Label ID="lbl_login" runat="server" Text="Login"></asp:Label></a></li>
                    </ul>
                </div> <!-- /.header-right -->
            </div>
        </div> <!-- /.container -->

        <div class="nav-bar-main" role="navigation">
            <div class="container">
                <nav class="main-navigation clearfix visible-md visible-lg" role="navigation">
                       <ul class="main-menu sf-menu">
                            <li class="active"><a href="Admin_Home.aspx">Home</a></li>
                                       <li>
                                <a >Administration</a>
                                <ul>
                                    <li><a href="Menage_User.aspx">Menage User</a></li>
                                    <li><a href="Add_User.aspx">Add User</a></li>
                                    <li><a href="Menage_Role.aspx">Menage Role</a></li>
                                    <li><a href="Add_Role.aspx">Add Role</a></li>
                                   
                                </ul>
                            </li>
							<li><a href="#">Consular Section</a></li>

                            <li><a href="Admin_Portfolio.aspx">Photo Gallery</a>
                            <ul>
                                    <li><a href="Add_Image.aspx">Add Image</a></li>
                                    <li><a href="Manage_Image.aspx">Menage Image</a></li>
                            </ul>
                            </li>
                            <li><a href="News_view.aspx">News & Events</a>
                            <ul>
                                    
                                    <li><a href="Add_News.aspx">Add News</a></li>
                                    <li><a href="Manage_News.aspx">Menage News</a></li>

                                     <li><a href="Event_view.aspx">Event view</a></li>
                                     <li><a href="Add_Event.aspx">Add Events</a></li>
                                    <li><a href="Manage_Events.aspx">Menage Events</a></li>
                                    <%--<li><a href="NewsDescription.aspx">Menage Events</a></li>--%>
                            </ul>
                            </li>
            				
                             <li><a href="AdminBlog_List.aspx">Blogs</a>
                                <ul>
                                 <li><a href="Blogs_Description.aspx">Blogs Description</a></li>
                                
                                
                                </ul>
                             
                             </li>
                            <li><a href="Admin_Contactus.aspx">Contact Us</a>
                                                       
                            </li>
                            
                        </ul>

                </nav> <!-- /.main-navigation -->
            </div> <!-- /.container -->
        </div> <!-- /.nav-bar-main -->

    </header> <!-- /.site-header -->
    
    
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="main-slideshow">
                    <div class="flexslider">
                        <ul class="slides">
                            <li>
                                <img src="images/slide7.jpg" />
                            </li>
                            <li>
                                <img src="images/slide6.jpg" />
                            </li>
                            <li>
                                <img src="images/slide7.jpg" />
                            </li>
                            <li>
                                <img src="images/slide6.jpg" />
                            </li>
                            <li>
                                <img src="images/slide7.jpg" />
                            </li>
                            <li>
                                <img src="images/slide6.jpg" />
                            </li>
                        </ul> <!-- /.slides -->
                    </div> <!-- /.flexslider -->
                </div> <!-- /.main-slideshow -->
            </div> <!-- /.col-md-12 -->
            
            <div class="col-md-4" >
                 <div class="widget-main news_height" >
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
                               
                                        <h5 class="blog-list-title"><a href="AdminNews_View.aspx?ID=<%#Eval("id")%>">  <%# Eval("News_Subject")%></a></h5>  

                                        <p class="blog-list-meta small-text"><span><a href="#"><%# Eval("Created_Date")%></a></span></p>

                                       
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
                            </div> <!-- /.widget-inner -->
                            </marquee>
                        </div> <!-- /.widget-main -->
            </div> <!-- /.col-md-4 -->
        </div>
    </div>


    <div class="container">
        <div class="row">
            
            <!-- Here begin Main Content -->
            <div class="col-md-8">
                <div class="row">
                    <div class="col-md-12">
                        <div class="widget-item">
                            <h2 class="welcome-text">Welcome to Ghana High Commission</h2>
                            <p>Welcome to The Ghana High Commission. Our mission is to co-ordinate, promote and protect the national interests of Ghana within the United Kingdom and the Republic of Ireland. </p>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
                        </div> <!-- /.widget-item -->
                    </div> <!-- /.col-md-12 -->
                </div> <!-- /.row -->


                <div class="row">
                    <div class="col-md-12">
                        <div class="widget-item">
                            <h2 class="welcome-text">About the Mission</h2>
                            <p>The Mission of the Ghana High Commission is to co-ordinate, promote and protect the national interests of Ghana within the United Kingdom in a manner as to meaningfully contribute to the enhancement of Ghana's security and socio-economic prosperity.

For the effective realisation of its mission, the High Commission operates two offices at 13 Belgrave Square, London, SW1X 8PN and 104 Highgate Hill, London N6 5HE as well as an Honorary Consulate in 17 Bellevue Road, Ayr KA7 2SA Glasgow, Scotland and a Consulate in 74 Haddington Road, Dublin 4, Ireland.

The Mission provides an efficient one-stop reference for general information on Ghana, an informed market of policies and procedures for the effective promotion of Trade, Investment, Tourism, Immigration and Consular services.

The High Commission also produces and disseminates some publications on the various aspects of Ghana's national activity. These publications can be requested from the Information Section at 13 Belgrave Square, London, SW1X 8PN or the Trade Section at 104 Highgate Hill, London N6 5HE.

The Ghana High Commission ensures oversight co-ordination of four Ghanaian parastatals located in London namely, the Cocoa Marketing Company, Ghana Forestry Commission, Ghana International Bank and the Universities of Ghana. These parastatals provide specialised services in their respective areas of operations.

The Ghana International Bank also provides financial advice relevant to doing business in Ghana.</p>
                        </div> <!-- /.widget-item -->
                    </div> <!-- /.col-md-12 -->
                </div> <!-- /.row -->
               

            </div> <!-- /.col-md-8 -->
            
            <!-- Here begin Sidebar -->
            <div class="col-md-4">
				
                <div class="widget-main bottom_widgets_height">
                            <div class="widget-main-title">
                                <h4 class="widget-title">Events</h4>
                            </div> <!-- /.widget-main-title -->

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
                                 
                                <div class="blog-list-post clearfix">
                                    <div class="blog-list-details">
                                        <h5 class="blog-list-title"><a href="Event_view.aspx">Read more</a></h5>
                                    </div>
                                </div>
                            </div> <!-- /.widget-inner -->
                             </ItemTemplate>
                                </asp:ListView>

                        </div> <!-- /.widget-main -->
                
                <div class="widget-main">
                   <div class="widget-main-title">
                        <h4 class="widget-title">Our Gallery</h4>
                    </div>
                                               
                    <div class="widget-inner">
                        <div class="gallery-small-thumbs clearfix">

                          <asp:ListView ID="ListView3" runat="server">
                              <ItemTemplate>
                            <div class="thumb-small-gallery">
                                <a class="fancybox" rel="gallery1" href="<%# Eval("Picture_Path")%>" title="Gallery Tittle One">
                                    <img src="<%# Eval("Picture_Path")%>" alt="" />
                                </a>
                            </div>
                            </ItemTemplate>
                            </asp:ListView>
                                                        
                        </div> <!-- /.galler-small-thumbs -->
                    </div> <!-- /.widget-inner -->

                     
                                <h5 class="blog-list-title">
                            <a href="Admin_Portfolio.aspx">See more</a>
                            </h5>
<%--</marquee>--%>
                </div><!-- /.widget-main -->
				  
            </div>
        </div>
    </div>

    <!-- begin The Footer -->
    <footer class="site-footer">
        <div class="container">
            <div class="row">
            
                <div class="col-md-2">
                    
                </div>
                <div class="col-md-2">
                    
                </div>
                
                <div class="col-md-2">
                    
                </div>
                <div class="col-md-2">
                    
                </div>
                <div class="col-md-4">
                    <div class="footer-widget">
                        <ul class="footer-media-icons">
                            <li><a class="fa fa-facebook facebook_bg" href="#"></a></li>
                            <li><a class="fa fa-twitter twiter_bg" href="#"></a></li>
                            <li><a class="fa fa-google-plus googleplus_bg" href="#"></a></li>
                            <li><a class="fa fa-linkedin linkedin_bg" href="#"></a></li>
                        </ul>
                    </div>
                </div>
            </div> <!-- /.row -->

            <div class="bottom-footer">
                <div class="row">
                    <div class="col-md-5">
                        <p class="small-text">©2014 Ghana High Commission</p>
                    </div> <!-- /.col-md-5 -->
                    <div class="col-md-7">
                        <ul class="footer-nav">
                           <li><a href="Admin_Home.aspx">Home</a></li>
                            <li><a href="#">Consular Section</a></li>
                            <li><a href="Admin_Portfolio.aspx">Photo Gallery</a></li>
                            <li><a href="News_view.aspx">News</a></li>
                            <li><a href="Event_view.aspx">Events</a></li>
                            <li><a href="AdminBlog_List.aspx">Blogs</a></li>
                            <li><a href="Admin_Contactus.aspx">Contact Us</a></li>
                        </ul>
                    </div> <!-- /.col-md-7 -->
                </div> <!-- /.row -->
            </div> <!-- /.bottom-footer -->

        </div> <!-- /.container -->
    </footer> <!-- /.site-footer -->


    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/custom.js"></script>

</body>
</html>
