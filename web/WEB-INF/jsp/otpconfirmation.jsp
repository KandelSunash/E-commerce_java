<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from bootstrapmaster.com/live/metro/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 08 Jan 2018 16:57:00 GMT -->
    <head>

        <!-- start: Meta -->
        <meta charset="utf-8">
        <title>Metro Admin Template - Metro UI Style Bootstrap Admin Template</title>
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
        <link rel="shortcut icon" href="${pageContext.servletContext.contextPath}/resources/img/favicon.ico">
        <!-- end: Favicon -->

        <style type="text/css">
            body { background: url(${pageContext.servletContext.contextPath}/resources/img/bg-login.jpg) !important; }
        </style>



    </head>

    <body>
        <div class="container-fluid-full">
            <div class="row-fluid">

                <div class="row-fluid">
                    <div class="login-box">
                        <div class="icons">
                            <a href="index.html"><i class="halflings-icon home"></i></a>
                            <a href="#"><i class="halflings-icon cog"></i></a>
                        </div>
                        <h2>OTP Confirmation</h2>
                        <form class="form-horizontal" action="${pageContext.servletContext.contextPath}/cpanel/_otpconfirm" method="post">
                            <fieldset>
                                <div class="input-prepend" title="Email">
                                    <span class="add-on"><i class="halflings-icon user"></i></span>
                                    <input class="input-large span10" name="otp" id="otp" type="number" placeholder="type 6 digit code"/>
                                </div>
                                <div class="clearfix"></div>

                                <div class="button-login">	
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                                <div class="clearfix"></div>
                            </fieldset>
                        </form>
                    </div><!--/span-->
                </div><!--/row-->


            </div><!--/.fluid-container-->

        </div><!--/fluid-row-->

        <!-- start: JavaScript-->

        <script src="${pageContext.servletContext.contextPath}/resources/js/jquery-1.9.1.min.js"></script>
        <script src="${pageContext.servletContext.contextPath}/resources/js/jquery-migrate-1.0.0.min.js"></script>

        <script src="${pageContext.servletContext.contextPath}/resources/js/jquery-ui-1.10.0.custom.min.js"></script>

        <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.ui.touch-punch.js"></script>

        <script src="${pageContext.servletContext.contextPath}/resources/js/modernizr.js"></script>

        <script src="${pageContext.servletContext.contextPath}/resources/js/bootstrap.min.js"></script>

        <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.cookie.js"></script>

        <script src='${pageContext.servletContext.contextPath}/resources/js/fullcalendar.min.js'></script>

        <script src='${pageContext.servletContext.contextPath}/resources/js/jquery.dataTables.min.js'></script>

        <script src="${pageContext.servletContext.contextPath}/resources/js/excanvas.js"></script>
        <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.flot.js"></script>
        <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.flot.pie.js"></script>
        <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.flot.stack.js"></script>
        <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.flot.resize.min.js"></script>

        <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.chosen.min.js"></script>

        <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.uniform.min.js"></script>

        <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.cleditor.min.js"></script>

        <script src="${pageContext.servletContext.contextPath}/resources/js/notify.min.js"></script>

        <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.elfinder.min.js"></script>

        <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.raty.min.js"></script>

        <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.iphone.toggle.js"></script>

        <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.uploadify-3.1.min.js"></script>

        <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.gritter.min.js"></script>

        <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.imagesloaded.js"></script>

        <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.masonry.min.js"></script>

        <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.knob.modified.js"></script>

        <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.sparkline.min.js"></script>

        <script src="${pageContext.servletContext.contextPath}/resources/js/counter.js"></script>

        <script src="${pageContext.servletContext.contextPath}/resources/js/retina.js"></script>

        <script src="${pageContext.servletContext.contextPath}/resources/js/custom.js"></script>
        <!-- end: JavaScript-->
        <script>
            var msg = "${param.msg}";
            if (msg.length !== 0) {
                $.notify(msg, {position: "right bottom"});
            }
        </script>
    </body>

    <!-- Mirrored from bootstrapmaster.com/live/metro/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 08 Jan 2018 16:57:01 GMT -->
</html>

