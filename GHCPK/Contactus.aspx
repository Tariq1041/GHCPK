<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Contactus" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<head>
    <title>GHC -  Contact</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta charset="UTF-8">

    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800' rel='stylesheet' type='text/css'>
        
    <!-- CSS Bootstrap & Custom -->
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" media="screen">
    <link href="css/font-awesome.min.css" rel="stylesheet" media="screen">
    <link href="css/animate.css" rel="stylesheet" media="screen">
    
    <link href="style.css" rel="stylesheet" media="screen">
     
     <!-- FAVICON -->   
    <link rel="shortcut icon" href="images/favicon.ico">
    
    <!-- JavaScripts -->
    <script src="js/jquery-1.10.2.min.js.js"></script>
    <script src="js/jquery-migrate-1.2.1.min.js"></script>
    <script src="js/modernizr.js"></script>
    <!--[if lt IE 8]>
	<div style=' clear: both; text-align:center; position: relative;'>
            <a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" alt="" /></a>
        </div>
    <![endif]-->
</head>
<body>

    <!-- This one in here is responsive menu for tablet and mobiles -->
    <div class="responsive-navigation visible-sm visible-xs">
        <a href="#" class="menu-toggle-btn">
            <i class="fa fa-bars"></i>
        </a>
        <div class="responsive_menu">
              <ul class="main-menu sf-menu">
                           
                            <li><a href="Home.aspx">Home</a></li>

                           <%-- <li><a href="#">About Us</a></li>--%>

							<li><a href="#">Consular Section</a></li>

                            <li><a href="Portfolio.aspx">Photo Gallery</a></li>

                            <li><a href="NewsDescription.aspx">News</a></li>

                              <li><a href="EventDescription.aspx">Events</a></li>

            				<li><a href="Contactus.aspx">Contact Us</a></li>
                           
                           </ul>
        </div> <!-- /.responsive_menu -->
    </div> <!-- /responsive_navigation -->


    <header class="site-header">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                   <div class="logo">
                        <a href="index.html" title="" rel="home">
                            <img src="images/logo.png" alt="">
                        </a>
                    </div> <!-- /.logo -->
                </div> <!-- /.header-left -->

                <div class="col-md-4">
                    
                </div> <!-- /.col-md-4 -->

                <div class="col-md-4 header-right">
                    <ul class="small-links login_width pull-right">
                        <li><a class="login_color" href="login.aspx"><div class="login_icon"></div>Login</a></li>
                    </ul>
                </div> <!-- /.header-right -->
            </div>
        </div> <!-- /.container -->

        <div class="nav-bar-main" role="navigation">
            <div class="container">
                <nav class="main-navigation clearfix visible-md visible-lg" role="navigation">
                        <ul class="main-menu sf-menu">
                           
                            <li><a href="Home.aspx">Home</a></li>

                           <%-- <li><a href="#">About Us</a></li>--%>

							<li><a href="#">Consular Section</a></li>

                            <li><a href="Portfolio.aspx">Photo Gallery</a></li>

                            <li><a href="NewsDescription.aspx">News</a></li>

                              <li><a href="EventDescription.aspx">Events</a></li>

            				<li><a href="Contactus.aspx">Contact Us</a></li>
                           
                           </ul>

                </nav> <!-- /.main-navigation -->
            </div> <!-- /.container -->
        </div> <!-- /.nav-bar-main -->

    </header> <!-- /.site-header -->
    
    <form id="frm" runat="server">
    <div class="container" runat="server" >
        <div class="row">
            
            <!-- Here begin Main Content -->
            <div class="col-md-8">
                <div class="contact-page-content">
                    <div class="contact-heading">
                        <h3>Contact Us</h3>
                    </div>
                    <div class="contact-form clearfix">
                        <p class="full-row">
                            <span class="contact-label">
                                <label for="name-id">First Name:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </span>
                            <asp:TextBox name="name-id" runat="server" id="name_id"></asp:TextBox>
                          <%--  <input type="text" --%>
                        </p>
                        <p class="full-row"> 
                            <span class="contact-label">
                                <label for="surname-id">Last Name:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </span>
                            <asp:TextBox name="surname_id" runat="server" id="surname_id"></asp:TextBox>
                            <%--<input type="text" name="surname_id" runat="server" id="surname_id">--%>
                        </p>
                        <p class="full-row">
                            <span class="contact-label">
                                <label for="email-id">E-mail:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </span>
                            <asp:TextBox name="email_id" runat="server" id="email_id"></asp:TextBox>
                           <%-- <input type="text" name="email-id" id="email_id" runat="server" />--%>
                           <%-- <asp:TextBox type="text" name="email-id" id="email-id" runat="server"></asp:TextBox>--%>
                            
                        </p>
                      
                            <span class="contact-label">
                                <label for="message">Message:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </span>
                            <textarea  id="message" runat="server" name="message"></textarea>
                            <%--<textarea></textarea>--%>
                       
                        <p class="full-row">

                         <%--<asp:Panel ID="pnl" runat="server" >--%>
                            <%--<input type="submit" value="Send Message"  runat="server" name="" class="mainBtn">--%>
                            <%-- <asp:ImageButton ID="btn_img"  OnClick=""  />--%>
                           <%-- <asp:Button ID="btn_click" Text="Send Message"  runat="server" ></asp:Button>--%>
                              <%-- </asp:Panel>--%>

                             
                              <asp:ImageButton ID="btn_img" runat="server" Height="54px" 
                                onclick="btn_img_Click" Width="95px" />
                        </p>
                    </div>
                </div>
            </div>
            
            <!-- Here begin Sidebar -->
            <div class="col-md-4">
                
                <div class="widget-main">
                    <div class="widget-main-title">
                        <h4 class="widget-title">Our Gallery</h4>
                    </div>
                    <div class="widget-inner">
                        <div class="gallery-small-thumbs clearfix">
                            <div class="thumb-small-gallery">
                                <a class="fancybox" rel="gallery1" href="images/gallery/gallery_img1.jpg" title="Gallery Tittle One">
                                    <img src="images/gallery/img66.jpg" alt="" />
                                </a>
                            </div>
                            <div class="thumb-small-gallery">
                                <a class="fancybox" rel="gallery1" href="images/gallery/gallery_img1.jpg" title="Gallery Tittle One">
                                    <img src="images/gallery/img66.jpg" alt="" />
                                </a>
                            </div>
                            <div class="thumb-small-gallery">
                                <a class="fancybox" rel="gallery1" href="images/gallery/gallery_img1.jpg" title="Gallery Tittle One">
                                    <img src="images/gallery/img66.jpg" alt="" />
                                </a>
                            </div>
                            <div class="thumb-small-gallery">
                                <a class="fancybox" rel="gallery1" href="images/gallery/gallery_img1.jpg" title="Gallery Tittle One">
                                    <img src="images/gallery/img66.jpg" alt="" />
                                </a>
                            </div>
                            <div class="thumb-small-gallery">
                                <a class="fancybox" rel="gallery1" href="images/gallery/gallery_img1.jpg" title="Gallery Tittle One">
                                    <img src="images/gallery/img66.jpg" alt="" />
                                </a>
                            </div>
                            <div class="thumb-small-gallery">
                                <a class="fancybox" rel="gallery1" href="images/gallery/gallery_img1.jpg" title="Gallery Tittle One">
                                    <img src="images/gallery/img66.jpg" alt="" />
                                </a>
                            </div>
                            <div class="thumb-small-gallery">
                                <a class="fancybox" rel="gallery1" href="images/gallery/gallery_img1.jpg" title="Gallery Tittle One">
                                    <img src="images/gallery/img66.jpg" alt="" />
                                </a>
                            </div>
                            <div class="thumb-small-gallery">
                                <a class="fancybox" rel="gallery1" href="images/gallery/gallery_img1.jpg" title="Gallery Tittle One">
                                    <img src="images/gallery/img66.jpg" alt="" />
                                </a>
                            </div>
                            
                            <h5 class="blog-list-title">
                            <a href="blog-single.html">See more</a>
                            </h5>
                            
                        </div> <!-- /.galler-small-thumbs -->
                    </div> <!-- /.widget-inner -->
                </div>
                			  
            </div>
        </div>
    </div>
    </form>
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
                            <li><a href="index.html">Home</a></li>
                            <li><a href="#">Consular Section</a></li>
                            <li><a href="#">Photo Gallery</a></li>
                            <li><a href="#">News & Events</a></li>
                            <li><a href="#">Useful Links</a></li>
                            <li><a href="#">FAQ</a></li>
                            <li><a href="#">Contact Us</a></li>
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