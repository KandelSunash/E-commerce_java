
<div class="modal hide fade" id="myModal">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">×</button>
        <h3><i class="glyphicons-icon warning_sign"></i>Invalid</h3>
    </div>
    <div class="modal-body">
        <p>You are not authorize to open this page</p>
    </div>
    <div class="modal-footer">
        <a href="#" class="btn" data-dismiss="modal">Close</a>
    </div>
</div>

<div class="clearfix"></div>

<footer>

    <p>
        <span style="text-align:left;float:left">&copy; 2013 <a href="http://bootstrapmaster.com/" alt="Bootstrap Themes">Programmer</a></span>
        <span class="hidden-phone" style="text-align:right;float:right">Powered by: <a href="http://admintemplates.co/" alt="Bootstrap Admin Templates">Java Programmer<a></span>
                    </p>

                    </footer>
                    <!-- start: JavaScript-->

                    <script src="${pageContext.servletContext.contextPath}/resources/js/jquery-1.9.1.min.js"></script>
                    <script src="${pageContext.servletContext.contextPath}/resources/js/jquery-migrate-1.0.0.min.js"></script>

                    <script src="${pageContext.servletContext.contextPath}/resources/js/jquery-ui-1.10.0.custom.min.js"></script>

                    <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.ui.touch-punch.js"></script>

                    <script src="${pageContext.servletContext.contextPath}/resources/js/modernizr.js"></script>

                    <script src="${pageContext.servletContext.contextPath}/resources/js/bootstrap.min.js"></script>

                    <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.cookie.js"></script>

                    <script src='${pageContext.servletContext.contextPath}/resources/js/fullcalendar.min.js'></script>

                    <script src='${pageContext.servletContext.contextPath}/resources/js/jquery.dataTables.min.js'></script>

                    <script src="${pageContext.servletContext.contextPath}/resources/js/excanvas.js"></script>
                    <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.flot.js"></script>
                    <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.flot.pie.js"></script>
                    <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.flot.stack.js"></script>
                    <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.flot.resize.min.js"></script>

                    <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.chosen.min.js"></script>

                    <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.uniform.min.js"></script>

                    <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.cleditor.min.js"></script>

                    <script src="${pageContext.servletContext.contextPath}/resources/js/notify.min.js"></script>

                    <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.elfinder.min.js"></script>

                    <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.raty.min.js"></script>

                    <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.iphone.toggle.js"></script>

                    <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.uploadify-3.1.min.js"></script>

                    <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.gritter.min.js"></script>

                    <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.imagesloaded.js"></script>

                    <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.masonry.min.js"></script>

                    <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.knob.modified.js"></script>

                    <script src="${pageContext.servletContext.contextPath}/resources/js/jquery.sparkline.min.js"></script>

                    <script src="${pageContext.servletContext.contextPath}/resources/js/counter.js"></script>

                    <script src="${pageContext.servletContext.contextPath}/resources/js/retina.js"></script>

                    <script src="${pageContext.servletContext.contextPath}/resources/js/custom.js"></script>

                    <!-- end: JavaScript-->
                    <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>-->

                    <script type="text/javascript">
                        $('.list').on('change', function () {
                            $('.list').not(this).prop('checked', false);
                        });
                        $("#select_all").change(function () {  //"select all" change 
                            $(".checkbox").prop('checked', $(this).prop("checked"));
//                                    $('.checkbox').attr('disabled','disabled'); //change all ".checkbox" checked status
                        });
                        $("#partial").change(function () {  //"select all" change 
                            $('.checkbox').prop('checked', false);
                            $("#select_all").prop('checked', false);
                            $('.checkbox').removeAttr('disabled', '');

                        });
                        $('.lists').click(function () {
                            // $(this).next().next().prop('disabled', !this.checked)
                            $('.lists').not(':checked').prop('disabled', $('.lists:checked').length == 2);
                        });
                    </script>
                    <script>
                        $("#category").chosen().change(function () {
                            var id = $(this).val();
                            $('.sub_category').hide();
                            $('.' + id).show();
                        }
                        );

                    </script>
                    <script>
                        $(document).ready(function () {
                            $('#category2').on('click', function (e) {
                                var id = $(this).data("value");
                                $('.sub_category').hide();
                                $('.' + id).show();
                            });
                        });

                    </script>   

                    </body>

                    <!-- Mirrored from bootstrapmaster.com/live/metro/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 08 Jan 2018 16:56:47 GMT -->
                    </html>
