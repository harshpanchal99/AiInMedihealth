<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manage Account</title>

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
         
        <jsp:include page="header.jsp"></jsp:include>
    
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
                  <h4 class="card-title">Update Information</h4>
                  <f:form class="cmxform" method="post" action="doctorUpdate.html" modelAttribute="doctorRegisterVo"> 
                    <fieldset>
                     
                      <div class="form-group">
                    <label for="firstname">First Name </label>
                    <f:input path="firstname" id="firstname" class="form-control" minlength="2" type="text" />
                    <!-- <input id="firstname" class="form-control" name="fname" minlength="2" type="text" required> -->
                </div>
                <div class="form-group">
                    <label for="lastname">Last Name </label>
                    <f:input path="lastname" id="lastname" class="form-control" minlength="2" type="text"/>
                   <!--  <input id="lastname" class="form-control" name="lname" minlength="2" type="text" required> -->
                </div>
               
                <div class="form-group">
                    <label for="clinicAddress">Address</label>
                    <f:input path="clinicAddress" id="clinicAddress" class="form-control" minlength="2" type="text"/>
                    <!-- <input id="clinicAddress" class="form-control" name="clinicAdd" minlength="2" type="text" required> -->
                </div>
                <div class="form-group">
                    <label for="time">Phone Number</label>
                    <f:input path="phone_no" id="time" class="form-control" minlength="2" type="text"  />
                    <!-- <input id="time" class="form-control" name="timing" minlength="2" type="text" required> -->
                </div>
                
                <!-- <div class="form-group">
                    <label for="speciality">Speciality</label>
                    <input id="speciality" class="form-control" name="speciality" minlength="2" type="text" required>
                </div> -->
                <div class="form-group">
                <label for="cname">Gender</label>
                  <div class="form-check">
                  <label class="form-check-label">
                  <f:radiobutton path="gender" class="form-check-input" id="membershipRadios1" value="male" checked="true"/>
                                <!-- <input type="radio" class="form-check-input" name="membershipRadios" id="membershipRadios1" value="" checked> -->
                                Male
                  </label>
				  </div>
				  <div class="form-check">
                  <label class="form-check-label">
                  <f:radiobutton path="gender" class="form-check-input" id="membershipRadios1" value="female" />               
                                <!-- <input type="radio" class="form-check-input" name="membershipRadios" id="membershipRadios1" value="" > -->
                                Female
                  </label>
				  </div>
                </div>
                
                <div class="form-group">
                    <label for="time">Specialization</label>
                    <f:input path="specialization" id="time" class="form-control" minlength="2" type="text"  />
                    <!-- <input id="time" class="form-control" name="timing" minlength="2" type="text" required> -->
                </div>
                
        		<div class="form-group">
                    <label for="time">Degree</label>
                    <f:input path="degree" id="time" class="form-control" minlength="2" type="text"  />
                    <!-- <input id="time" class="form-control" name="timing" minlength="2" type="text" required> -->
                </div>
                
                
		        <div class="form-group">
                    <label for="time">Timing</label>
                    <f:input path="timing" id="time" class="form-control" minlength="2" type="text"  />
                    <!-- <input id="time" class="form-control" name="timing" minlength="2" type="text" required> -->
                </div>                
                
                <div class="form-group">
                    <label for="experience">Experience</label>
                    <f:input path="experience" id="experience" class="form-control" minlength="2" type="text"  />
                    <!-- <input id="time" class="form-control" name="timing" minlength="2" type="text" required> -->
                </div>
                
                
                <div class="form-group">
                    <label for="cemail">Username (required)</label>
                    <f:input path="loginVo.username" id="cemail" class="form-control"  required="true"/>
                   <!--  <input id="cemail" class="form-control" type="email" name="email" required> -->
                </div>
              <div id="errorMessage" style="font-size:medium;color:red;"></div>
                <div class="form-group">
                    <label for="deg">Password(required)</label>
                   	<f:input path="loginVo.password" id="deg" class="form-control" minlength="2" required="true"/>
                   <!--  <input id="deg" class="form-control" name="degree" minlength="2" type="text" required> -->
                </div>
                	
               	<f:hidden path="doctorId" value="${doctorRegisterVo.doctorId}"/>		
                     
                      
                     
                      <input class="btn btn-primary" type="submit" value="Update">
                    </fieldset>
                  </f:form>
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
      
        <jsp:include page="footer.jsp"></jsp:include>
      
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