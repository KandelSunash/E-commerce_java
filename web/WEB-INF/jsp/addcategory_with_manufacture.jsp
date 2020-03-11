<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="layout/header.jsp" %>
<style>
    .button-loca{
        float:right;
        position: relative;
        right: 10em;
    }
    .button-loca a{
        color: whitesmoke;
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
            <span>Add Category</span>
        </li>
        <li class="button-loca">
            <div class="button-action">
                <button type="button"  class="btn btn-primary" id="submit"><a href="${pageContext.servletContext.contextPath}/category/">Add New Category</a></button>
            </div>
        </li>

    </ul>
    <span class="break">${param.msg}</span>
    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header" data-original-title>
                <h2><i class="halflings-icon pencil"></i><span class="break"></span>Add Category</h2>
                <div class="box-icon">
                    <a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
                    <a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
                </div>
            </div>
            <div class="box-content">
                <form id="form-valid" class="form-horizontal" method="post" action="${pageContext.servletContext.contextPath}/category/_addcategorymanufacture">

                    <div class="control-group">
                        <label class="control-label" for="category_name">Category Name</label>
                        <div class="controls">
                            <input type="text" id="name" name="category_name">
                        </div>
                    </div>  
                    <div class="control-group hidden-phone">
                        <label class="control-label" for="textarea2">Category Description</label>
                        <div class="controls">
                            <textarea class="cleditor" id="textarea2" rows="3" name="category_description"></textarea>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="selectError1">Choose Manufacture</label>
                        <div class="controls">
                            <select id="selectError1" multiple data-rel="chosen" name="manufact">
                                <c:forEach items="${list}" var="x">
                                    <option value="${x.id}">${x.manufacture_name}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">Status</label>
                        <div class="controls">
                            <label class="radio">
                                <input name="publication_status" type="radio" value="0" checked="" >Active
                            </label>
                            <label class="radio" style="margin-top: 5px;">
                                <input name="publication_status" type="radio" value="1" >Inactive
                            </label>
                        </div>
                    </div>
                    <div class="form-actions">
                        <button type="submit"  class="btn btn-primary" id="submit" name="submit">Register</button>
                        <button type="reset" class="btn">Cancel</button>
                    </div>


                    </fieldset>
                </form> 

            </div>
        </div><!--/span-->

    </div><!--/row-->
</div>
<%@include file="layout/footer.jsp" %>