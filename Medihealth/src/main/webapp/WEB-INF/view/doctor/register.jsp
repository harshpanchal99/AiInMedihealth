<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Ai in Medihealth</title>
  <!-- base:css -->
  <link rel="stylesheet" href="adminResources/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="adminResources/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="adminResources/css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="adminResources/images/favicon.png" />
  
  
  
<script type="text/javascript">

function function2()
{
	var email =  document.getElementById('cemail');
	var errorMessage = document.getElementById('errorMessage');
	
	var htp = new XMLHttpRequest();
	htp.onreadystatechange=function()
	{
		if(htp.readyState==4 & htp.status==200)
		{
			
			errorMessage.innerHTML=htp.responseText;
			
			if(htp.responseText!="")
			{
				
				email.focus();
			}
		}
	} 
	htp.open("get","verify.html?userName="+email.value+"",true);
	htp.send();
	
}

</script>
  
  
  
  
</head>

<body class="sidebar-light">
  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
      <div class="content-wrapper d-flex align-items-center auth px-0">
        <div class="row w-100 mx-0">
          <div class="col-lg-6 border border-secondary mx-auto">
            <div class="auth-form-light text-left py-5 px-4 px-sm-5">
              <div class="brand-logo">
                <img src="adminResources/images/logo-dark.svg" alt="logo">
              </div>
              <h4>Doctor Registration</h4>
              <h6 class="font-weight-light">Signing up is easy. It only takes a few steps</h6>
               
               
               <f:form class="cmxform" method="post" action="doctorInsert.html" modelAttribute="doctorRegisterVo"> <!-- CHANGED FROM HERE  -->
              	
              	
              	<div class="form-group">
                    <label for="firstname">First Name (required)</label>
                    <f:input path="firstname" id="firstname" class="form-control" minlength="2" type="text"/>
                    <!-- <input id="firstname" class="form-control" name="fname" minlength="2" type="text" required> -->
                </div>
                <div class="form-group">
                    <label for="lastname">Last Name (required)</label>
                    <f:input path="lastname" id="lastname" class="form-control" minlength="2" type="text"/>
                   <!--  <input id="lastname" class="form-control" name="lname" minlength="2" type="text" required> -->
                </div>
                <div class="form-group">
                    <label for="clinicNumber">Phone Number (required)</label>
                    <f:input path="phone_no" id="clinicNumber" class="form-control" name="clinicNum" minlength="2" type="text"/>
                    <!-- <input id="clinicNumber" class="form-control" name="clinicNum" minlength="2" type="text" required> -->
                </div>
                
                <div class="form-group">
                <label for="cname">Gender</label>
                  <div class="form-check">
                  <label class="form-check-label">
                  				<f:radiobutton path="gender" class="form-check-input" id="membershipRadios1" value="Male" checked="true" />
                                <!-- <input type="radio" class="form-check-input" name="membershipRadios" id="membershipRadios1" value="" checked> -->
                                Male
                  </label>
				  </div>
				  <div class="form-check">
                  <label class="form-check-label">
                  				<f:radiobutton path="gender" class="form-check-input" id="membershipRadios1" value="Female"  />
                             <!--    <input type="radio" class="form-check-input" name="membershipRadios" id="membershipRadios1" value="" > -->
                                Female
                  </label>
				  </div>
                </div>
                
                <div class="form-group">
                    <label for="cemail">Username (required)</label>
                    <f:input path="loginVo.username" id="cemail" class="form-control" onblur="function2()" required="true" />
                    <!-- input id="cemail" class="form-control" type="email" name="email" required> -->
                </div>
                
                <div id="errorMessage" style="font-size:medium;color:red;"></div>
                
                <div class="form-group">
                    <label for="deg">Password(required)</label>
                    <f:input path="loginVo.password" id="deg" class="form-control" minlength="2" required="true"/>
                   <!--  <input id="deg" class="form-control" name="degree" minlength="2" type="text" required> -->
                </div>
                
                
                <div class="mb-4">
                  <div class="form-check">
                    <label class="form-check-label">
                      <input type="checkbox" class="form-check-input">
                      I agree to all Terms & Conditions
                    </label>
                  </div>
                </div>
                <div class="mt-3">
                
                <input class="btn btn-block btn-primary btn-lg font-weight-medium" type="submit" value="SIGN UP"> <!-- CHANGED HERE  -->
                
                  <!-- <a class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" href="index.jsp">SIGN UP</a> -->
                </div>
                <div class="text-center mt-4 font-weight-light">
                  Already have an account? <a href="login.jsp" class="text-primary">Login</a>
                </div>
                
                
              </f:form> <!-- TILL HERE  -->
              
            </div>
          </div>
        </div>
      </div>
      <!-- content-wrapper ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- base:js -->
  <script src="adminResources/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- inject:js -->
  <script src="adminResources/js/off-canvas.js"></script>
  <script src="adminResources/js/hoverable-collapse.js"></script>
  <script src="adminResources/js/template.js"></script>
  <script src="adminResources/js/settings.js"></script>
  <script src="adminResources/js/todolist.js"></script>
  
  <script src="adminResources/js/jquery.validate.min.js"></script>
  <script src="adminResources/js/bootstrap-maxlength.min.js"></script>
  <script src="adminResources/js/form-validation.js"></script>
  <script src="adminResources/js/bt-maxLength.js"></script>
  <!-- endinject -->
</body>

</html>
