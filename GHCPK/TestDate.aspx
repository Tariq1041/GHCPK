<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TestDate.aspx.cs" Inherits="TestDate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title>Style-able and semantic XHTML &#8250; Calendar: a Javascript class for Mootools</title>
	
    <script type="text/javascript" language="javascript" src="images/js/prototype-1.js"></script>
			<script type="text/javascript" language="javascript" src="images/js/prototype-base-extensions.js"></script>
			<script type="text/javascript" language="javascript" src="images/js/prototype-date-extensions.js"></script>
			<script type="text/javascript" language="javascript" src="images/js/behaviour.js"></script>
							<script type="text/javascript" language="javascript" src="images/js/datepicker.js"></script>
							<link rel="stylesheet" href="images/js/datepicker.css">
							<script type="text/javascript" language="javascript" src="images/js/behaviors.js"></script>
			
			
	                      
                            
	
</head>
<body>
	
	<form id="form1" runat="server">


<table border="0" cellspacing="5" cellpadding="0" style="width: 100%; height: 100%">
        <tbody class="text">
            <tr>
                <td valign="top" align="left">
                    <table class="Text" height="100%" width="100%" cellspacing="0" cellpadding="0" border="0">
                        <tr>
                            <td>
                                <table width="100%" cellpadding="0" cellspacing="0">
                                   
                                    <tr>
                                        
                                        <td class="DataHeader" style="color:#0666">
                                           <h3> <asp:Label ID="lblCaption" runat="server" Font-Size="X-Large" 
                                                   BorderColor="#333333" Font-Bold="True" Font-Italic="True">Add New News</asp:Label></h3>
                                        </td>
                                        <td class="DataRight">
                                            <img height="1" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" height="100%">
                                <table width="100%" style="height: 202px">
                                    <tbody class="Text">
                                        <tr>
                                            <td style="color: Red" colspan="2">
                                                &nbsp;<br />
                                                </td>
                                        </tr>
                                        
                                        <tr>
                                            <td align="Left" class="style1" style="width: 379px">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
                                            </td>
                                            <td>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="Left" class="style1" style="width: 379px">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                               <asp:Label ID="lbl_subject" runat="server" Text="Event Subject" Font-Bold="True" 
                                                    Font-Italic="True" Font-Size="Large"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtevent_subject" runat="server" Width="380px" Height="91px" 
                                                    ToolTip="Enter Alphanumeric Only" BorderColor="Silver" BorderStyle="Inset" 
                                                    Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#006600"></asp:TextBox>
                                                <br />
                                            </td>
                                        </tr>

                                                                               

                                        <tr>
                                            <td align="Left" class="style1" style="width: 379px">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                            </td>
                                            <td>
                                                <br />
                                            </td>
                                        </tr>

                                         <tr>
                                            <td align="Left" class="style1" style="width: 379px">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                                <asp:Label ID="lbl_description" runat="server" Text="Event Description" 
                                                    BorderColor="Silver" Font-Bold="True" Font-Italic="True" Font-Size="Large"></asp:Label>
                                            &nbsp;</td>
                                            <td>
                                                <asp:TextBox ID="txtevent_Des" runat="server" Width="382px" Height="161px"
                                                    ToolTip="Enter Alphanumeric Only" BorderColor="Silver" BorderStyle="Inset" 
                                                    Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#006600"></asp:TextBox>
                                                    
                                                <br />
                                            </td>
                                        </tr>

                                        <tr>
                                        
                                        <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                        </tr>

                                    </tbody>
                                </table>
                                
                                <table width="100%" style="height: 50px">
                                    <tbody class="Text">

                                         <tr>
                                         
                                                 <td style="width: 385px; height: 78px;">
                                     
                                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                                         &nbsp;<asp:Label ID="lbl_org_country" runat="server" Text="Organized Country" 
                                                             Font-Bold="True" Font-Italic="True" Font-Size="Large"></asp:Label>
                                
                                                 </td>
                                                <td align="left" style="height: 78px">
                                                    <asp:TextBox ID="txt_country" runat="server" 
                                                        Width="389px" BorderColor="Silver" BorderStyle="Inset" ForeColor="#006600"></asp:TextBox>
                                                 </td>
                                        </tr>

                                         <tr>
                                         
                                                 <td style="width: 385px; height: 78px;">
                                     
                                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                                         <asp:Label ID="lbl_city" runat="server" Text="City" Font-Bold="True" 
                                                             Font-Italic="True" Font-Size="Large"></asp:Label>
                                
                                                 </td>
                                                <td align="left" style="height: 78px">
                                                    <asp:TextBox ID="txt_city" runat="server" 
                                                        Width="389px" BorderColor="Silver" BorderStyle="Inset" ForeColor="#006600"></asp:TextBox>
                                                 </td>
                                        </tr>
                                        <tr>
                                         
                                                 <td style="width: 385px; height: 78px;">
                                     
                                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                                                             ID="lbl_orgztion" runat="server" Text="Organization" Font-Bold="True" 
                                                             Font-Italic="True" Font-Size="Large"></asp:Label>
                                            &nbsp;</td>
                                                <td align="left" style="height: 78px">
                                                    <asp:TextBox ID="txt_org" runat="server" 
                                                        Width="389px" BorderColor="Silver" BorderStyle="Inset" ForeColor="#006600"></asp:TextBox>
                                                 </td>
                                        </tr>
                                         <tr>
                                         
                                                 <td style="width: 385px; height: 78px;">
                                     
                                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                                                             ID="lbl_org_date" runat="server" Text="Organized Date" Font-Bold="True" 
                                                             Font-Italic="True" Font-Size="Large"></asp:Label>
                                            &nbsp;</td>
                                                <td align="left" class="datepicker">                                                 <%--<asp:TextBox ID="txt_orgdate" runat="server" 
                                                        Width="389px" BorderColor="Silver" BorderStyle="Inset" ForeColor="#006600"></asp:TextBox>--%>
			                                                                                                       
                                                                     
                                                                     
	                                                        			                                                                                                       
                                                                <input class="datepicker" />     
                                                                     <br />

                                                                     <asp:Label ID="lbl_date" runat="server" Text="* Please insert date DD/MM/YYYY" ></asp:Label>
	                                                         <%--<input class="datepicker" id="datepick" runat="server" 
                                                        style="border-style: ridge; border-width: inherit; border-color: #FFFFFF" 
                                                        align="left" /><br />--%>

	
                                                                     
                                                                     
                                                                              </td>                                           
                                              
                                                
                                         </tr>
                                       
                                    </tbody>
                                </table>
                                <p>
                                </p>
                                <table width="100%" style="height: 62px">
                                    <tbody class="Text">

                                       
                                     
                                        <tr>
                                            <td class="style1" style="width: 296px">
                                                <asp:HiddenField ID="txthiddenID" runat="server" />
                                                <br />
                                                <br />
                                            </td>
                                            <td style="color: Red"><asp:Label ID="lblError2" runat="server" Font-Bold="True" 
                                                    Font-Size="Medium"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


                    <%--<asp:ImageButton ID="linkSave" runat="server" CssClass="linkWithoutUnderLine" 
                        OnClick="linkSave_Click" ImageUrl="~/images/edit.gif" Height="36px" ToolTip="Save"
                        Width="36px"></asp:ImageButton>
                        &nbsp;&nbsp; |
                        &nbsp;&nbsp;
                      |
                     <asp:ImageButton ID="linkreset" runat="server" 
                        CssClass="linkWithoutUnderLine"  ToolTip="Reset"
                       ImageUrl="~/images/reset.png" Height="35px" Width="37px" 
                        ></asp:ImageButton>--%>

                                            </td>
                                        </tr>
                                       
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp; &nbsp;&nbsp;

                </td>
            </tr>
        </tbody>
    </table>


    </form>
	
</body>
</html>






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
   <%-- <link rel="shortcut icon" href="images/favicon.ico" />--%>
    
    <!-- JavaScripts -->
    <script src="js/jquery-1.10.2.min.js.js" type="text/javascript"></script>
    <script src="js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
    <script src="js/modernizr.js" type="text/javascript"></script>

                            <script type="text/javascript" language="javascript" src="js/prototype-1.js"></script>
			                <script type="text/javascript" language="javascript" src="js/prototype-base-extensions.js"></script>
			                <script type="text/javascript" language="javascript" src="js/prototype-date-extensions.js"></script>
			                <script type="text/javascript" language="javascript" src="js/behaviour.js"></script>
							<script type="text/javascript" language="javascript" src="js//datepicker.js"></script>
							<link rel="stylesheet" href="css/datepicker.css" />
							<script type="text/javascript" language="javascript" src="js//behaviors.js"></script>



   
   
</head>
<body>

    <!-- This one in here is responsive menu for tablet and mobiles -->
     <!-- /responsive_navigation -->


    <header class="site-header">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                   <div class="logo">
                        <a href="index.html" title="OGDCL" rel="home">
                            <img src="images/logo.png" alt="OGDCL">
                        </a>
                    </div> <!-- /.logo -->
                </div> <!-- /.header-left -->

                <div class="col-md-4">
                    
                </div> <!-- /.col-md-4 -->

                <div class="col-md-4 header-right">
                    <ul class="small-links login_width pull-right">
                        <li>
                        <a class="login_color" href="#">
                             <div class="login_icon"></div><asp:Label ID="lbl_login" runat="server" Text="Login"></asp:Label>
                           
                         </a>
                         </li>
                    </ul>
                </div>
            </div>
        </div> <!-- /.container -->

        <div class="nav-bar-main" role="navigation">
            <div class="container">
                <nav class="main-navigation clearfix visible-md visible-lg" role="navigation">
                        <ul class="main-menu sf-menu">
                            <li class="active"><a href="Admin_Home.aspx">Home</a></li>
                                       <li>
                                <a href="about-us.html">Administration</a>
                                <ul>
                                    <li><a href="Menage_User.aspx">Menage User</a></li>
                                    <li><a href="Add_User.aspx">Add User</a></li>
                                    <li><a href="Menage_Role.aspx">Menage Role</a></li>
                                    <li><a href="Add_Role.aspx">Add Role</a></li>
                                    <li><a href="#">link here</a></li>
                                </ul>
                            </li>
							<li><a href="#">Consular Section</a></li>
                            <li><a href="#">Photo Gallery</a>
                            <ul>
                                    <li><a href="Add_Image.aspx">Add Image</a></li>
                                    <li><a href="Manage_Image.aspx">Menage Image</a></li>
                            </ul>
                            </li>
                            <li><a href="News.aspx">News & Events</a>
                            <ul>
                                    <li><a href="Add_News.aspx">Add News</a></li>
                                    <li><a href="Manage_News.aspx">Menage News</a></li>


                                     <li><a href="Add_Event.aspx">Add Events</a></li>
                                    <li><a href="Manage_Events.aspx">Menage Events</a></li>
                                    <li><a href="NewsDescription.aspx">Menage Events</a></li>
                            </ul>
                            </li>
            				<li><a href="News_Page.aspx">Contact Us</a>
                            <ul>
                                    <li><a href="NewsDescription.aspx">Add News</a></li>
                                  </ul>
                            
                            </li>
                        </ul> <!-- /.main-menu -->

                </nav> <!-- /.main-navigation -->
            </div> <!-- /.container -->
        </div> <!-- /.nav-bar-main -->

    </header> <!-- /.site-header -->
    
    
 
    <br />

     <%--<findfksdfsdkfsdkfjksdf></findfksdfsdkfsdkfjksdf>--%>


    <div class="container">
        <div class="row">
            <div class="col-md-test">
                <div class="main-slideshow">
                
                  <%--<asp:ContentPlaceHolder ID="ContentPlaceHolder1" runat="server">

                            </asp:ContentPlaceHolder>--%>


                </div> <!-- /.main-slideshow -->
            </div> <!-- /.col-md-12 --><!-- /.col-md-4 -->
        </div>
    </div>



    <%--<findfksdfsdkfsdkfjksdf></findfksdfsdkfsdkfjksdf>--%>



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


    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/plugins.js" type="text/javascript"> </script>
    <script src="js/custom.js"type="text/javascript"> </script>

</body>
</html>












