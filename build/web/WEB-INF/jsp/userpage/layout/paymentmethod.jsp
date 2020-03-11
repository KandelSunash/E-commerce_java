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
            <form method="post" action="${pageContext.servletContext.contextPath}/cardpayment_details">
                <div class="group">
                    <label>Card Number</label>
                    <input type="text" name="card_name" placeholder="Card Number">
                </div>
                <div class="group">
                    <label>Name on card</label>
                    <input type="text" name="card_owner" placeholder="Owner Name" >
                </div>
                <div class="group">
                    <label>Expiration Date(yyyy/MM/dd)</label>
                    <input type="text" name="date_expire" placeholder="Date Expire">
                </div>
                <div class="group">
                    <label>Security Code</label>
                    <input type="password" name="code" placeholder="Code">
                </div>
                <div class="btn-group-lg">
                    <input type="submit" value="Submit">
                </div>
            </form>
        </div>
    </div>
</div>

<%@include file="layout/footer.jsp" %>