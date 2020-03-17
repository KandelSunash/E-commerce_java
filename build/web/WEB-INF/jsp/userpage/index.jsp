<%@include file="layout/header.jsp" %>
<!-- banner -->
<!--<div class="banner">
    <div id="kb" class="carousel kb_elastic animate_text kb_wrapper" data-ride="carousel" data-interval="6000" data-pause="hover">
         Wrapper-for-Slides 
        <div class="carousel-inner" role="listbox">  
            <div class="item active"> First-Slide 
                <img src="${pageContext.servletContext.contextPath}/resources/user/images/5.jpg" alt="" class="img-responsive" />
                <div class="carousel-caption kb_caption kb_caption_right">
                    <h3 data-animation="animated flipInX">Flat <span>50%</span> Discount</h3>
                    <h4 data-animation="animated flipInX">Hot Offer Today Only</h4>
                </div>
            </div>  
            <div class="item">  Second-Slide 
                <img src="${pageContext.servletContext.contextPath}/resources/user/images/8.jpg" alt="" class="img-responsive" />
                <div class="carousel-caption kb_caption kb_caption_right">
                    <h3 data-animation="animated fadeInDown">Our Latest Fashion Editorials</h3>
                    <h4 data-animation="animated fadeInUp">cupidatat non proident</h4>
                </div>
            </div> 
            <div class="item"> Third-Slide 
                <img src="${pageContext.servletContext.contextPath}/resources/user/images/3.jpg" alt="" class="img-responsive"/>
                <div class="carousel-caption kb_caption kb_caption_center">
                    <h3 data-animation="animated fadeInLeft">End Of Season Sale</h3>
                    <h4 data-animation="animated flipInX">cupidatat non proident</h4>
                </div>
            </div> 
        </div> 
         Left-Button 
        <a class="left carousel-control kb_control_left" href="#kb" role="button" data-slide="prev">
            <span class="fa fa-angle-left kb_icons" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a> 
         Right-Button 
        <a class="right carousel-control kb_control_right" href="#kb" role="button" data-slide="next">
            <span class="fa fa-angle-right kb_icons" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a> 
    </div>
    <script src="js/custom.js"></script>
</div>-->
<!-- //banner -->  
<!-- welcome -->
<div class="welcome"> 
    <div class="container"> 
        <div class="welcome-info">
            <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                <h3 class="w3ls-title">Featured Products</h3>
                <div id="myTabContent" class="tab-content">
                    <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
                        <div class="tabcontent-grids"> 

                            <div id="owl-demo" class="owl-carousel"> 
                                <c:forEach items="${product}" var="p">
                                    <div class="item">
                                        <div class="glry-w3agile-grids agileits"> 
                                            <a href="${pageContext.servletContext.contextPath}/product/productdetails?id=${p.id}"><img src="${pageContext.servletContext.contextPath}/resources/images/product/${p.product_image}" style="height: 200px; width: auto" alt="${p.product_name}"></a>
                                            <div class="view-caption agileits-w3layouts" style="box-sizing: border-box;">           
                                                <h4><a href="${pageContext.servletContext.contextPath}/product/productdetails?id=${p.id}">${p.product_name}</a></h4>
                                                <p>${p.short_description}</p>
                                                <h6 style="margin-top 30"><span>$</span>${p.product_price}</h6>
                                                <br>
                                                <form action="#" method="post">
                                                    <input type="hidden" name="cmd" value="_cart" />
                                                    <input type="hidden" name="add" value="1" /> 
                                                    <input type="hidden" name="naz" value="id" /> 
                                                    <input type="hidden" name="w3ls_item" value="${p.product_name}" /> 
                                                    <input type="hidden" name="amount" value="${p.product_price}" /> 
                                                    <button type="submit" style="width: 60%;position: absolute;bottom: 5px;" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
                                                    <div class="clerfix"> </div>
                                                </form> 
                                                <div class="clerfix"> </div>
                                            </div>   
                                            <div class="clearfix"></div>
                                        </div>  
                                        <div class="clerfix"> </div>
                                    </div>
                                </c:forEach>
                            </div> 
                        </div>
                    </div>

                </div>   
            </div>  
        </div>  	
    </div>  	
</div> 
<!-- //welcome -->
<!-- add-products -->
<div class="add-products"> 
    <div class="container">  
        <div class="add-products-row">
            <div class="w3ls-add-grids">
                <a href="products1.html"> 
                    <h4>TOP 10 TRENDS FOR YOU FLAT <span>20%</span> OFF</h4>
                    <h6>Shop now <i class="fa fa-arrow-circle-right" aria-hidden="true"></i></h6>
                </a>
            </div>
            <div class="w3ls-add-grids w3ls-add-grids-mdl">
                <a href="products1.html"> 
                    <h4>SUNDAY SPECIAL DISCOUNT FLAT <span>40%</span> OFF</h4>
                    <h6>Shop now <i class="fa fa-arrow-circle-right" aria-hidden="true"></i></h6>
                </a>
            </div>
            <div class="w3ls-add-grids w3ls-add-grids-mdl1">
                <a href="products.html"> 
                    <h4>LATEST DESIGNS FOR YOU <span> Hurry !</span></h4>
                    <h6>Shop now <i class="fa fa-arrow-circle-right" aria-hidden="true"></i></h6>
                </a>
            </div>
            <div class="clerfix"> </div>
        </div>  	
    </div>  	
</div>
<!-- //add-products -->
<!-- coming soon -->
<div class="soon">
    <div class="container">
        <h3>Mega Deal Of the Week</h3>
        <h4>Coming Soon Don't Miss Out</h4>  
        <div id="countdown1" class="ClassyCountdownDemo"></div>
    </div> 
</div>
<!-- //coming soon -->
<!-- deals -->
<div class="deals"> 
    <div class="container"> 
        <h3 class="w3ls-title">DEALS OF THE DAY </h3>
        <div class="deals-row">
            <div class="col-md-3 focus-grid"> 
                <a href="products.html" class="wthree-btn"> 
                    <div class="focus-image"><i class="fa fa-mobile"></i></div>
                    <h4 class="clrchg">Mobiles</h4> 
                </a>
            </div>
            <div class="col-md-3 focus-grid"> 
                <a href="products.html" class="wthree-btn wthree1"> 
                    <div class="focus-image"><i class="fa fa-laptop"></i></div>
                    <h4 class="clrchg"> Electronics & Appliances</h4> 
                </a>
            </div> 
            <div class="col-md-3 focus-grid"> 
                <a href="products4.html" class="wthree-btn wthree2"> 
                    <div class="focus-image"><i class="fa fa-wheelchair"></i></div>
                    <h4 class="clrchg">Furnitures</h4>
                </a>
            </div> 
            <div class="col-md-3 focus-grid"> 
                <a href="products3.html" class="wthree-btn wthree3"> 
                    <div class="focus-image"><i class="fa fa-home"></i></div>
                    <h4 class="clrchg">Home Decor</h4>
                </a>
            </div> 
            <div class="col-md-2 focus-grid w3focus-grid-mdl"> 
                <a href="products9.html" class="wthree-btn wthree3"> 
                    <div class="focus-image"><i class="fa fa-book"></i></div>
                    <h4 class="clrchg">Books & Music</h4> 
                </a>
            </div>
            <div class="col-md-2 focus-grid w3focus-grid-mdl"> 
                <a href="products1.html" class="wthree-btn wthree4"> 
                    <div class="focus-image"><i class="fa fa-asterisk"></i></div>
                    <h4 class="clrchg">Fashion</h4>
                </a>
            </div>
            <div class="col-md-2 focus-grid w3focus-grid-mdl"> 
                <a href="products2.html" class="wthree-btn wthree2"> 
                    <div class="focus-image"><i class="fa fa-gamepad"></i></div>
                    <h4 class="clrchg">Kids</h4>
                </a>
            </div> 
            <div class="col-md-2 focus-grid w3focus-grid-mdl"> 
                <a href="products5.html" class="wthree-btn wthree"> 
                    <div class="focus-image"><i class="fa fa-shopping-basket"></i></div>
                    <h4 class="clrchg">Groceries</h4>
                </a>
            </div> 
            <div class="col-md-2 focus-grid w3focus-grid-mdl"> 
                <a href="products7.html" class="wthree-btn wthree5"> 
                    <div class="focus-image"><i class="fa fa-medkit"></i></div>
                    <h4 class="clrchg">Health</h4> 
                </a>
            </div> 
            <div class="col-md-2 focus-grid w3focus-grid-mdl"> 
                <a href="products8.html" class="wthree-btn wthree1"> 
                    <div class="focus-image"><i class="fa fa-car"></i></div>
                    <h4 class="clrchg">Automotive</h4> 
                </a>
            </div>
            <div class="col-md-3 focus-grid"> 
                <a href="products5.html" class="wthree-btn wthree2"> 
                    <div class="focus-image"><i class="fa fa-cutlery"></i></div>
                    <h4 class="clrchg">Food</h4> 
                </a>
            </div>
            <div class="col-md-3 focus-grid"> 
                <a href="products4.html" class="wthree-btn wthree5"> 
                    <div class="focus-image"><i class="fa fa-futbol-o"></i></div>
                    <h4 class="clrchg">Sports</h4> 
                </a>
            </div> 
            <div class="col-md-3 focus-grid"> 
                <a href="products2.html" class="wthree-btn wthree3"> 
                    <div class="focus-image"><i class="fa fa-gamepad"></i></div>
                    <h4 class="clrchg">Games & Toys</h4> 
                </a>
            </div> 
            <div class="col-md-3 focus-grid"> 
                <a href="products6.html" class="wthree-btn "> 
                    <div class="focus-image"><i class="fa fa-gift"></i></div>
                    <h4 class="clrchg">Gifts</h4> 
                </a>
            </div> 
            <div class="clearfix"> </div>
        </div>  	
    </div>  	
</div> 
<!-- //deals --> 
<!-- footer-top -->
<div class="w3agile-ftr-top">
    <div class="container">
        <div class="ftr-toprow">
            <div class="col-md-4 ftr-top-grids">
                <div class="ftr-top-left">
                    <i class="fa fa-truck" aria-hidden="true"></i>
                </div> 
                <div class="ftr-top-right">
                    <h4>FREE DELIVERY</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tempus justo ac </p>
                </div> 
                <div class="clearfix"> </div>
            </div> 
            <div class="col-md-4 ftr-top-grids">
                <div class="ftr-top-left">
                    <i class="fa fa-user" aria-hidden="true"></i>
                </div> 
                <div class="ftr-top-right">
                    <h4>CUSTOMER CARE</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tempus justo ac </p>
                </div> 
                <div class="clearfix"> </div>
            </div>
            <div class="col-md-4 ftr-top-grids">
                <div class="ftr-top-left">
                    <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                </div> 
                <div class="ftr-top-right">
                    <h4>GOOD QUALITY</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tempus justo ac </p>
                </div>
                <div class="clearfix"> </div>
            </div> 
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- //footer-top --> 
<!-- subscribe -->
<div class="subscribe"> 
    <div class="container">

    </div>
</div>
<!-- //subscribe --> 
<%@include file="layout/footer.jsp" %>
