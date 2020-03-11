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
                                            <form id="form-valid" class="form-horizontal" method="post" action="${pageContext.servletContext.contextPath}/category/_updatecategory?category_id=${x.category_id}">
                                                    
							<div class="control-group">
							  <label class="control-label" for="category_name">Category Name</label>
							  <div class="controls">
								<input type="text" id="name" name="category_name" value="${x.category_name}">
							  </div>
							</div>  
                                                        <div class="control-group hidden-phone">
							  <label class="control-label" for="textarea2">Category Description</label>
							  <div class="controls">
                                                                <textarea class="cleditor" id="textarea2" rows="3" name="category_description">${x.category_description}</textarea>
							  </div>
							</div>
                                                        <div class="control-group">
                                                            <label class="control-label">Status</label>
                                                            <div class="controls">
                                                                <label class="radio">
                                                                    <input   name="publication_status" type="radio" value="0" ${x.publication_status==0?"checked":""} >Active
                                                                </label>
                                                                <label class="radio" style="margin-top: 5px;">
                                                                <input name="publication_status" type="radio" value="1" ${x.publication_status==1?"checked":""}>Inactive
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