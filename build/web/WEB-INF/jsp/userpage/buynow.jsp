<%@include file="layout/header.jsp" %>
<style>
    .container .breadcrumb{
        color: #F5F5F5;
        box-shadow: -1px 1px rgba(0,0,0,0.5);
    }
    .shipping-data{
        width: 700px;
        padding: 30px;
        margin: auto ;
    }
    .shipping-data form{
        background-color: #46b8da;
        padding: 20px;
        border-radius: 20px;
    }
    .group,.btn-group-lg {
        padding: 15px 0;
        padding-left: 30px;
    }
    label{
        width: 100px;
    }
    input,select{
        width: 250px; 
        border: none;
    }
    input[type="text"], select{
        padding: 10px;
        padding-left: 15px; 
        border-radius: 8px;
    }
    input[type="submit"]{
        margin-top: 20px;
        margin-bottom: 30px;
        padding:10px;  
         border-radius: 20px;
    }
</style>
<div class="container breadcrumb"> 
    <ol class="breadcrumb breadcrumb1">
        <li class="active">Checkout</li>
    </ol> 
    <div class="clearfix"> </div>
    <div class="checkout">
        <div class="shipping-data">
            <form method="post" action="${pageContext.servletContext.contextPath}/product/shippingdetails">
                <div class="group">
                    <label>Name</label>
                    <input type="text" name="name" placeholder="Name" value="${user.first_name} ${user.last_name}">
                </div>
                <div class="group">
                    <label>Phone</label>
                    <input type="text" name="shipping_phone" placeholder="Phone" value="${user.phone}">
                </div>
                <div class="group">
                    <label>Address</label>
                    <input type="text" name="shipping_address" placeholder="Address">
                </div>
                <div class="group">
                    <label>Email</label>
                    <input type="text" name="shipping_email" placeholder="Email" value="${user.email}">
                </div>
                <div class="group">
                    <label>Payment Type</label>
                    <select name="payment_type">
                        <option></option>
                        <option>Cash On Delivery</option>
                        <option>Card</option>
                    </select>
                </div>
                <div class="btn-group-lg">
                    <input type="submit" value="Submit">
                </div>
            </form>
        </div>
    </div>
</div>

<%@include file="layout/footer.jsp" %>