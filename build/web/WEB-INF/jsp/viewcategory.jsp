<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% int id = 1,id2=1;%>
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
            <span>View Category</span>
        </li>
    </ul>

    <div class="row-fluid sortable">		
        <div class="box span12">
            <div class="box-header" data-original-title>
                <h2><i class="fa fa-book"></i><span class="break"></span>Category Details</h2>
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
                            <th>Category Name</th>
                            <th>Category Description</th>
                            <th>Status</th>
                            <th>Created By</th>
                            <th>Modified By</th>
=                            <th>Actions</th>
                        </tr>
                    </thead>   
                    <tbody id="category2">                                                     
                        <c:forEach items="${list}" var="x">
                            <tr>
                                <td><%= id++%></td>
                                <td class="center">${x.category_name}</td>
                                <td class="center">${x.category_description}</td>
                                <td class="center">
                                    <span class="label ${x.publication_status==0?"label-success":"label-danger"}">${x.publication_status==0?"Active":"InActive"}</span>
                                </td>
                                <td class="center">${x.created_by}</td>
                                <td class="center">${x.modified_by==null?"---":x.modified_by}</td>
                                <td>
                                    <div class="btn-group">
                                        <button class="btn btn-primary">Option</button>
                                        <button class="btn btn-primary dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></button>
                                        <ul class="dropdown-menu">
                                            <li><a class="btn btn-info" href="${pageContext.servletContext.contextPath}/category/updatecategory?id=${x.id}">
                                                    <i class="halflings-icon white edit"></i>Update  
                                                </a></li>
                                            <li><a class="btn btn-warning" href="${pageContext.servletContext.contextPath}/category/deletecategory?id=${x.id}" onclick="return confirm('Are you sure you want delete?')">
                                                    <i class="halflings-icon white trash"></i> Delete
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
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