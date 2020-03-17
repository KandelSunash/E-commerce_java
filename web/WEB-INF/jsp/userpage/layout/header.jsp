<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Smart Bazaar an E-commerce Online Shopping Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Smart Bazaar Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- Custom Theme files -->
        <link href="${pageContext.servletContext.contextPath}/resources/user/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="${pageContext.servletContext.contextPath}/resources/user/css/style.css" rel="stylesheet" type="text/css" media="all" /> 
        <link href="${pageContext.servletContext.contextPath}/resources/user/css/menu.css" rel="stylesheet" type="text/css" media="all" /> <!-- menu style --> 
        <link href="${pageContext.servletContext.contextPath}/resources/user/css/ken-burns.css" rel="stylesheet" type="text/css" media="all" /> <!-- banner slider --> 
        <link href="${pageContext.servletContext.contextPath}/resources/user/css/animate.min.css" rel="stylesheet" type="text/css" media="all" /> 
        <link href="${pageContext.servletContext.contextPath}/resources/user/css/owl.carousel.css" rel="stylesheet" type="text/css" media="all"> <!-- carousel slider -->  
        <!-- //Custom Theme files -->
        <!-- font-awesome icons -->
        <link href="${pageContext.servletContext.contextPath}/resources/user/css/font-awesome.css" rel="stylesheet"> 
        <!-- //font-awesome icons -->
        <!-- js -->
        <script src="${pageContext.servletContext.contextPath}/resources/user/js/jquery-2.2.3.min.js"></script> 
        <!-- //js --> 
        <!-- web-fonts -->
        <link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Lovers+Quarrel' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Offside' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Tangerine:400,700' rel='stylesheet' type='text/css'>
        <!-- web-fonts --> 
        <script src="${pageContext.servletContext.contextPath}/resources/user/js/owl.carousel.js"></script>  
        <script>
            $(document).ready(function () {
                $("#owl-demo").owlCarousel({
                    autoPlay: 3000, //Set AutoPlay to 3 seconds 
                    items: 4,
                    itemsDesktop: [640, 5],
                    itemsDesktopSmall: [480, 2],
                    navigation: true

                });
            });
        </script>
        <script src="${pageContext.servletContext.contextPath}/resources/user/js/jquery-scrolltofixed-min.js" type="text/javascript"></script>
        <script>
            $(document).ready(function () {

                // Dock the header to the top of the window when scrolled past the banner. This is the default behaviour.

                $('.header-two').scrollToFixed();
                // previous summary up the page.

                var summaries = $('.summary');
                summaries.each(function (i) {
                    var summary = $(summaries[i]);
                    var next = summaries[i + 1];

                    summary.scrollToFixed({
                        marginTop: $('.header-two').outerHeight(true) + 10,
                        zIndex: 999
                    });
                });
            });
        </script>
        <!-- start-smooth-scrolling -->
        <script type="text/javascript" src="${pageContext.servletContext.contextPath}/resources/user/js/move-top.js"></script>
        <script type="text/javascript" src="${pageContext.servletContext.contextPath}/resources/user/js/easing.js"></script>	
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <!-- //end-smooth-scrolling -->
        <!-- smooth-scrolling-of-move-up -->
        <script type="text/javascript">
            $(document).ready(function () {

                var defaults = {
                    containerID: 'toTop', // fading element id
                    containerHoverID: 'toTopHover', // fading element hover id
                    scrollSpeed: 1200,
                    easingType: 'linear'
                };

                $().UItoTop({easingType: 'easeOutQuart'});

            });
        </script>
        <!-- //smooth-scrolling-of-move-up -->
        <script src="${pageContext.servletContext.contextPath}/resources/user/js/bootstrap.js"></script>	
        <!--        <script type="text/javascript">
                $(document).ready(function() {
                
                        var defaults = {
                                containerID: 'toTop', // fading element id
                                containerHoverID: 'toTopHover', // fading element hover id
                                scrollSpeed: 1200,
                                easingType: 'linear' 
                        };
                        
                        $().UItoTop({ easingType: 'easeOutQuart' });
                        
                });
        </script>-->
        <!-- //smooth-scrolling-of-move-up -->  
        <!-- the jScrollPane script -->
        <script type="text/javascript" src="${pageContext.servletContext.contextPath}/resources/user/js/jquery.jscrollpane.min.js"></script>
        <script type="text/javascript" id="sourcecode">
                    $(function ()
                    {
                        $('.scroll-pane').jScrollPane();
                    });
        </script>
        <!-- //the jScrollPane script -->
        <script type="text/javascript" src="${pageContext.servletContext.contextPath}/resources/user/js/jquery.mousewheel.js"></script>
        <!-- the mousewheel plugin --> 
    </head>
    <body>
        <!--        <div class="agileits-modal modal fade" id="myModal88" tabindex="-1" role="dialog" aria-labelledby="myModal88"
                     aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title" id="myModalLabel"><i class="fa fa-map-marker" aria-hidden="true"></i> Location</h4>
                            </div>
                            <div class="modal-body modal-body-sub"> 
                                <h5>Select your delivery location </h5>  
                                <select class="form-control bfh-states" data-country="US" data-state="CA">
                                    <option value="">Select Your location</option>
                                    <option value="AL">Alabama</option><option value="AK">Alaska</option><option value="AS">American Samoa</option><option value="AZ">Arizona</option><option value="AR">Arkansas<option value="CA">California</option><option value="CO">Colorado</option><option value="CT">Connecticut</option><option value="DE">Delaware</option><option value="DC">District of Columbia</option><option value="FM">Federated States Of Micronesia</option><option value="FL">Florida</option><option value="GA">Georgia</option><option value="GU">Guam</option><option value="HI">Hawaii</option><option value="ID">Idaho</option><option value="IL">Illinois</option><option value="IN">Indiana</option><option value="IA">Iowa</option><option value="KS">Kansas</option><option value="KY">Kentucky</option><option value="LA">Louisiana</option><option value="ME">Maine</option><option value="MH">Marshall Islands</option><option value="MD">Maryland</option><option value="MA">Massachusetts</option><option value="MI">Michigan</option><option value="MN">Minnesota</option>
                                    <option value="MS">Mississippi</option><option value="MO">Missouri</option><option value="MT">Montana</option><option value="NE">Nebraska</option><option value="NV">Nevada</option><option value="NH">New Hampshire</option><option value="NJ">New Jersey</option><option value="NM">New Mexico</option><option value="NY">New York</option><option value="NC">North Carolina</option><option value="ND">North Dakota</option><option value="MP">Northern Mariana Islands</option><option value="OH">Ohio</option><option value="OK">Oklahoma</option><option value="OR">Oregon</option><option value="PW">Palau</option><option value="PA">Pennsylvania</option><option value="PR">Puerto Rico</option><option value="RI">Rhode Island</option><option value="SC">South Carolina</option><option value="SD">South Dakota</option><option value="TN">Tennessee</option><option value="TX">Texas</option><option value="UT">Utah</option><option value="VT">Vermont</option><option value="VI">Virgin Islands</option><option value="VA">Virginia</option><option value="WA">Washington</option><option value="WV">West Virginia</option><option value="WI">Wisconsin</option><option value="WY">Wyoming</option>
                                </select>
                                <input type="text" name="Name" placeholder="Enter your area / Landmark / Pincode" required="">
                                <button type="button" class="close2" data-dismiss="modal" aria-hidden="true">Skip & Explore</button>
                            </div>
                        </div>
                    </div>
                </div>-->
        <script>
            $('#myModal88').modal('show');
        </script> 
        <!-- header -->
        <div class="header">
            <div class="header-two"><!-- header-two -->
                <div class="container">
                    <div class="header-logo">
                        <h1><a href="${pageContext.servletContext.contextPath}/"><span>S</span>aman <i>Sanchar</i></a></h1>
                        <h6>Your stores. Your place.</h6> 
                    </div>	
                    <div class="header-search">
                        <form action="#" method="post">
                            <input type="search" name="Search" placeholder="Search for a Product..." required="">
                            <button type="submit" class="btn btn-default" aria-label="Left Align">
                                <i class="fa fa-search" aria-hidden="true"> </i>
                            </button>
                        </form>
                    </div>
                    <div class="header-cart"> 

                        <div class="my-account"> 
                            <ul style="list-style: none">
                                <% if (session.getAttribute("userlogin") != null) { %>
                                <li class="dropdown head-dpdn">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user" aria-hidden="true"></i><%= session.getAttribute("customer_name") %><span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">My Orders</a></li>  
                                    </ul> 
                                </li> 
                                <%} else {%>
                                <li class="dropdown head-dpdn">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user" aria-hidden="true"></i> My Account<span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="${pageContext.servletContext.contextPath}/userlogin">Login </a></li> 
                                        <li><a href="${pageContext.servletContext.contextPath}/usersignup">Sign Up</a></li> 
                                        <li><a href="#">My Orders</a></li>  
                                    </ul> 
                                </li> 
                                <%}%>
                            </ul>
                            <div class="clearfix"> </div> 
                        </div>

                        <div class="cart"> 
                            <form action="#" method="post" class="last"> 
                                <input type="hidden" name="cmd" value="_cart" />
                                <input type="hidden" name="display" value="1" />
                                <input type="hidden" name="naz" value="id" /> 
                                <button class="w3view-cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
                            </form>  
                        </div>
                        <div class="clearfix"> </div> 

                    </div> 
                    <div class="clearfix"> </div>
                </div>	
                <div class="header-three"><!-- header-three -->
                    <div class="container">
                        <div class="menu">
                            <div class="cd-dropdown-wrapper">
                                <a class="cd-dropdown-trigger" href="#0">Store Categories</a>
                                <nav class="cd-dropdown"> 
                                    <a href="#0" class="cd-close">Close</a>
                                    <ul class="cd-dropdown-content"> 
                                        <li><a href="#">Today's Offers</a></li>
                                            <c:forEach items="${list}" var="x">
                                            <li class="has-children">
                                                <a href="#">${x.category_name}</a> 
                                                <ul class="cd-secondary-dropdown is-hidden">
                                                    <li class="go-back"><a href="#">Menu</a></li>
                                                    <li class="see-all"><a href="${pageContext.servletContext.contextPath}/product/getproductdata?key=${x.id}&name=${x.category_name}">All ${x.category_name}</a></li>

                                                    <li class="has-children" style="animation: none !important;">
                                                        <ul class="is-hidden"> 
                                                            <!--                                                    <li class="go-back"><a href="#">All Electronics</a></li> -->
                                                            <c:forEach items="${x.sub_category}" var="y">
                                                                <li><a href="${pageContext.servletContext.contextPath}/product/getproductdata2?key=${y.id}&name=${x.category_name}">${y.sub_name}</a></li> 
                                                                </c:forEach>
                                                        </ul>
                                                    </li> 

                                                </ul> <!-- .cd-secondary-dropdown --> 
                                            </li> <!-- .has-children -->
                                        </c:forEach>
                                    </ul> <!-- .cd-dropdown-content -->
                                </nav> <!-- .cd-dropdown -->
                            </div> <!-- .cd-dropdown-wrapper -->	 
                        </div>
                        <div class="move-text">
                            <div class="marquee"><a href="offers.html"> New collections are available here...... <span>Get extra 10% off on everything | no extra taxes </span> <span> Try shipping pass free for 15 days with unlimited</span></a></div>
                            <script type="text/javascript" src="${pageContext.servletContext.contextPath}/resources/user/js/jquery.marquee.min.js"></script>
                            <script>
            $('.marquee').marquee({pauseOnHover: true});
            //@ sourceURL=pen.js
                            </script>
                        </div>
                    </div>
                </div>
            </div><!-- //header-two -->

        </div>
        <!-- //header -->