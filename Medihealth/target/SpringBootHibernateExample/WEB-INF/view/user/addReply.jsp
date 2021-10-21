<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <title>Upbond - Responsive Admin Dashboard Template</title>
        <meta content="Admin Dashboard" name="description" />
        <meta content="ThemeDesign" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <link href="userResources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="userResources/css/icons.css" rel="stylesheet" type="text/css">
        <link href="userResources/css/style.css" rel="stylesheet" type="text/css">

    </head>


    <body class="fixed-left">

        <!-- Begin page -->
        <div id="wrapper">

            <!-- Top Bar Start -->
            <div class="topbar">
                <!-- LOGO -->
                <div class="topbar-left">
                    <div class="text-center">
                        <!--<a href="index.html" class="logo"><span>Up</span>Bond</a>-->
                        <!--<a href="index.html" class="logo-sm"><span>U</span></a>-->
                        <a href="index.html" class="logo"><img src="<%=request.getContextPath()%>/adminResources/images/logo.png" height="20" alt="logo"></a>
                        <a href="index.html" class="logo-sm"><img src="<%=request.getContextPath()%>/adminResources/images/logo_sm.png" height="30" alt="logo"></a>
                    </div>
                </div>
                <!-- Button mobile view to collapse sidebar menu -->
                <div class="navbar navbar-default" role="navigation">
                    <jsp:include page="header.jsp"></jsp:include>
                </div>
            </div>
            <!-- Top Bar End -->


            <!-- ========== Left Sidebar Start ========== -->

            <div class="left side-menu">
                <div class="sidebar-inner slimscrollleft">

                    <form class="sidebar-search">
                        <div class="">
                            <input type="text" class="form-control search-bar" placeholder="Search...">
                        </div>
                        <button type="submit" class="btn btn-search"><i class="fa fa-search"></i></button>
                    </form>

                    <div class="user-details">
                        <div class="text-center">
                            <img src="<%=request.getContextPath()%>/adminResources/images/avatar-1.jpg" alt="" class="img-circle">
                        </div>
                        <div class="user-info">
                            <div class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="caret"></span></a>
                            </div>

                            <!--<p class="text-muted m-0"><i class="fa fa-dot-circle-o text-success"></i> Online</p>-->
                        </div>
                    </div>
                    <!--- Divider -->


                    
                    <div class="clearfix"></div>
                </div> <!-- end sidebarinner -->
            </div>
            <!-- Left Sidebar End -->

            <!-- Start right Content here -->

            <div class="content-page">
                <!-- Start content -->
                <div class="content">

                    <div class="">
                        <div class="page-header-title">
                            <h4 class="page-title"></h4>
                        </div>
                    </div>

                    <div class="page-content-wrapper ">

                        <div class="container">

                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="panel panel-primary">

                                        <div class="panel-body">
                                            <h4 class="m-t-0 m-b-30">Complain Details</h4>

                                            <div class="row">
                                                <div class="col-sm-12 col-xs-12">
                                                    <h3 class="header-title m-t-0"><small class="text-info"><b></b></small></h3>
													<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
													<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
                                                    <div class="m-t-20">
                                                        <f:form class="replyfm" action="insertReply" method="post" modelAttribute="complaintVO">
                                                            <div class="form-group">
                                                                <label>Complaint Subject</label>
                                                                <div>                                                                   
                                                                    <f:input type="text" path="complaintSubject" readonly="readonly"/>                                                               
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label>Complaint Description</label>
                                                                <div>                                                                   
                                                                    <f:input type="text" path="complaintDescription" readonly="readonly"/>                                                               
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label>Reply</label>
                                                                <div>
                                                                    <f:textarea path="reply" required="required" class="form-control" rows="5"></f:textarea>                                                           
                                                             
                                                                    <f:hidden path="id"/>
                                                                    <f:hidden path="complaintFileName"/>
                                                                    <f:hidden path="complaintFilePath"/>
                                                                    <f:hidden path="loginVO.loginId"/>
                                                                    <f:hidden path="status"/>
                                                                    <f:hidden path="complaintDate"/>
                                                                    <f:hidden path="complainStatus"/>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                            	<button type="submit">SUBMIT</button>
                                                            	<button type="reset">RESET</button>
                                                            </div>
                                                        </f:form>
                                                    </div>

                                                </div>


                                            </div>
                                            <!-- end row -->
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- end row -->


                        </div><!-- container -->


                    </div> <!-- Page content Wrapper -->

                </div> <!-- content -->

                <jsp:include page="footer.jsp"></jsp:include>

            </div>
            <!-- End Right content here -->

        </div>
        <!-- END wrapper -->


        <!-- jQuery  -->
        <script src="<%=request.getContextPath()%>/adminResources/js/jquery.min.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/modernizr.min.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/detect.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/fastclick.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/jquery.slimscroll.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/jquery.blockUI.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/waves.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/wow.min.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/jquery.nicescroll.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/jquery.scrollTo.min.js"></script>

        <script type="text/javascript" src="<%=request.getContextPath()%>/adminResources/js/parsley.min.js"></script>

        <script type="text/javascript">
            $(document).ready(function() {
                $('form').parsley();
            });
        </script>

        <script src="<%=request.getContextPath()%>/adminResources/js/app.js"></script>

    </body>
</html> 