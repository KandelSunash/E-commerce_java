<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="layout/header.jsp" %>
<% int id = 1;%>
<style>
    .con-po{
        height: 230px;
        border-bottom: 2px solid red;
    }
    .profile-header
    {
        background-image: url(${pageContext.servletContext.contextPath}/resources/images/pro5.jpg);
        background-repeat: no-repeat;
        background-size: cover;
        height: 20px;
        width:100%;
    }
    .img-position{
        position: absolute;
        top: 100px;
        left: 80px;
    }
    .profile-img{
        height: 170px;
        width: 170px;
        border: 4px solid rgba(0,0,0,0.4);
        background-color: #eeeeee;
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
                                <img class="profile-img" src="${pageContext.servletContext.contextPath}/resources/images/admin/${x.adminid.image}">
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
                            <div class="control-group">
                                <div class="form-actions">
                                    <!-- Button trigger modal -->
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                                        Login Details
                                    </button>
                                </div>
                            </div>

                        </fieldset>   
                    </div>

                </div>
            </div>
            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="row-fluid sortable">		
                            <div class="box span12">
                                <div class="box-header" data-original-title>
                                    <h2><i class="halflings-icon user"></i><span class="break"></span>Login Details</h2>

                                </div>
                                <div class="box-content">
                                    <div class="modal-body">
                                        <table class="table table-striped table-bordered bootstrap-datatable datatable">
                                            <thead>
                                                <tr>
                                                    <th>Id</th>
                                                    <th>Login Date</th>
                                                    <th>Logout Date</th>
                                                </tr>
                                            </thead>   
                                            <tbody>
                                                <c:forEach items="${x.led}" var="x">
                                                    <tr>
                                                        <td><%= id++%></td>
                                                        <td class="center">${x.login_date}</td>
                                                        <td class="center">${x.logout_date}</td>

                                                    </tr>
                                                </c:forEach>

                                            </tbody>
                                        </table>  
                                    </div>
                                </div>
                            </div></div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="layout/footer.jsp" %>