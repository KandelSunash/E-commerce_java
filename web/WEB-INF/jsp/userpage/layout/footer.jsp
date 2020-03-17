<!-- footer -->
<div class="footer">
    <div class="container">
        <div class="footer-info w3-agileits-info">
            <div class="col-md-4 address-left agileinfo">
                <div class="footer-logo header-logo">
                    <h2><a href="index.html"><span>S</span>mart <i>Bazaar</i></a></h2>
                    <h6>Your stores. Your place.</h6>
                </div>
                <ul>
                    <li><i class="fa fa-map-marker"></i>  Kanti Path, Kathmandu 44600</li>
                    <li><i class="fa fa-mobile"></i> +977 9860797605 </li>
                    <li><i class="fa fa-phone"></i> 01-4258003 </li>
                    <li><i class="fa fa-envelope-o"></i> <a href="mailto:example@mail.com"> mail@example.com</a></li>
                </ul> 
            </div>
            <div class="col-md-8 address-right">
                <div class="col-md-4 footer-grids">
                    <h3>Company</h3>
                    <ul>
                        <li><a href="about.html">About Us</a></li>
                        <li><a href="marketplace.html">Marketplace</a></li>  
                        <li><a href="values.html">Core Values</a></li>  
                        <li><a href="privacy.html">Privacy Policy</a></li>
                    </ul>
                </div>
                <div class="col-md-4 footer-grids">
                    <h3>Services</h3>
                    <ul>
                        <li><a href="contact.html">Contact Us</a></li>
                        <li><a href="login.html">Returns</a></li> 
                        <li><a href="faq.html">FAQ</a></li>
                        <li><a href="sitemap.html">Site Map</a></li>
                        <li><a href="login.html">Order Status</a></li>
                    </ul> 
                </div>
                <div class="col-md-4 footer-grids">
                    <h3>Payment Methods</h3>
                    <ul>
                        <li><i class="fa fa-laptop" aria-hidden="true"></i> Net Banking</li>
                        <li><i class="fa fa-money" aria-hidden="true"></i> Cash On Delivery</li>
                        <li><i class="fa fa-pie-chart" aria-hidden="true"></i>EMI Conversion</li>
                        <li><i class="fa fa-gift" aria-hidden="true"></i> E-Gift Voucher</li>
                        <li><i class="fa fa-credit-card" aria-hidden="true"></i> Debit/Credit Card</li>
                    </ul>  
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- //footer -->		
<div class="copy-right"> 
    <div class="container">
        <p>© 2016 Smart bazaar . All rights reserved | Design by <a href="http://w3layouts.com"> W3layouts.</a></p>
    </div>
</div> 
<!-- cart-js -->
<script src="${pageContext.servletContext.contextPath}/resources/user/js/minicart.js"></script>
<script>
    w3ls.render();

    w3ls.cart.on('w3sb_checkout', function (evt) {
        var items, len, i;

        if (this.subtotal() > 0) {
            items = this.items();

            for (i = 0, len = items.length; i < len; i++) {
                items[i].set('shipping', 0);
                items[i].set('shipping2', 0);
            }
        }
    });
</script>  
<!-- //cart-js -->	
<!-- countdown.js -->	
<script src="${pageContext.servletContext.contextPath}/resources/user/js/jquery.knob.js"></script>
<script src="${pageContext.servletContext.contextPath}/resources/user/js/jquery.throttle.js"></script>
<script src="${pageContext.servletContext.contextPath}/resources/user/js/jquery.classycountdown.js"></script>
<script>
    $(document).ready(function () {
        $('#countdown1').ClassyCountdown({
            end: '1388268325',
            now: '1387999995',
            labels: true,
            style: {
                element: "",
                textResponsive: .5,
                days: {
                    gauge: {
                        thickness: .10,
                        bgColor: "rgba(0,0,0,0)",
                        fgColor: "#1abc9c",
                        lineCap: 'round'
                    },
                    textCSS: 'font-weight:300; color:#fff;'
                },
                hours: {
                    gauge: {
                        thickness: .10,
                        bgColor: "rgba(0,0,0,0)",
                        fgColor: "#05BEF6",
                        lineCap: 'round'
                    },
                    textCSS: ' font-weight:300; color:#fff;'
                },
                minutes: {
                    gauge: {
                        thickness: .10,
                        bgColor: "rgba(0,0,0,0)",
                        fgColor: "#8e44ad",
                        lineCap: 'round'
                    },
                    textCSS: ' font-weight:300; color:#fff;'
                },
                seconds: {
                    gauge: {
                        thickness: .10,
                        bgColor: "rgba(0,0,0,0)",
                        fgColor: "#f39c12",
                        lineCap: 'round'
                    },
                    textCSS: ' font-weight:300; color:#fff;'
                }

            },
            onEndCallback: function () {
                console.log("Time out!");
            }
        });
    });
</script>
<!-- //countdown.js -->
<!-- menu js aim -->
<script src="${pageContext.servletContext.contextPath}/resources/user/js/jquery.menu-aim.js"></script>
<script src="${pageContext.servletContext.contextPath}/resources/user/js/main.js"></script> <!-- Resource jQuery -->
<!-- //menu js aim --> 
<!-- Bootstrap core JavaScript
================================================== -->
<script defer src="${pageContext.servletContext.contextPath}/resources/user/js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/user/css/flexslider.css" type="text/css" media="screen" />
<script>
	// Can also be used with $(document).ready()
	$(window).load(function() {
	  $('.flexslider').flexslider({
		animation: "slide",
		controlNav: "thumbnails"
	  });
	});
</script>
<!--flex slider-->
<script src="${pageContext.servletContext.contextPath}/resources/user/js/imagezoom.js"></script>
<!-- Placed at the end of the document so the pages load faster -->
</body>
</html>