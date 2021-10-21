<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Ai in Medihealth</title>
  <!-- base:css -->
  <link rel="stylesheet" href="../admin/adminResources/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="../admin/adminResources/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="../admin/adminResources/css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="../admin/adminResources/images/favicon.png" />
</head>

<body class="sidebar-light">
  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
      <div class="content-wrapper d-flex align-items-center auth px-0">
        <div class="row w-100 mx-0">
          <div class="col-lg-6 border border-secondary mx-auto ">
            <div class="auth-form-light text-left py-5 px-4 px-sm-5">
              <div class="brand-logo">
                <img src="../admin/adminResources/images/logo-dark.svg" alt="logo">
              </div>
              <h4>Complain </h4>
              <h6 class="font-weight-light">Post Your Complain Here</h6>
               
               
               <form class="cmxform" id="commentForm" method="get" action="#">             <!-- CHANGED FROM HERE  -->
              	
              	
              	<div class="form-group">
                    <label for="firstname">Subject</label>
                    <input id="firstname" class="form-control" name="fname" minlength="2" type="text" required>
                </div>
                <div class="form-group">
                      <label for="exampleTextarea1">Description</label>
                      <textarea class="form-control" id="exampleTextarea1" rows="4" required></textarea>
                </div>
                
                <div class="mt-3">
                <input class="btn btn-block btn-primary btn-lg font-weight-medium" type="submit" value="Submit"> <!-- CHANGED HERE  -->
                  <!-- <a class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" href="index.jsp">SIGN UP</a> -->
                </div>
               
                
                
              </form> <!-- TILL HERE  -->
              
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
  <script src="../admin/adminResources/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- inject:js -->
  <script src="../admin/adminResources/js/off-canvas.js"></script>
  <script src="../admin/adminResources/js/hoverable-collapse.js"></script>
  <script src="../admin/adminResources/js/template.js"></script>
  <script src="../admin/adminResources/js/settings.js"></script>
  <script src="../admin/adminResources/js/todolist.js"></script>
  
  <script src="../admin/adminResources/js/jquery.validate.min.js"></script>
  <script src="../admin/adminResources/js/bootstrap-maxlength.min.js"></script>
  <script src="../admin/adminResources/js/form-validation.js"></script>
  <script src="../admin/adminResources/js/bt-maxLength.js"></script>
  <!-- endinject -->
</body>

</html>