<%@include file="layout/header.jsp" %>
<div id="content" class="span10">

    <ul class="breadcrumb">
        <li>
            <i class="icon-home"></i>
            <a href="${pageContext.servletContext.contextPath}/cpanel/dashboard">Home</a>
            <i class="icon-angle-right"></i> 
        </li>
        <li>
            <i class="icon-edit"></i>
            <span>Update Admin</Span>
        </li>
    </ul>
    <span class="break">${param.msg}</span>
    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header" data-original-title>
                <h2><i class="halflings-icon edit"></i><span class="break"></span>Update Admin</h2>
                <div class="box-icon">
                    <a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
                    <a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
                </div>
            </div>
            <div class="box-content">
                <form class="form-horizontal" method="post" action="${pageContext.servletContext.contextPath}/cpanel/updateadmindata?id=${x.admin_id}" enctype="multipart/form-data" >
                    <fieldset>

                        <div class="control-group">
                            <label class="control-label" for="date01">First Name</label>
                            <div class="controls">
                                <input type="text" id="date01" name="firstname" value="${x.firstname}">
                            </div>
                        </div>         
                        <div class="control-group">
                            <label class="control-label" for="date01">Last Name</label>
                            <div class="controls">
                                <input type="text" id="date01" name="lastname" value="${x.lastname}">
                            </div>
                        </div>         

                        <div class="control-group">
                            <label class="control-label" for="date01">Email</label>
                            <div class="controls">
                                <input type="email" id="date01" name="email" value="${x.email}">
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="date01">Phone</label>
                            <div class="controls">
                                <input type="text" id="date01" name="phone" value="${x.phone}">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="fileInput">Image</label>
                            <div class="controls">
                                <input class="input-file uniform_on" id="fileInput" type="file" name="file">
                            </div>
                        </div> 
                        <div class="control-group">
                            <label class="control-label" for="date01">Address</label>
                            <div class="controls">
                                <input type="text" id="date01" name="address" value="${x.address}">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="role">Gender</label>
                            <div class="controls">
                                <select id="selectError" data-rel="chosen" name="gender" >
                                    <option disabled="" selected="">Choose Gender</option>
                                    <option ${x.gender.equals("Male")? "selected":""}>Male</option>
                                    <option  ${x.gender.equals("Female")? "selected":""}>Female</option>
                                    <option  ${x.gender.equals("Other")? "selected":""}>Other</option>
                                </select>
                                <span style="margin-left: 10px;" id="selection"></span> 
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="selectError">Role</label>
                            <div class="controls">
                                <select id="selectError2" data-rel="chosen" name="access_label">
                                    <option>Choose Role</option>
                                    <option ${x.access_label.equalsIgnoreCase("Super Admin")?"selected":" " }>Super Admin</option>
                                    <option ${x.access_label.equalsIgnoreCase("Manager")?"selected":" " }>Manager</option>
                                    <option ${x.access_label.equalsIgnoreCase("Customer Manager")?"selected":" " }>Customer Manager</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-actions">
                            <button type="submit" class="btn btn-primary" name="submit">Save Changes</button>
                            <button type="reset" class="btn">Cancel</button>
                        </div>


                    </fieldset>
                </form>   

            </div>
        </div><!--/span-->

    </div><!--/row-->
</div>

<%@include file="layout/footer.jsp" %>