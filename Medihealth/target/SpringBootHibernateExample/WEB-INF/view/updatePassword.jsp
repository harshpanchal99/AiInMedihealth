<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>AI in MEDIHEALTH</title>
  <!-- base:css -->
  <link rel="stylesheet" href="adminResourcescss/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="adminResources/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="adminResources/css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="adminResources/images/favicon.png" />
</head>

<body class="sidebar-light">
  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
      <div class="content-wrapper d-flex align-items-center auth px-0">
        <div class="row w-100 mx-0">
          <div class="col-lg-4 border border-secondary mx-auto">
            <div class="auth-form-light text-left py-5 px-4 px-sm-5">
              <div class="brand-logo">
                <img src="adminResources/images/logo-dark.png" alt="logo">
              </div>
              <h4>Hello! </h4>
              <h6 class="font-weight-light">Enter Password to continue.</h6>
              <form class="pt-3" action="updatedPasswordVerify.html" method="post">
                <div class="form-group">
                  <input type="text" name="firstPassword" class="form-control form-control-lg" id="exampleInputEmail1" placeholder="Enter New Password" required>
                </div>
 				<div class="form-group">
                  <input type="text" name="ConfirmPassword" class="form-control form-control-lg" id="exampleInputEmail1" placeholder="Enter same password as above" required>
                </div>               
               <%--  <input type="hidden" value="${emailVerify}" name="emailVerify"> --%>
                <div class="mt-3">
                	<input class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" type="submit" value="Submit">
                  <!-- <a class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" href="index.html">SIGN IN</a> -->
                </div>
                <div class="my-2 d-flex justify-content-between align-items-center">
                 
                </div>
               
              </form>
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
    <!-- plugin js for this page -->
  <script src="adminResources/js/jquery.validate.min.js"></script>
  <script src="adminResources/js/bootstrap-maxlength.min.js"></script>
    <script src="adminResources/js/form-validation.js"></script>
  <script src="adminResources/js/bt-maxLength.js"></script>
  
  
  <script src="adminResources/js/hoverable-collapse.js"></script>
  <script src="adminResources/js/template.js"></script>
  <script src="adminResources/js/settings.js"></script>
  <script src="adminResources/js/todolist.js"></script>
  <!-- endinject -->
</body>

</html>
