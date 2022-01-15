<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
    <!-- Place favicon.ico in the root directory -->

    <!-- CSS here -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/nice-select.css">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/gijgo.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/slicknav.css">
    <link rel="stylesheet" href="css/style.css">
    <!-- <link rel="stylesheet" href="css/responsive.css"> -->

   
</head>
<body>
    <form id="form1" runat="server">
         <!-- header-start -->
        <header>
        <div class="header-area ">
            <div id="sticky-header" class="main-header-area">
                <div class="container-fluid p-0">
                    <div class="row align-items-center no-gutters">
                        <div class="col-xl-5 col-lg-6">
                            <div class="main-menu  d-none d-lg-block">
                                <nav>
                                    <ul id="navigation">
                                        <asp:Repeater ID="RptMenu" runat="server" DataSourceID="dsMenu">
                                            <ItemTemplate>
                                                <li>
                                                    <a class="active" href="<%#Eval("SayfaIcerik") %>.aspx"><%#Eval("SayfaBaslik") %></a>

                                                </li>
                                            </ItemTemplate>
                                            
                                        </asp:Repeater>
                                       
                                        
                                        <li><a href="contact.aspx">Contact</a></li>
                                        <li><a href="login.aspx">Login</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="col-xl-2 col-lg-2">
                            <div class="logo-img">
                                <a href="Default.aspx">
                                    <img src="img/logo.png" alt="">
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-5 col-lg-4 d-none d-lg-block">
                            <div class="book_room">
                                <div class="socail_links">
                                    <ul>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-facebook-square"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-twitter"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-instagram"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="book_btn d-none d-lg-block">
                                    <a  href="rez.aspx">Book A Room</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- header-end -->
        

        
        

        
    <!-- slider_area_start -->
    <div class="slider_area">
        <div class="slider_active owl-carousel">

            <asp:Repeater ID="RptSlayder" runat="server" DataSourceID="dsSlayder">
                <ItemTemplate>
            <div class="single_slider d-flex align-items-center justify-content-center slider_bg_1" style="background-image:url('<%# Eval("slayderResim") %>')">

                <div class="container">

                    <div class="row">
                        <div class="col-xl-12">
                            <div class="slider_text text-center">
                                <h3><%# Eval("slayderBaslik") %></h3>
                                <p><%# Eval("slayderOzet") %></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                </ItemTemplate>
            </asp:Repeater>
           
        </div>
    </div>
    <!-- slider_area_end -->
        


            
        

         

    <!-- about_area_start -->
    <div class="about_area">
        <div class="container">
            <div class="row">
                <div class="col-xl-5 col-lg-5">
                    <div class="about_info">
                        <div class="section_title mb-20px">
                            <asp:DataList ID="ddl_makaled" runat="server" >
                              <ItemTemplate>
                            <span>About Us</span>
                                  <h3><asp:Literal ID="Literal1" runat="server" Text='<%# Eval("makaleBaslik") %>'></asp:Literal></h3>
                           
                        </div>
                       <p><asp:Literal ID="Literal2" runat="server" Text='<%# Eval("makaleOzet") %>'></asp:Literal></p>
                        <a href="#" class="line-button">Learn More</a>
                            </ItemTemplate>
                        </asp:DataList>
                    </div>
                </div>
                </div>
                <div class="col-xl-7 col-lg-7">
                    <div class="about_thumb d-flex">
                        <asp:Repeater ID="Rpt_about" runat="server" DataSourceID="dsAbout">
                            <ItemTemplate>
                                <div class="img_<%#Eval("makaleID") %>">
                                    <img src="<%# Eval("makaleResim") %>" alt=" "/>
                            
                                 </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        
                    </div>
                </div>
                
            </div>
        </div>
    </div>
    <!-- about_area_end -->
        <div>
            
           
        </div>
    <!-- offers_area_start 
    <div class="offers_area">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="section_title text-center mb-100">
                        <span>Our Offers</span>
                        <h3>Ongoing Offers</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-4 col-md-4">
                    <div class="single_offers">
                        <div class="about_thumb">
                            <img src="img/offers/1.png" alt="">
                        </div>
                        <h3>Up to 35% savings on Club <br>
                            rooms and Suites</h3>
                        <ul>
                            <li>Luxaries condition</li>
                            <li>3 Adults & 2 Children size</li>
                            <li>Sea view side</li>
                        </ul>
                        <a href="#" class="book_now">book now</a>
                    </div>
                </div>
                <div class="col-xl-4 col-md-4">
                    <div class="single_offers">
                        <div class="about_thumb">
                            <img src="img/offers/2.png" alt="">
                        </div>
                        <h3>Up to 35% savings on Club <br>
                            rooms and Suites</h3>
                        <ul>
                            <li>Luxaries condition</li>
                            <li>3 Adults & 2 Children size</li>
                            <li>Sea view side</li>
                        </ul>
                        <a href="#" class="book_now">book now</a>
                    </div>
                </div>
                <div class="col-xl-4 col-md-4">
                    <div class="single_offers">
                        <div class="about_thumb">
                            <img src="img/offers/3.png" alt="">
                        </div>
                        <h3>Up to 35% savings on Club <br>
                            rooms and Suites</h3>
                        <ul>
                            <li>Luxaries condition</li>
                            <li>3 Adults & 2 Children size</li>
                            <li>Sea view side</li>
                        </ul>
                        <a href="#" class="book_now">book now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- offers_area_end -->

    <!-- video_area_start -->
          <asp:Repeater ID="RptVideo" runat="server" DataSourceID="dbVideo">
                <ItemTemplate>
    <div class="video_area video_bg overlay" style="background-image:url('<%# Eval("videoBG") %>')">
        
        <div class="video_area_inner text-center">
                    

                    <span><%# Eval("videoBaslik") %></span>
                    <h3><%# Eval("videoOzet") %> </h3>
                    <a href="<%# Eval("videoLink") %>" class="video_btn popup-video">
                        <i class="fa fa-play"></i>
                    </a>

                
            
            
        </div>
    </div>
              </ItemTemplate>      
            </asp:Repeater>
    <!-- video_area_end -->

    <!-- about_area_start -->
    <div class="about_area">
        <div class="container">
            <div class="row">
                <div class="col-xl-7 col-lg-7">
                    <div class="about_thumb2 d-flex">
                        <asp:Repeater ID="Rpt_m2_resim" runat="server" DataSourceID="dsMakaleIMG2">
                            <ItemTemplate>
                            <div class="img_2">
                            <img src="<%# Eval("makaleResim") %>" alt="">
                        </div>
                        </ItemTemplate>
                        </asp:Repeater>
                        
                        
                    </div>
                </div>
                <div class="col-xl-5 col-lg-5">
                    <div class="about_info">
                        <div class="section_title mb-20px">
                            <asp:Repeater ID="Rpt_makale2" runat="server" DataSourceID="dsMakale2">
                                <ItemTemplate>
                                    <span><%# Eval("makaleBaslik") %></span>

                            <h3><%# Eval("makaleOzet") %></h3>
                        </div>
                        <p>
                            <%# Eval("makaleIcerik") %>
                        </p>
                        <a href="#" class="line-button">Learn More</a>

                                </ItemTemplate>
                        </asp:Repeater>
                            
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- about_area_end -->

    <!-- features_room_startt -->
    <div class="features_room">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="section_title text-center mb-100">
                        <span>Featured Rooms</span>
                        <h3>Choose a Better Room</h3>
                    </div>
                </div>
            </div>
        </div>
        <div class="rooms_here">
            <asp:Repeater ID="RptOdalar" runat="server" DataSourceID="dbOdalar">
                     <ItemTemplate>
            <div class="single_rooms">
                 
                <div class="room_thumb">
                   
                        

                            <img src="<%# Eval("odaResim") %>" alt="">
                                <div class="room_heading d-flex justify-content-between align-items-center">
                                    <div class="room_heading_inner">
                                        <span>From <%# Eval("odaFiyat") %>/night</span>
                                        <h3><%# Eval("odaTur") %></h3>
                                    </div>
                                    <a href="#" class="line-button">book now</a>
                                </div>


                       


                  
                    
                    
                </div>
                          
            </div>
            </ItemTemplate>
                       </asp:Repeater>
        </div>
    </div>
    <!-- features_room_end -->

    <!-- forQuery_start -->
    <div class="forQuery">
        <div class="container">
            <div class="row">
                <div class="col-xl-10 offset-xl-1 col-md-12">
                    <div class="Query_border">
                        <div class="row align-items-center justify-content-center">
                            <div class="col-xl-6 col-md-6">
                                <div class="Query_text">
                                    <p>For Reservation 0r Query?</p>
                                </div>
                            </div>
                            <div class="col-xl-6 col-md-6">
                                <div class="phone_num">
                                    <a href="#" class="mobile_no">+10 576 377 4789</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- forQuery_end-->

    <!-- instragram_area_start -->
    <div class="instragram_area">
        <div class="single_instagram">
            <img src="img/instragram/1.png" alt="">
            <div class="ovrelay">
                <a href="#">
                    <i class="fa fa-instagram"></i>
                </a>
            </div>
        </div>
        <div class="single_instagram">
            <img src="img/instragram/2.png" alt="">
            <div class="ovrelay">
                <a href="#">
                    <i class="fa fa-instagram"></i>
                </a>
            </div>
        </div>
        <div class="single_instagram">
            <img src="img/instragram/3.png" alt="">
            <div class="ovrelay">
                <a href="#">
                    <i class="fa fa-instagram"></i>
                </a>
            </div>
        </div>
        <div class="single_instagram">
            <img src="img/instragram/4.png" alt="">
            <div class="ovrelay">
                <a href="#">
                    <i class="fa fa-instagram"></i>
                </a>
            </div>
        </div>
        <div class="single_instagram">
            <img src="img/instragram/5.png" alt="">
            <div class="ovrelay">
                <a href="#">
                    <i class="fa fa-instagram"></i>
                </a>
            </div>
        </div>
    </div>
    <!-- instragram_area_end -->

    <!-- footer -->
    <footer class="footer">
        <div class="footer_top">
            <div class="container">
                <div class="row">
                    <div class="col-xl-3 col-md-6 col-lg-3">
                        <div class="footer_widget">
                            <h3 class="footer_title">
                                address
                            </h3>
                            <p class="footer_text">
                                Kucuk Ayasofya Cad No:28 Sultanahmet 34122 <br>
                                Fatih, Istanbul Türkiye
                            </p>
                            <a href="#" class="line-button">Get Direction</a>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6 col-lg-3">
                        <div class="footer_widget">
                            <h3 class="footer_title">
                                Reservation
                            </h3>
                            <p class="footer_text">+10 367 267 2678 <br>
                                reservation@montana.com</p>
                        </div>
                    </div>
                    <div class="col-xl-2 col-md-6 col-lg-2">
                        <div class="footer_widget">
                            <h3 class="footer_title">
                                Navigation
                            </h3>
                            <ul>
                                <li><a href="#">Home</a></li>
                                <li><a href="#">Rooms</a></li>
                                <li><a href="#">About</a></li>
                                <li><a href="#">News</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xl-4 col-md-6 col-lg-4">
                        <div class="footer_widget">
                            <h3 class="footer_title">
                                Newsletter
                            </h3>
                            <form action="#" class="newsletter_form">
                                <input type="text" placeholder="Enter your mail">
                                <button type="submit">Sign Up</button>
                            </form>
                            <p class="newsletter_text">Subscribe newsletter to get updates</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copy-right_text">
            <div class="container">
                <div class="footer_border"></div>
                <div class="row">
                    <div class="col-xl-8 col-md-7 col-lg-9">
                        <p class="copy_right">
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </div>
                    <div class="col-xl-4 col-md-5 col-lg-3">
                        <div class="socail_links">
                            <ul>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-facebook-square"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-twitter"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-instagram"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- link that opens popup -->

    <!-- form itself end-->
        
    <!-- form itself end -->

    <!-- JS here -->
    <script src="js/vendor/modernizr-3.5.0.min.js"></script>
    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/ajax-form.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <script src="js/scrollIt.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/nice-select.min.js"></script>
    <script src="js/jquery.slicknav.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/gijgo.min.js"></script>

    <!--contact js-->
    <script src="js/contact.js"></script>
    <script src="js/jquery.ajaxchimp.min.js"></script>
    <script src="js/jquery.form.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/mail-script.js"></script>

    <script src="js/main.js"></script>
    <script>
        $('#datepicker').datepicker({
            iconsLibrary: 'fontawesome',
            icons: {
                rightIcon: '<span class="fa fa-caret-down"></span>'
            }
        });
        $('#datepicker2').datepicker({
            iconsLibrary: 'fontawesome',
            icons: {
                rightIcon: '<span class="fa fa-caret-down"></span>'
            }

        });
    </script>

        <asp:SqlDataSource ID="dsMenu" runat="server" ConnectionString="<%$ ConnectionStrings:webDBConnectionString %>" SelectCommand="SELECT * FROM [Sayfalar] WHERE ([sayfaDurum] = @sayfaDurum)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Aktif" Name="sayfaDurum" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="dsSlayder" runat="server" ConnectionString="<%$ ConnectionStrings:webDBConnectionString %>" SelectCommand="SELECT * FROM [Slayder]"></asp:SqlDataSource>
        


        <asp:SqlDataSource ID="dsAbout" runat="server" ConnectionString="<%$ ConnectionStrings:webDBConnectionString %>" SelectCommand="SELECT [makaleID], [makaleResim] FROM [Makale] WHERE ([makaleID] &lt;= @makaleID)">
            <SelectParameters>
                <asp:Parameter DefaultValue="2" Name="makaleID" Type="Int32" />
            </SelectParameters>
    </asp:SqlDataSource>

        <asp:SqlDataSource ID="dsMakale2" runat="server" ConnectionString="<%$ ConnectionStrings:webDBConnectionString %>" SelectCommand="SELECT [makaleBaslik], [makaleOzet], [makaleIcerik] FROM [Makale] WHERE ([makaleID] = @makaleID)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="3" Name="makaleID" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
        <asp:SqlDataSource ID="dsMakaleIMG2" runat="server" ConnectionString="<%$ ConnectionStrings:webDBConnectionString %>" SelectCommand="SELECT [makaleID], [makaleResim] FROM [Makale] WHERE (([makaleID] &gt; @makaleID) AND ([makaleID] &lt;= @makaleID2))">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="2" Name="makaleID" Type="Int32" />
                                <asp:Parameter DefaultValue="4" Name="makaleID2" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>

        <asp:SqlDataSource ID="dbVideo" runat="server" ConnectionString="<%$ ConnectionStrings:webDBConnectionString %>" SelectCommand="SELECT * FROM [Video]"></asp:SqlDataSource>
            
        <asp:SqlDataSource ID="dbOdalar" runat="server" ConnectionString="<%$ ConnectionStrings:webDBConnectionString %>" SelectCommand="SELECT [odaID], [odaTur], [odaFiyat], [odaResim] FROM [Odalar]"></asp:SqlDataSource>
                    
    </form>
</body>
</html>
