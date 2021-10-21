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
	<link rel="stylesheet" href="<%=request.getContextPath() %>/doctorResources/css/star.css">

	<style type="text/css">

.rating {
    float:left;
}

/* :not(:checked) is a filter, so that browsers that don’t support :checked don’t 
   follow these rules. Every browser that supports :checked also supports :not(), so
   it doesn’t make the test unnecessarily selective */
.rating:not(:checked) > input {
    position:absolute;
    top:-9999px;
    clip:rect(0,0,0,0);
}

.rating:not(:checked) > label {
    float:right;
    width:1em;
    padding:0 .1em;
    overflow:hidden;
    white-space:nowrap;
    cursor:pointer;
    font-size:200%;
    line-height:1.2;
    color:#ddd;
    text-shadow:1px 1px #bbb, 2px 2px #666, .1em .1em .2em rgba(0,0,0,.5);
}

.rating:not(:checked) > label:before {
    content: ' ';
}

.rating > input:checked ~ label {
    color: #f70;
    text-shadow:1px 1px #c60, 2px 2px #940, .1em .1em .2em rgba(0,0,0,.5);
}

.rating:not(:checked) > label:hover,
.rating:not(:checked) > label:hover ~ label {
    color: gold;
    text-shadow:1px 1px goldenrod, 2px 2px #B57340, .1em .1em .2em rgba(0,0,0,.5);
}

.rating > input:checked + label:hover,
.rating > input:checked + label:hover ~ label,
.rating > input:checked ~ label:hover,
.rating > input:checked ~ label:hover ~ label,
.rating > label:hover ~ input:checked ~ label {
    color: #ea0;
    text-shadow:1px 1px goldenrod, 2px 2px #B57340, .1em .1em .2em rgba(0,0,0,.5);
}

.rating > label:active {
    position:relative;
    top:2px;
    left:2px;
}

</style>



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
                  <h4 class="card-title">Feedback ! It is important </h4>
  
              <f:form modelAttribute="feedbackVo" method="post" action="addFeedback.html">
                  
                
                    <fieldset>
 					  	                  
                    <div class="form-group">
                      <label for="exampleTextarea1">Feedback Description</label>
                      <f:textarea path="feedbackDescription" class="form-control" id="exampleTextarea1" rows="4" required="true"/>
                      
                     <%--  <f:hidden path="id" value="${diseasevo.id}" />  --%>
         			<div class="form-group">
                     <div class="rating">
    						<h5> <span class="flaticon-house-key"></span>Rating</h5>
    						<f:radiobutton id="star5" path="rating" value="5" /><label for="star5" title="Rocks!"><span class="fa fa-star checked"></span></label>
    						<f:radiobutton id="star4" path="rating" value="4" /><label for="star4" title="Pretty good"><span class="fa fa-star checked"></span></label>
							<f:radiobutton id="star3" path="rating" value="3" /><label for="star3" title="Meh"><span class="fa fa-star checked"></span></label>
							<f:radiobutton id="star2" path="rating" value="2" /><label for="star2" title="Kinda bad"><span class="fa fa-star checked"></span></label>
							<f:radiobutton id="star1" path="rating" value="1" /><label for="star1" title="Sucks big time"><span class="fa fa-star checked"></span></label>
					</div>
                     </div>
         
                    </div>
                     
                    
                   
                   
                    </fieldset>
                    <div class="form-group">
                     <input class="btn btn-primary" type="submit" value="Submit">
                   </div>
                    </f:form> <!-- TILL HERE  -->
              
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