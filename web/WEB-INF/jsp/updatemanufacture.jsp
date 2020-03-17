<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="layout/header.jsp" %>
<div id="content" class="span10">

    <ul class="breadcrumb">
        <li>
            <i class="icon-home"></i>
            <a href="${pageContext.servletContext.contextPath}/cpanel/dashboard">Home</a>
            <i class="icon-angle-right"></i> 
        </li>
        <li>
            <span>Update Manufacture</span>
        </li>
    </ul>
    <span class="break">${param.msg}</span>
    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header" data-original-title>
                <h2><i class="halflings-icon pencil"></i><span class="break"></span>update Manufacture</h2>
                <div class="box-icon">
                    <a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
                    <a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
                </div>
            </div>
            <div class="box-content">
                <form  class="form-horizontal" method="post" action="${pageContext.servletContext.contextPath}/manufacture/_updatemanufacture?id=${manufact.id}">

                    <div class="control-group">
                        <label class="control-label" for="manufacture_name">Manufacture Name</label>
                        <div class="controls">
                            <input type="text" id="name" name="manufacture_name" value="${manufact.manufacture_name}">
                        </div>
                    </div>  
                    <div class="control-group ">
                        <label class="control-label" for="textarea2">Manufacture Description</label>
                        <div class="controls">
                            <textarea class="cleditor" id="textarea2" rows="3" name="manufacture_description">${manufact.manufacture_description}</textarea>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="selectError">Choose Category</label>
                        <div class="controls">
                            <select id="selectError1" multiple data-rel="chosen" name="categ">

                                <c:forEach items="${clist}" var="x">
                                   
                                    <c:forEach items="${manufact.category}" var="y">
                                       
                                        <option ${x.id==y.id?"selected":""} value="${x.id}">${x.category_name}</option>
                                        
                                    </c:forEach>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">Status</label>
                        <div class="controls">
                            <label class="radio">
                                <input   name="publication_status" type="radio" value="0" ${manufact.publication_status==0?"class='checked' checked":""}>Active
                            </label>
                            <label class="radio" style="margin-top: 5px;">
                                <input name="publication_status" type="radio" value="1" ${manufact.publication_status==1?"class='checked' checked":""}>Inactive
                            </label>
                        </div>
                    </div>
                    <div class="form-actions">
                        <button type="submit"  class="btn btn-primary" id="submit" name="submit">Update</button>
                        <button type="reset" class="btn">Cancel</button>
                    </div>


                    </fieldset>
                </form> 

            </div>
        </div><!--/span-->

    </div><!--/row-->
</div>
<%@include file="layout/footer.jsp" %>