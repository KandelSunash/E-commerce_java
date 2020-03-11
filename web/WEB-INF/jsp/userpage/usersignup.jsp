<%@include file="layout/header.jsp" %>
<style>
    label{
        float: left;
    }
</style>
<div class="login-page">
    <div class="container"> 
        <h3 class="w3ls-title w3ls-title1">Create your account</h3>  
        <div class="login-body">
            <form action="${pageContext.servletContext.contextPath}/registeruser" method="post">
                <label>Your Name</label>
                <input type="text" class="user" name="name" placeholder="Full Name" required="">
                <label>Mobile Number</label>
                <input type="text" class="user" name="phone" placeholder="Mobile Number" required="">
                <label>Email</label>
                <input type="text" class="user" name="email" placeholder="Enter your email" required="">
                <label>Password</label>
                <input type="password" name="password" class="lock" placeholder="password" required="">
                <input type="submit" value="Sign Up ">

                <h6>Already have an account? <a href="${pageContext.servletContext.contextPath}/userlogin">Login Now »</a> </h6>  

            </form>
        </div>  
    </div>
</div>
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
<%@include file="layout/footer.jsp" %>