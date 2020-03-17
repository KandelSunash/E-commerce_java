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
					<span>Add Category</span>
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
                                            <form id="form-valid" class="form-horizontal" method="post" action="${pageContext.servletContext.contextPath}/category/_updatesubcategory?id=${sub.id}">
                                                    
							<div class="control-group">
							  <label class="control-label" for="category_name">Sub Category Name</label>
							  <div class="controls">
                                                              <input type="text" id="name" name="sub_name" value="${sub.sub_name}">
							  </div>
							</div>  
                                                        <div class="control-group hidden-phone">
							  <label class="control-label" for="textarea2">Sub Category Description</label>
							  <div class="controls">
                                                                <textarea class="cleditor" id="textarea2" rows="3" name="sub_desc">${sub.sub_desc}</textarea>
							  </div>
							</div>
                                                        <div class="control-group">
                                                            <label class="control-label" for="selectError">Choose Category</label>
								<div class="controls">
								  <select id="selectError" data-rel="chosen" name="cate">
                                                                      <option selected="" disabled="">Choose Category</option>
                                                                      <c:forEach items="${list}" var="x">
                                                                          <option ${sub.category.id==x.id?"selected":""} value="${x.id}">${x.category_name}</option>
                                                                      </c:forEach>
								  </select>
								</div>
							  </div>
                                                        <div class="control-group">
                                                            <label class="control-label">Status</label>
                                                            <div class="controls">
                                                                <label class="radio">
                                                                <input   name="publication_status" type="radio" value="0" ${sub.publication_status==0?"checked":""} >Active
                                                                </label>
                                                                <label class="radio" style="margin-top: 5px;">
                                                                <input name="publication_status" type="radio" value="1" ${sub.publication_status==1?"checked":""}>Inactive
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