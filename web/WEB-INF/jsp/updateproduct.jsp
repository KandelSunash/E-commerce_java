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
            <span>Add Product </span>
        </li>
    </ul>
    <span class="break">${param.msg}</span>
    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header" data-original-title>
                <h2><i class="halflings-icon pencil"></i><span class="break"></span>Add Product</h2>
                <div class="box-icon">
                    <a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
                    <a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
                </div>
            </div>
            <div class="box-content">
                <form id="form-valid" class="form-horizontal" method="post" enctype="multipart/form-data" action="${pageContext.servletContext.contextPath}/product/_updateproduct?id=${product.id}">

                    <div class="control-group">
                        <label class="control-label" for="product_name">Product Name</label>
                        <div class="controls">
                            <input type="text"  name="product_name" value="${product.product_name}">
                        </div>
                    </div>  
                    <div class="control-group ">
                        <label class="control-label" for="textarea2">Short Description</label>
                        <div class="controls">
                            <textarea class="cleditor" id="textarea2" rows="3" name="short_description">${product.short_description}</textarea>
                        </div>
                    </div>
                    <div class="control-group ">
                        <label class="control-label" for="textarea2">Long Description</label>
                        <div class="controls">
                            <textarea class="cleditor" rows="3" name="long_description">${product.long_description}</textarea>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="selectError">Choose Category</label>
                        <div class="controls">
                            <select id="category" data-rel="chosen" name="catey">
                                <option selected="" disabled="">Choose Category</option>
                                <c:forEach items="${list}" var="x">
                                    <option value="${x.id}" ${product.category.id==x.id?"selected":""} onchange="setsubcategory('${x.id}')">${x.category_name}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="product_name">Product Price</label>
                        <div class="controls">
                            <input type="text"  name="product_price" value="${product.product_price}">
                        </div>
                    </div>  
                    <div class="control-group">
                        <label class="control-label" for="product_name">Discount (%)</label>
                        <div class="controls">
                            <input type="text"  name="discount" value="${product.discount}">
                        </div>
                    </div>  
                    <div class="control-group">
                        <label class="control-label" for="product_name">Product Size</label>
                        <div class="controls">
                            <input type="text"  name="product_size" value="${product.product_size}">
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="product_name">Product Color</label>
                        <div class="controls">
                            <input type="text"  name="product_color" value="${product.product_color}">
                        </div>
                    </div>  
                    <div class="control-group">
                        <label class="control-label" for="product_name">Product Quantity</label>
                        <div class="controls">
                            <input type="text"  name="product_quantity" value="${product.product_quantity}">
                        </div>
                    </div>  
                    <div class="control-group">
                        <label class="control-label" for="selectError">Choose Sub Category</label>
                        <div class="controls">
                            <select data-rel="chosen" name="sub_catey">
                                <option selected="" disabled="">Choose Sub Category</option>
                                <c:forEach items="${list}" var="x">
                                    <c:forEach items="${x.sub_category}" var="y"> 
                                        <option value="${y.id}" ${product.sub_category.id==y.id?"selected":""} class="sub_category ${y.category.id}">${y.sub_name}</option>
                                    </c:forEach>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="selectError">Choose Manufacture</label>
                        <div class="controls">
                            <select data-rel="chosen" id="manufacture" name="manufact">
                                <option selected="" disabled="">Choose Manufacture</option>
                                <c:forEach items="${mlist}" var="x">
                                    <option ${product.manufacture.id==x.id?"selected":""} value="${x.id}">${x.manufacture_name}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="fileInput">Product Image</label>
                        <div class="controls">
                            <input class="input-file uniform_on" id="fileInput" name="file" type="file">
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">Status</label>
                        <div class="controls">
                            <label class="radio">
                                <input name="publication_status" type="radio" value="0" ${product.publication_status==0?"checked":""}>Active
                            </label>
                            <label class="radio" style="margin-top: 5px;">
                                <input name="publication_status" type="radio" value="1" ${product.publication_status==1?"checked":""}>Inactive
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
