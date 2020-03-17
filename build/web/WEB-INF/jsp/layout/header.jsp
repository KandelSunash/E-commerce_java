<%-- 
    Document   : header
    Created on : Aug 5, 2019, 2:28:31 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from bootstrapmaster.com/live/metro/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 08 Jan 2018 16:56:12 GMT -->
    <head>

        <!-- start: Meta -->
        <meta charset="utf-8">
        <title>E Commerce</title>
        <meta name="description" content="Metro Admin Template.">
        <meta name="author" content="Łukasz Holeczek">
        <meta name="keyword" content="Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
        <!-- end: Meta -->

        <!-- start: Mobile Specific -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- end: Mobile Specific -->

        <!-- start: CSS -->
        <link id="bootstrap-style" href="${pageContext.servletContext.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.servletContext.contextPath}/resources/css/bootstrap-responsive.min.css" rel="stylesheet">
        <link id="base-style" href="${pageContext.servletContext.contextPath}/resources/css/style.css" rel="stylesheet">
        <link id="base-style-responsive" href="${pageContext.servletContext.contextPath}/resources/css/style-responsive.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&amp;subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- end: CSS -->        


        <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
                <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
                <link id="ie-style" href="css/ie.css" rel="stylesheet">
        <![endif]-->

        <!--[if IE 9]>
                <link id="ie9style" href="css/ie9.css" rel="stylesheet">
        <![endif]-->

        <!-- start: Favicon -->
        <link rel="shortcut icon" href="${pageContext.servletContext.contextPath}/resources/images/icon.png">
        <!-- end: Favicon -->

    </head>

    <body>

        <!-- start: Header -->
        <div class="navbar">
            <div class="navbar-inner">
                <div class="container-fluid">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <a class="brand" href="${pageContext.servletContext.contextPath}/cpanel/dashboard"><span>Saman Sanchar</span></a>

                    <!-- start: Header Menu -->
                    <div class="nav-no-collapse header-nav">
                        <ul class="nav pull-right">
                            <li class="dropdown hidden-phone">
                                <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                                    <i class="halflings-icon white warning-sign"></i>
                                </a>
                                <ul class="dropdown-menu notifications">
                                    <li class="dropdown-menu-title">
                                        <span>You have 11 notifications</span>
                                        <a href="#refresh"><i class="icon-repeat"></i></a>
                                    </li>	
                                    <li>
                                        <a href="#">
                                            <span class="icon blue"><i class="icon-user"></i></span>
                                            <span class="message">New user registration</span>
                                            <span class="time">1 min</span> 
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="icon green"><i class="icon-comment-alt"></i></span>
                                            <span class="message">New comment</span>
                                            <span class="time">7 min</span> 
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="icon green"><i class="icon-comment-alt"></i></span>
                                            <span class="message">New comment</span>
                                            <span class="time">8 min</span> 
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="icon green"><i class="icon-comment-alt"></i></span>
                                            <span class="message">New comment</span>
                                            <span class="time">16 min</span> 
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="icon blue"><i class="icon-user"></i></span>
                                            <span class="message">New user registration</span>
                                            <span class="time">36 min</span> 
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="icon yellow"><i class="icon-shopping-cart"></i></span>
                                            <span class="message">2 items sold</span>
                                            <span class="time">1 hour</span> 
                                        </a>
                                    </li>
                                    <li class="warning">
                                        <a href="#">
                                            <span class="icon red"><i class="icon-user"></i></span>
                                            <span class="message">User deleted account</span>
                                            <span class="time">2 hour</span> 
                                        </a>
                                    </li>
                                    <li class="warning">
                                        <a href="#">
                                            <span class="icon red"><i class="icon-shopping-cart"></i></span>
                                            <span class="message">Transaction was canceled</span>
                                            <span class="time">6 hour</span> 
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="icon green"><i class="icon-comment-alt"></i></span>
                                            <span class="message">New comment</span>
                                            <span class="time">yesterday</span> 
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="icon blue"><i class="icon-user"></i></span>
                                            <span class="message">New user registration</span>
                                            <span class="time">yesterday</span> 
                                        </a>
                                    </li>
                                    <li class="dropdown-menu-sub-footer">
                                        <a>View all notifications</a>
                                    </li>	
                                </ul>
                            </li>
                            <!-- start: Notifications Dropdown -->
                            <li class="dropdown hidden-phone">
                                <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                                    <i class="halflings-icon white tasks"></i>
                                </a>
                                <ul class="dropdown-menu tasks">
                                    <li class="dropdown-menu-title">
                                        <span>You have 17 tasks in progress</span>
                                        <a href="#refresh"><i class="icon-repeat"></i></a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="header">
                                                <span class="title">iOS Development</span>
                                                <span class="percent"></span>
                                            </span>
                                            <div class="taskProgress progressSlim red">80</div> 
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="header">
                                                <span class="title">Android Development</span>
                                                <span class="percent"></span>
                                            </span>
                                            <div class="taskProgress progressSlim green">47</div> 
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="header">
                                                <span class="title">Django Project For Google</span>
                                                <span class="percent"></span>
                                            </span>
                                            <div class="taskProgress progressSlim yellow">32</div> 
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="header">
                                                <span class="title">SEO for new sites</span>
                                                <span class="percent"></span>
                                            </span>
                                            <div class="taskProgress progressSlim greenLight">63</div> 
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="header">
                                                <span class="title">New blog posts</span>
                                            </span>
                                            <div class="taskProgress progressSlim orange">80</div> 
                                        </a>
                                    </li>
                                    <li>
                                        <a class="dropdown-menu-sub-footer">View all tasks</a>
                                    </li>	
                                </ul>
                            </li>
                            <!-- end: Notifications Dropdown -->
                            <!-- start: Message Dropdown -->
                            <li class="dropdown hidden-phone">
                                <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                                    <i class="halflings-icon white envelope"></i>
                                </a>
                                <ul class="dropdown-menu messages">
                                    <li class="dropdown-menu-title">
                                        <span>You have 9 messages</span>
                                        <a href="#refresh"><i class="icon-repeat"></i></a>
                                    </li>	
                                    <li>
                                        <a href="#">
                                            <span class="avatar"><img src="${pageContext.servletContext.contextPath}/resources/img/avatar.jpg" alt="Avatar"></span>
                                            <span class="header">
                                                <span class="from">
                                                    Łukasz Holeczek
                                                </span>
                                                <span class="time">
                                                    6 min
                                                </span>
                                            </span>
                                            <span class="message">
                                                Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                            </span>  
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="avatar"><img src="${pageContext.servletContext.contextPath}/resources/img/avatar2.jpg" alt="Avatar"></span>
                                            <span class="header">
                                                <span class="from">
                                                    Megan Abott
                                                </span>
                                                <span class="time">
                                                    56 min
                                                </span>
                                            </span>
                                            <span class="message">
                                                Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                            </span>  
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="avatar"><img src="${pageContext.servletContext.contextPath}/resources/img/avatar3.jpg" alt="Avatar"></span>
                                            <span class="header">
                                                <span class="from">
                                                    Kate Ross
                                                </span>
                                                <span class="time">
                                                    3 hours
                                                </span>
                                            </span>
                                            <span class="message">
                                                Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                            </span>  
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="avatar"><img src="${pageContext.servletContext.contextPath}/resources/img/avatar4.jpg" alt="Avatar"></span>
                                            <span class="header">
                                                <span class="from">
                                                    Julie Blank
                                                </span>
                                                <span class="time">
                                                    yesterday
                                                </span>
                                            </span>
                                            <span class="message">
                                                Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                            </span>  
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="avatar"><img src="${pageContext.servletContext.contextPath}/resources/img/avatar5.jpg" alt="Avatar"></span>
                                            <span class="header">
                                                <span class="from">
                                                    Jane Sanders
                                                </span>
                                                <span class="time">
                                                    Jul 25, 2012
                                                </span>
                                            </span>
                                            <span class="message">
                                                Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                            </span>  
                                        </a>
                                    </li>
                                    <li>
                                        <a class="dropdown-menu-sub-footer">View all messages</a>
                                    </li>	
                                </ul>
                            </li>
                            <!-- end: Message Dropdown -->
                            <li>
                                <a class="btn" href="#">
                                    <i class="halflings-icon white wrench"></i>
                                </a>
                            </li>
                            <!-- start: User Dropdown -->
                            <li class="dropdown">
                                <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                                    <i class="halflings-icon white user"></i> <%=session.getAttribute("firstname")%> 's 
                                    <span class="caret"></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown-menu-title">
                                        <span>Account Settings</span>
                                    </li>
                                    <li><a href="${pageContext.servletContext.contextPath}/cpanel/adminprofile?id=<%=session.getAttribute("admid")%>"><i class="halflings-icon user"></i> Profile</a></li>
                                    <li><a href="${pageContext.servletContext.contextPath}/cpanel/logout"><i class="halflings-icon off"></i> Logout</a></li>
                                </ul>
                            </li>
                            <!-- end: User Dropdown -->
                        </ul>
                    </div>   
                    <!-- end: Header Menu -->

                </div>
            </div>
        </div>
        <!-- start: Header -->

        <div class="container-fluid-full">
            <div class="row-fluid">

                <!-- start: Main Menu -->
                <div id="sidebar-left" class="span2">
                    <div class="nav-collapse sidebar-nav">
                        <ul class="nav nav-tabs nav-stacked main-menu">
                            <li><a href="${pageContext.servletContext.contextPath}/cpanel/dashboard"><i class="icon-bar-chart"></i><span class="hidden-tablet"> Dashboard</span></a></li>	
                                        <% if (session.getAttribute("role").equals("Super Admin")) { %>
                            <li>
                                <a class="dropmenu" href="#"><i class="fa fa-user-circle-o"></i><span class="hidden-tablet"> Admin Management</span></a>
                                <ul>
                                    <li><a class="submenu" href="${pageContext.servletContext.contextPath}/cpanel/addadmin"><i class="fa fa-user-plus"></i><span class="hidden-tablet"> Register Admin</span></a></li>
                                    <li><a class="submenu" href="${pageContext.servletContext.contextPath}/cpanel/viewadmin"><i class="fa fa-address-book-o"></i><span class="hidden-tablet"> View Admin</span></a></li>
                                </ul>	
                            </li>
                            <%}%>
                            <% if (session.getAttribute("role").equals("Super Admin") || session.getAttribute("role").equals("Manager")) { %>
                            <li>
                                <a class="dropmenu" href="#"><i class="icon-th-list"></i><span class="hidden-tablet"> Category Management</span></a>
                                <ul>
                                    <li><a class="submenu" href="${pageContext.servletContext.contextPath}/category/"><i class="icon-th-large"></i><span class="hidden-tablet"> Add Category</span></a></li>
                                    <li><a class="submenu" href="${pageContext.servletContext.contextPath}/category/subcategory"><i class="icon-th"></i><span class="hidden-tablet"> Add Sub Category</span></a></li>
                                    <li><a class="submenu" href="${pageContext.servletContext.contextPath}/category/viewcategory"><i class="icon-book"></i><span class="hidden-tablet"> View Category</span></a></li>
                                    <li><a class="submenu" href="${pageContext.servletContext.contextPath}/category/viewsubcategory"><i class="icon-book"></i><span class="hidden-tablet"> View Sub Category</span></a></li>
                                </ul>	
                            </li>
                            <li>
                                <a class="dropmenu" href="#"><i class="icon-cogs"></i><span class="hidden-tablet"> Manufacture Management</span></a>
                                <ul>
                                    <li><a class="submenu" href="${pageContext.servletContext.contextPath}/manufacture/"><i class="icon-cogs"></i><span class="hidden-tablet"> Add Manufacture</span></a></li>
                                    <li><a class="submenu" href="${pageContext.servletContext.contextPath}/manufacture/viewmanufacture"><i class="icon-book"></i><span class="hidden-tablet"> View Manufacture</span></a></li>
                                </ul>	
                            </li>
                            
                            <li>
                                <a class="dropmenu" href="#"><i class="icon-leaf"></i><span class="hidden-tablet"> Product Management</span></a>
                                <ul>
                                    <li><a class="submenu" href="${pageContext.servletContext.contextPath}/product/"><i class="icon-leaf"></i><span class="hidden-tablet"> Add Product</span></a></li>
                                    <li><a class="submenu" href="${pageContext.servletContext.contextPath}/product/viewproduct"><i class="icon-book"></i><span class="hidden-tablet"> View Product</span></a></li>
                                </ul>	
                            </li>
                            <%}%>
                            <%if (session.getAttribute("role").equals("Super Admin") || session.getAttribute("role").equals("Customer Manager")){%>
                            <li><a href="${pageContext.servletContext.contextPath}/cpanel/customerdetails"><i class="icon-group"></i><span class="hidden-tablet"> Customer Detail</span></a></li>
                            <li><a href="${pageContext.servletContext.contextPath}/cpanel/orderdetails"><i class="fa fa-shopping-cart"></i><span class="hidden-tablet"> Order Detail</span></a></li>
                                        <%}%>
                        </ul>
                    </div>
                </div>
                <!-- end: Main Menu -->

                <noscript>
                <div class="alert alert-block span10">
                    <h4 class="alert-heading">Warning!</h4>
                    <p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
                </div>
                </noscript>