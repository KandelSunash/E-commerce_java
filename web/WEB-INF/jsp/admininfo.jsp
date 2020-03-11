<%@include file="layout/header.jsp" %>
<style>
        .con-po{
            height: 430px;
            border-bottom: 2px solid red;
        }
        .profile-header
        {
            background-image: url(${pageContext.servletContext.contextPath}/resources/images/pro5.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            height: 330px;
            width:100%;
        }
        .img-position{
            position: absolute;
            top: 300px;
            left: 80px;
        }
        .profile-img{
            height: 170px;
            width: 170px;
            border: 4px solid rgba(0,0,0,0.4);
            border-radius: 50%;
        }
        .profile-container{
            /*background-color: red;*/
            min-height: 300px;
            width: 100%;
        }
        fieldset{
            margin-top: 80px;   
        }
        .controls{
            position: relative;
            top: 4px;
            left: 60px;
        }
        .control-label{
            font-size: 13px;
            font-weight: 670;
        }
        .row-fluid{
            border-bottom: 4px solid #eee;
        }
    </style>
<div id="content" class="span10">

    <ul class="breadcrumb">
        <li>
            <i class="icon-home"></i>
            <a href="${pageContext.servletContext.contextPath}/cpanel/dashboard">Home</a>
            <i class="icon-angle-right"></i> 
        </li>
        <li>
            <span>Admin's Profile</span>
        </li>
    </ul>
    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header" data-original-title>
                <h2>${x.adminid.firstname}'s Profiles</h2>
            </div>
            <div class="box-content">
                  <div class="row-fluid ">
            <div class="con-po">
                <div class="profile-header">
                    <div class="img-position">
                        <img class="profile-img" src="${pageContext.servletContext.contextPath}/resources/images/${x.adminid.image}">
                    </div>
                </div>
            </div>
            <div class="profile-container">
                <fieldset class="form-horizontal">
                    <div class="control-group">
                        <span class="control-label">
                            Name 
                        </span>
                        <div class="controls">${x.adminid.firstname} ${x.adminid.lastname}</div>
                    </div>
                    <div class="control-group">
                        <span class="control-label">
                            Email 
                        </span>
                        <div class="controls">${x.adminid.email}</div>
                    </div>
                    <div class="control-group">
                        <span class="control-label">
                            Address 
                        </span>
                        <div class="controls">${x.adminid.address}</div>
                    </div>
                    <div class="control-group">
                        <span class="control-label">
                            Contact 
                        </span>
                        <div class="controls">${x.adminid.phone}</div>
                    </div>
                    <div class="control-group">
                        <span class="control-label">
                            Role 
                        </span>
                        <div class="controls">${x.adminid.access_label}</div>
                    </div>

                </fieldset>   
            </div>
        </div>
            </div>
        </div>
    </div>
</div>
 
        <%@include file="layout/footer.jsp" %>