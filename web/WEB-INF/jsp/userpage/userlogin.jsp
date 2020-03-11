<%@include file="layout/header.jsp" %>
<style>
    .lab{
       float: left
    }
</style>
<div class="login-page">
    <div class="container"> 
        <h3 class="w3ls-title w3ls-title1">Login to your account</h3>  
        <div class="login-body">
            <form action="${pageContext.servletContext.contextPath}/_getonline?buy=${buy}" method="post">
                <span class="lab">Email</span>
                <input type="text" class="user" name="email" placeholder="Email" required="">
                <span class="lab">Password</span>
                <input type="password" name="password" class="lock" placeholder="Password" required="">
                <input type="submit" value="Login">
                <div class="forgot-grid">
                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Remember me</label>
                    <div class="forgot">
                        <a href="#">Forgot Password?</a>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </form>
        </div>  
        <h6> Not a Member? <a href="${pageContext.servletContext.contextPath}/usersignup">Sign Up Now »</a> </h6> 
        <div class="login-page-bottom social-icons">
<!--            <h5>Recover your social account</h5>
            <ul>
                <li><a href="#" class="fa fa-facebook icon facebook"> </a></li>
                <li><a href="#" class="fa fa-twitter icon twitter"> </a></li>
                <li><a href="#" class="fa fa-google-plus icon googleplus"> </a></li>
                <li><a href="#" class="fa fa-dribbble icon dribbble"> </a></li>
                <li><a href="#" class="fa fa-rss icon rss"> </a></li> 
            </ul> -->
        </div>
    </div>
</div>
<%@include file="layout/footer.jsp" %>