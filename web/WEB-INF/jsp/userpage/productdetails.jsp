<%@include file="layout/header.jsp" %>

<!-- breadcrumbs --> 
<div class="container"> 
    <ol class="breadcrumb breadcrumb1">
        <li><a href="index.html">Home</a></li>
        <li class="active">Single Page</li>
    </ol> 
    <div class="clearfix"> </div>
</div>
<!-- //breadcrumbs -->
<!-- products -->
<div class="products">	 
    <div class="container">  
        <div class="single-page">
            <div class="single-page-row" id="detail-21">
                <div class="col-md-6 single-top-left">	
                    <div class="flexslider">
                        <ul class="slides">
                            <li data-thumb="${pageContext.servletContext.contextPath}/resources/images/product/${product.product_image}">
                                <div class="thumb-image"> <img src="${pageContext.servletContext.contextPath}/resources/images/product/${product.product_image}" style="height: 300px;" data-imagezoom="true" class="img-responsive" alt=""> </div>
                            </li> 
                        </ul>
                    </div>
                </div>
                <div class="col-md-6 single-top-right">
                    <h3 class="item_name">${product.product_name}</h3>
                    <p>Processing Time: Item will be shipped out within 4-5 working days. </p>
                    <div class="single-rating">
                        <ul>
                            <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                            <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                            <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                            <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                            <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                            <li class="rating">20 reviews</li>
                            <li><a href="#">Add your review</a></li>
                        </ul> 
                    </div>
                    <div class="single-price">
                        <ul>
                            <li>$${product.product_price}</li>  
                            <!--<li><del>$600</del></li>--> 
                            <!--<li><span class="w3off">10% OFF</span></li>--> 
                            <!--<li>Ends on: June,5th</li>-->
                            <!--<li><a href="#"><i class="fa fa-gift" aria-hidden="true"></i> Coupon</a></li>-->
                        </ul>	
                    </div> 
                    <p class="single-price-text">${product.short_description}</p>
                    <form action="#" method="post">
                        <input type="hidden" name="cmd" value="_cart" />
                        <input type="hidden" name="add" value="1" /> 
                        <input type="hidden" name="w3ls_item" value="${product.product_name}" /> 
                        <input type="hidden" name="amount" value="${product.product_price}" /> 
                        <button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
                    </form>
                        <a href="${pageContext.servletContext.contextPath}/product/buynow?id=${product.id}"> <button class="w3ls-cart w3ls-cart-like"> Buy Now</button></a>
                </div>
                <div class="clearfix"> </div>  
            </div>
            <div class="single-page-icons social-icons"> 
                <ul>
                    <li><h4>Share on</h4></li>
                    <li><a href="#" class="fa fa-facebook icon facebook"> </a></li>
                    <li><a href="#" class="fa fa-twitter icon twitter"> </a></li>
                    <li><a href="#" class="fa fa-google-plus icon googleplus"> </a></li>
                    <li><a href="#" class="fa fa-dribbble icon dribbble"> </a></li>
                    <li><a href="#" class="fa fa-rss icon rss"> </a></li> 
                </ul>
            </div>
        </div> 
        <!-- recommendations -->
    <!--        <div class="recommend">
                <h3 class="w3ls-title">Our Recommendations </h3> 
                <script>
                    $(document).ready(function () {
                        $("#owl-demo5").owlCarousel({

                            autoPlay: 3000, //Set AutoPlay to 3 seconds

                            items: 4,
                            itemsDesktop: [640, 5],
                            itemsDesktopSmall: [414, 4],
                            navigation: true

                        });

                    });
                </script>
                <div id="owl-demo5" class="owl-carousel">
                    <div class="item">
                        <div class="glry-w3agile-grids agileits">
                            <div class="new-tag"><h6>20% <br> Off</h6></div>
                            <a href="products1.html"><img src="images/f2.png" alt="img"></a>
                            <div class="view-caption agileits-w3layouts">           
                                <h4><a href="products1.html">Women Sandal</a></h4>
                                <p>Lorem ipsum dolor sit amet consectetur</p>
                                <h5>$20</h5>
                                <form action="#" method="post">
                                    <input type="hidden" name="cmd" value="_cart" />
                                    <input type="hidden" name="add" value="1" /> 
                                    <input type="hidden" name="w3ls_item" value="Women Sandal" /> 
                                    <input type="hidden" name="amount" value="20.00" /> 
                                    <button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
                                </form>
                            </div>        
                        </div> 
                    </div>
                    <div class="item">
                        <div class="glry-w3agile-grids agileits"> 
                            <a href="products.html"><img src="images/e4.png" alt="img"></a>
                            <div class="view-caption agileits-w3layouts">           
                                <h4><a href="products.html">Digital Camera</a></h4>
                                <p>Lorem ipsum dolor sit amet consectetur</p>
                                <h5>$80</h5>
                                <form action="#" method="post">
                                    <input type="hidden" name="cmd" value="_cart" />
                                    <input type="hidden" name="add" value="1" /> 
                                    <input type="hidden" name="w3ls_item" value="Digital Camera"/> 
                                    <input type="hidden" name="amount" value="100.00" /> 
                                    <button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
                                </form>
                            </div>         
                        </div>  
                    </div>  
                    <div class="item">
                        <div class="glry-w3agile-grids agileits"> 
                            <div class="new-tag"><h6>New</h6></div>
                            <a href="products4.html"><img src="images/s1.png" alt="img"></a>
                            <div class="view-caption agileits-w3layouts">           
                                <h4><a href="products4.html">Roller Skates</a></h4>
                                <p>Lorem ipsum dolor sit amet consectetur</p>
                                <h5>$180</h5>
                                <form action="#" method="post">
                                    <input type="hidden" name="cmd" value="_cart" />
                                    <input type="hidden" name="add" value="1" /> 
                                    <input type="hidden" name="w3ls_item" value="Roller Skates"/> 
                                    <input type="hidden" name="amount" value="180.00" /> 
                                    <button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
                                </form>
                            </div>         
                        </div>  
                    </div>
                    <div class="item">
                        <div class="glry-w3agile-grids agileits"> 
                            <a href="products1.html"><img src="images/f1.png" alt="img"></a>
                            <div class="view-caption agileits-w3layouts">           
                                <h4><a href="products1.html">T Shirt</a></h4>
                                <p>Lorem ipsum dolor sit amet consectetur</p>
                                <h5>$10</h5>
                                <form action="#" method="post">
                                    <input type="hidden" name="cmd" value="_cart" />
                                    <input type="hidden" name="add" value="1" /> 
                                    <input type="hidden" name="w3ls_item" value="T Shirt" /> 
                                    <input type="hidden" name="amount" value="10.00" /> 
                                    <button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
                                </form>
                            </div>        
                        </div>    
                    </div>
                    <div class="item">
                        <div class="glry-w3agile-grids agileits"> 
                            <div class="new-tag"><h6>New</h6></div>
                            <a href="products6.html"><img src="images/p1.png" alt="img"></a>
                            <div class="view-caption agileits-w3layouts">           
                                <h4><a href="products6.html">Coffee Mug</a></h4>
                                <p>Lorem ipsum dolor sit amet consectetur</p>
                                <h5>$14</h5>
                                <form action="#" method="post">
                                    <input type="hidden" name="cmd" value="_cart" />
                                    <input type="hidden" name="add" value="1" /> 
                                    <input type="hidden" name="w3ls_item" value="Coffee Mug" /> 
                                    <input type="hidden" name="amount" value="14.00" /> 
                                    <button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
                                </form>
                            </div>         
                        </div>  
                    </div>
                    <div class="item">
                        <div class="glry-w3agile-grids agileits"> 
                            <div class="new-tag"><h6>20% <br> Off</h6></div>
                            <a href="products6.html"><img src="images/p2.png" alt="img"></a>
                            <div class="view-caption agileits-w3layouts">           
                                <h4><a href="products6.html">Teddy bear</a></h4>
                                <p>Lorem ipsum dolor sit amet consectetur</p>
                                <h5>$20</h5>
                                <form action="#" method="post">
                                    <input type="hidden" name="cmd" value="_cart" />
                                    <input type="hidden" name="add" value="1" /> 
                                    <input type="hidden" name="w3ls_item" value="Teddy bear" /> 
                                    <input type="hidden" name="amount" value="20.00" /> 
                                    <button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
                                </form>
                            </div>        
                        </div> 
                    </div>
                    <div class="item">
                        <div class="glry-w3agile-grids agileits"> 
                            <a href="products4.html"><img src="images/s2.png" alt="img"></a>
                            <div class="view-caption agileits-w3layouts">           
                                <h4><a href="products4.html">Football</a></h4>
                                <p>Lorem ipsum dolor sit amet consectetur</p>
                                <h5>$70</h5>
                                <form action="#" method="post">
                                    <input type="hidden" name="cmd" value="_cart" />
                                    <input type="hidden" name="add" value="1" /> 
                                    <input type="hidden" name="w3ls_item" value="Football"/> 
                                    <input type="hidden" name="amount" value="70.00"/>
                                    <button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
                                </form>
                            </div>        
                        </div> 
                    </div> 
                    <div class="item">
                        <div class="glry-w3agile-grids agileits"> 
                            <div class="new-tag"><h6>Sale</h6></div>
                            <a href="products3.html"><img src="images/h1.png" alt="img"></a>
                            <div class="view-caption agileits-w3layouts">           
                                <h4><a href="products3.html">Wall Clock</a></h4>
                                <p>Lorem ipsum dolor sit amet consectetur</p>
                                <h5>$80</h5>
                                <form action="#" method="post">
                                    <input type="hidden" name="cmd" value="_cart" />
                                    <input type="hidden" name="add" value="1" /> 
                                    <input type="hidden" name="w3ls_item" value="Wall Clock" /> 
                                    <input type="hidden" name="amount" value="80.00" /> 
                                    <button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
                                </form>
                            </div>         
                        </div>  
                    </div> 
                </div>    
            </div>-->
        <!-- //recommendations --> 
        <!-- collapse-tabs -->
        <div class="collpse tabs">
            <h3 class="w3ls-title">About this item</h3> 
            <div class="panel-group collpse" id="accordion" role="tablist" aria-multiselectable="true">
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingOne">
                        <h4 class="panel-title">
                            <a class="pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                <i class="fa fa-file-text-o fa-icon" aria-hidden="true"></i> Description <span class="fa fa-angle-down fa-arrow" aria-hidden="true"></span> <i class="fa fa-angle-up fa-arrow" aria-hidden="true"></i>
                            </a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body">
                            ${product.long_description}
                        </div>
                    </div>
                </div>
<!--                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingTwo">
                        <h4 class="panel-title">
                            <a class="collapsed pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                <i class="fa fa-info-circle fa-icon" aria-hidden="true"></i> additional information <span class="fa fa-angle-down fa-arrow" aria-hidden="true"></span> <i class="fa fa-angle-up fa-arrow" aria-hidden="true"></i>
                            </a> 
                        </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                        <div class="panel-body">
                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingThree">
                        <h4 class="panel-title">
                            <a class="collapsed pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                <i class="fa fa-check-square-o fa-icon" aria-hidden="true"></i> reviews (5) <span class="fa fa-angle-down fa-arrow" aria-hidden="true"></span> <i class="fa fa-angle-up fa-arrow" aria-hidden="true"></i>
                            </a>
                        </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                        <div class="panel-body">
                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingFour">
                        <h4 class="panel-title">
                            <a class="collapsed pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                <i class="fa fa-question-circle fa-icon" aria-hidden="true"></i> help <span class="fa fa-angle-down fa-arrow" aria-hidden="true"></span> <i class="fa fa-angle-up fa-arrow" aria-hidden="true"></i>
                            </a>
                        </h4>
                    </div>
                    <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                        <div class="panel-body">
                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                        </div>
                    </div>
                </div>-->
            </div>
        </div>
        <!-- //collapse --> 
      
    </div>
</div>
<!--//products-->  
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
<%@include file="layout/footer.jsp" %>