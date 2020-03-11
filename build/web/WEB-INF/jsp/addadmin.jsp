<%@include file="layout/header.jsp" %>
<div id="content" class="span10">

    <ul class="breadcrumb">
        <li>
            <i class="icon-home"></i>
            <a href="${pageContext.servletContext.contextPath}/cpanel/dashboard">Home</a>
            <i class="icon-angle-right"></i> 
        </li>
        <li>
            <span>Register Admin</span>
        </li>
    </ul>
    <span class="break">${param.msg}</span>
    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header" data-original-title>
                <h2><i class="halflings-icon pencil"></i><span class="break"></span>Register Admin</h2>
                <div class="box-icon">
                    <a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
                    <a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
                </div>
            </div>
            <div class="box-content">
                <form id="form-valid" class="form-horizontal" method="post" action="${pageContext.servletContext.contextPath}/cpanel/_addadmin" enctype="multipart/form-data" >

                    <div class="control-group">
                        <label class="control-label" for="name">First Name</label>
                        <div class="controls">
                            <input type="text" id="name" name="firstname">
                        </div>
                    </div>         
                    <div class="control-group">
                        <label class="control-label" for="name">Last Name</label>
                        <div class="controls">
                            <input type="text" id="name" name="lastname">
                        </div>
                    </div>         
                    <div class="control-group">
                        <label class="control-label" for="username">Username</label>
                        <div class="controls">
                            <input type="text" id="username" name="username">
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="email">Email</label>
                        <div class="controls">
                            <input type="email" id="email" name="email">
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="password">Password</label>
                        <div class="controls">
                            <input name="password" id="password" type="password" onkeyup='check();' >
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="confirm_password">Confirm Password</label>
                        <div class="controls">
                            <input type="password" name="confirm_password" id="confirm_password"  onkeyup='check();'> 
                            <i id='message' style="position: relative; right: 25px;"></i> 
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="role">Gender</label>
                        <div class="controls">
                            <select id="selectError" data-rel="chosen" name="gender" >
                                <option disabled="" selected="">Choose Gender</option>
                                <option>Male</option>
                                <option>Female</option>
                                <option>Other</option>
                            </select>
                            <span style="margin-left: 10px;" id="selection"></span> 
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="address">Address</label>
                        <div class="controls">
                            <input type="text" id="address" name="address">
                        </div>
                    </div> 
                    <div class="control-group">
                        <label class="control-label" for="phone">Phone</label>
                        <div class="controls">
                            <input type="text" id="phone" name="phone">
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="role">Access Label</label>
                        <div class="controls">
                            <select data-rel="chosen" name="access_label" >
                                <option disabled="" selected="">Choose Role</option>
                                <option>Super_admin</option>
                                <option>Manager</option>
                                <option>Staff</option>

                            </select>
                            <span style="margin-left: 10px;" id="selection"></span> 
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="fileInput">Image</label>
                        <div class="controls">
                            <input class="input-file uniform_on" value="" id="fileInput" type="file" name="file">
                        </div>
                    </div>
                    <div class="form-actions">
                        <button type="submit"  class="btn btn-primary" id="submit">Register</button>
                        <button type="reset" class="btn">Cancel</button>
                    </div>


                    </fieldset>
                </form> 

            </div>
        </div><!--/span-->

    </div><!--/row-->

</div>
<script>
    var check = function () {
        if (document.getElementById('password').value ===
                document.getElementById('confirm_password').value) {
            document.getElementById('message').style.color = 'green';
            document.getElementById('message').className = 'icon-ok';
            document.getElementById("submit").disabled = false;

        } else {
            document.getElementById('message').style.color = 'red';
            document.getElementById('message').className = 'icon-remove';
            document.getElementById("submit").disabled = true;
        }
    };
</script>
<%@include file="layout/footer.jsp" %>