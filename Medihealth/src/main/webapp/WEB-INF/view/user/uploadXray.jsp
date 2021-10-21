<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Information</title>

<!-- base:css -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/adminResources/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="<%=request.getContextPath() %>/adminResources/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/adminResources/css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="<%=request.getContextPath() %>/adminResources/images/favicon.png" />





</head>
<body class="sidebar-light">
  <div class="container-scroller">
    <!-- partial:../../partials/_navbar.html -->
    
<!--  ##############################################################################
      ################################  HEADER  ####################################
      ############################################################################## -->
         
        <jsp:include page="header1.jsp"></jsp:include>
    
<!--  ############################################################################## -->
    
    
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:../../partials/_settings-panel.html -->
      <div class="theme-setting-wrapper">
        <div id="settings-trigger"><i class="mdi mdi-settings"></i></div>
        <div id="theme-settings" class="settings-panel">
          <i class="settings-close mdi mdi-close"></i>
          <p class="settings-heading">SIDEBAR SKINS</p>
          <div class="sidebar-bg-options" id="sidebar-light-theme"><div class="img-ss rounded-circle bg-light border mr-3"></div>Light</div>
          <div class="sidebar-bg-options selected" id="sidebar-dark-theme"><div class="img-ss rounded-circle bg-dark border mr-3"></div>Dark</div>
          <p class="settings-heading mt-2">HEADER SKINS</p>
          <div class="color-tiles mx-0 px-4">
            <div class="tiles success"></div>
            <div class="tiles warning"></div>
            <div class="tiles danger"></div>
            <div class="tiles primary"></div>
            <div class="tiles info"></div>
            <div class="tiles dark"></div>
            <div class="tiles default"></div>
          </div>
        </div>
      </div>
      <!-- partial -->
      <!-- partial:../../partials/_sidebar.html -->
      
<!--  ##############################################################################
      ################################  MENU  ######################################
      ############################################################################## -->
      
    				<jsp:include page="menu.jsp"></jsp:include> 

<!--  ############################################################################## -->
      
      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row">
            <div class="col-lg-12">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Please Upload Xray to get Analysis Result </h4>
  
  			<%-- <form class="cmxform" id="commentForm" method="post" action="uploadXray.html">	 --%>
           <form class="cmxform" method="post" action="uploadXray.html" enctype="multipart/form-data">             <!-- CHANGED FROM HERE  -->
              	
              	
              	<div class="form-group">
                    <label for="firstName">X-Ray Name</label>
                    <input id="firstName" class="form-control" name="xrayFileName" minlength="2" type="text" required>
                </div>
              
                <div class="form-group">
                      <label>Upload Xray File</label>      
                      <input type="file" class="file-upload-browse btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" name="file">                
 				</div>  
                
                
                <div class="mt-3">
                <input class="btn btn-block btn-primary btn-lg font-weight-medium" type="submit" value="Submit"> <!-- CHANGED HERE  -->
                  <!-- <a class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" href="index.jsp">SIGN UP</a> -->
                </div>
               
                
                
              </form> 	
              
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:../../partials/_footer.html -->
        
<!--  ##############################################################################
      ################################  FOOTER  ####################################
      ############################################################################## -->
      
        <jsp:include page="footer1.jsp"></jsp:include>
      
<!--  ############################################################################## -->  
        
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- base:js -->
  <script src="<%=request.getContextPath() %>/adminResources/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- inject:js -->
  <script src="<%=request.getContextPath() %>/adminResources/js/off-canvas.js"></script>
  <script src="<%=request.getContextPath() %>/adminResources/js/hoverable-collapse.js"></script>
  <script src="<%=request.getContextPath() %>/adminResources/js/template.js"></script>
  <script src="<%=request.getContextPath() %>/adminResources/js/settings.js"></script>
  <script src="<%=request.getContextPath() %>/adminResources/js/todolist.js"></script>
  <!-- endinject -->
  <!-- plugin js for this page -->
  <script src="<%=request.getContextPath() %>/adminResources/js/jquery.validate.min.js"></script>
  <script src="<%=request.getContextPath() %>/adminResources/js/bootstrap-maxlength.min.js"></script>
  <!-- End plugin js for this page -->
  <!-- Custom js for this page-->
  <script src="<%=request.getContextPath() %>/adminResources/js/form-validation.js"></script>
  <script src="<%=request.getContextPath() %>/adminResources/js/bt-maxLength.js"></script>
  <!-- End custom js for this page-->
</body>

</html>