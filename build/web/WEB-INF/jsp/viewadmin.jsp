<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d" %>
<% int id = 1;%>
<%@include file="layout/header.jsp" %>

<!-- start: Content -->
<div id="content" class="span10">


    <ul class="breadcrumb">
        <li>
            <i class="icon-home"></i>
            <a href="${pageContext.servletContext.contextPath}/dashboard">Home</a> 
            <i class="icon-angle-right"></i>
        </li>
        <li>
            <span>View Admin</span>
        </li>
    </ul>

    <div class="row-fluid sortable">		
        <div class="box span12">
            <div class="box-header" data-original-title>
                <h2><i class="icon-group"></i><span class="break"></span>Admins & Staffs</h2>
                <div class="box-icon">
                    <a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
                    <a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
                </div>
            </div>
            <div class="box-content">
                <table class="table table-striped table-bordered bootstrap-datatable datatable">

                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Address</th>
                            <th>Phone</th>
                            <th>Created At</th>
                            <th>Role</th>
                            <th>Status</th>
                            <th>Actions</th>
                            <th>Info</th>
                        </tr>
                    </thead>   
                    <tbody>                                                     
                        <c:forEach items="${list}" var="x">
                            <tr>
                                <td><%= id++%></td>
                                <td class="center">${x.adminid.firstname} ${x.adminid.lastname}</td>
                                <td class="center">${x.adminid.email}</td>
                                <td class="center">${x.adminid.address}</td>
                                <td class="center">${x.adminid.phone}</td>
                                <td class="center">${x.adminid.created_at}</td>
                                <td class="center">${x.adminid.access_label}</td>
                                <td class="center">
                                    <span style="cursor: default;" class="btn ${x.adminid.status==0?"btn-success":"btn-danger"}">${x.adminid.status==0?"Active":"Blocked"}</span>
                                </td>
                                <td>
                                    <div class="btn-group">
                                        <button class="btn btn-default">Option</button>
                                        <button class="btn btn-default dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></button>
                                        <ul class="dropdown-menu">
                                            <li><a class="btn btn-info" href="${pageContext.servletContext.contextPath}/cpanel/updateadmin?id=${x.adminid.admin_id}">
                                                    <i class="halflings-icon white edit"></i>Update  
                                                </a></li>
<!--                                            <li><a class="btn btn-warning" href="${pageContext.servletContext.contextPath}/cpanel/deleteadmin?id=${x.adminid.admin_id}&username=${x.username}" onclick="return confirm('Are you sure you want delete?')">
                                                    <i class="halflings-icon white trash"></i> Delete
                                                </a>
                                            </li>-->

                                            <li ${x.adminid.status==0?"":"hidden"}><a class="btn btn-danger" href="${pageContext.servletContext.contextPath}/cpanel/blockadmin?id=${x.adminid.admin_id}"><i class="halflings-icon ban-circle"></i> Block</a></li>
                                            <li class="divider"></li>

                                            <li ${x.adminid.status==1?"":"hidden"}><a class="btn btn-danger" href="${pageContext.servletContext.contextPath}/cpanel/unblockadmin?id=${x.adminid.admin_id}"><i class="halflings-icon ok-circle"></i> Unblock</a></li>
                                        </ul>
                                    </div>
                                </td>
                                <td class="center">
                                    <a class="btn btn-default" href="${pageContext.servletContext.contextPath}/cpanel/admininfo?id=${x.adminid.admin_id}&username=${x.username}">
                                        More Info...
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>

                    </tbody>

                </table>   
                
            </div>
     
        </div><!--/span-->

    </div><!--/row-->




</div><!--/.fluid-container-->

<!-- end: Content -->
<%@include file="layout/footer.jsp" %>  