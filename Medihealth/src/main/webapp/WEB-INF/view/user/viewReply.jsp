<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Ai In Medihealth</title>
  <!-- base:css -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/adminResources/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="<%=request.getContextPath() %>/adminResources/css/vendor.bundle.base.css">
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
    
    
    <!-- partial-  -->
    <div class="container-fluid page-body-wrapper">
      
      <!--  To display setting button at right hand side down  -->
      
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
      
      <!-- setting button ends -->

      
<!--  ##############################################################################
      ################################  MENU  ######################################
      ############################################################################## -->
      
    				<jsp:include page="menu.jsp"></jsp:include> 

<!--  ############################################################################## -->

<div class="main-panel">
        <div class="content-wrapper">
          
 <c:forEach items="${viewUserComplains}" var="viewUserComplains">
 
          <div class="row grid-margin">
            <div class="col-lg-12">
              <div class="card">
                <div class="card-body">
                  <h3 class="card-title">Replied Complain </h3>
                  
             
                 <fieldset>
                    <div class="form-group">
                      <label for="exampleTextarea1">Complain Id: </label><h4 class="card-title">${viewUserComplains.complainID}</h4>
                    </div>
                    <div class="form-group">
                      <label for="exampleTextarea1">Subject: </label><h4 class="card-title">${viewUserComplains.subject}</h4>
                    </div>
                    <div class="form-group">
                      <label for="exampleTextarea1">Description: </label><h4 class="card-title">${viewUserComplains.description}</h4>
                    </div>
                    <div class="form-group">
                      <label for="exampleTextarea1">Complain Date: </label><h4 class="card-title">${viewUserComplains.complain_date}</h4>
                    </div>
					<div class="form-group">
                      <label for="exampleTextarea1">Given Reply: </label><h4 class="card-title">${viewUserComplains.reply}</h4>
                    </div>
					<div class="form-group">
                      <label for="exampleTextarea1">Replied Date: </label><h4 class="card-title">${viewUserComplains.reply_date}</h4>
                    </div>                    
					<div class="form-group">
                      <label for="exampleTextarea1">Status: </label><h4 class="card-title">${viewUserComplains.status}</h4>
                    </div>
                  </fieldset>
        	
                </div>
              </div>
            </div>
          </div>
   </c:forEach>
        </div>	

      </div>
	</div>
	
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
  <script src="<%=request.getContextPath() %>/adminResources/js/typeahead.bundle.min.js"></script>
<%--   <script src="<%=request.getContextPath() %>/adminResources/js/select2.min.js"></script> --%>
  <!-- End plugin js for this page -->
  <!-- Custom js for this page-->
  <script src="<%=request.getContextPath() %>/adminResources/js/form-validation.js"></script>
  <script src="<%=request.getContextPath() %>/adminResources/js/bt-maxLength.js"></script>	
  <script src="<%=request.getContextPath() %>/adminResources/js/typeahead.js"></script>
  <script src="<%=request.getContextPath() %>/adminResources/js/select2.js"></script>
  <script src="<%=request.getContextPath() %>/adminResources/js/file-upload.js"></script>
	
</body>

</html>