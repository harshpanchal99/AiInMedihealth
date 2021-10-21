<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html dir="ltr" lang="en">
<head>

    <!-- Meta Tags -->
    <meta name="viewport" content="width=device-width,initial-scale=1.0" />
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <meta name="description" content="DocPlace - Health, Medical And Dentist HTML5 Responsive Template">
    <meta name="keywords" content="clinic, tooth, dentistry, dental help, dental practice, dental service, dentist, doctor, dental health, medical, medicine, hospital">
    <meta name="author" content="a3themes">


    <title>DocPlace - Health, Medical And Dentist HTML5 Responsive Template</title>

    <!--Favicon Icon-->
    <link rel="icon" type="image/png" href="userResources/images/favicon.png">

    <!--Style Sheet-->
    <link rel="stylesheet" href="userResources/css/slicknav.css">
    <link rel="stylesheet" href="userResources/css/animate.css">
    <link rel="stylesheet" href="userResources/css/font-awesome.min.css">
    <link rel="stylesheet" href="userResources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="userResources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="userResources/css/magnific-popup.css">
    <link rel="stylesheet" href="userResources/css/superfish.css">
    <link rel="stylesheet" href="userResources/css/bootstrap.min.css">
    <link rel="stylesheet" href="userResources/css/bootstrap-theme.min.css">

    <!-- Main Stylesheet -->
    <link rel="stylesheet" href="userResources/css/style.css">

</head>

<body>
    <!--Header Start-->
   		
   		<jsp:include page="header.jsp"></jsp:include>
    
    <!--Header End-->

    <div class="container-fluid service-bg" id="uni">
        <div class="row">
            <div id="universal"></div>
            <div class="col-md-12">
                <h2>Contact</h2>
                <p><a href="index.html">home</a> &rarr; Contact</p>
            </div>
        </div>
    </div>

    <div class="container-fluid contact">
                <div class="container inner">
                    <div class="row">
                       
                        <div class="col-sm-12 col-md-7 col-lg-8">
                            <div class="msg">
                                <h3>Contact Form</h3>
                                <p>Please contact us through the following form:</p>
                                <div id="message-contact"></div>
                                <form action="mail/contact.php" method="post" id="contactform">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Enter Full Name" required="required" id="visitor_name" name="visitor_name">
                                    </div>
                                    <div class="form-group">
                                        <input type="email" class="form-control" placeholder="Enter Email Address" required="required" id="visitor_email" name="visitor_email">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Enter Phone Number" required="required" id="visitor_phone" name="visitor_phone">
                                    </div>
                                    <div class="form-group">
                                        <textarea class="form-control" id="visitor_comment" name="visitor_comment" cols="30" rows="10" placeholder="Enter Message" required="required"></textarea>
                                    </div>
                                    <input type="submit" value="SEND MESSAGE" class="btn btn-success" id="submit-contact">
                                </form>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-5 col-lg-4">
                            <div class="last">
                                <h3>Contact Address</h3>
                                <p>Please contact us through the following Address:</p>
                                <div class="last-part cmt">
                                    <div class="icon">
                                        <p><i class="fa fa-map-marker"></i></p>
                                    </div>
                                    <div class="text">
                                        <p>PO Box 1234,</p>
                                        <p>New York, NY 11111-2222, US</p>
                                    </div>
                                </div>
                                <div class="last-part">
                                    <div class="icon">
                                        <p><i class="fa fa-envelope-o"></i></p>
                                    </div>
                                    <div class="text">
                                        <p>firstemail@gmail.com</p>
                                        <p>secondemail@gmail.com</p>
                                    </div>
                                </div>
                                <div class="last-part">
                                    <div class="icon">
                                        <p><i class="fa fa-phone"></i></p>
                                    </div>
                                    <div class="text">
                                        <p>+111 222 3333</p>
                                        <p>+111 222 4444</p>
                                    </div>
                                </div>
                                <div class="last-part">
                                    <div class="icon">
                                        <p><i class="fa fa-fax"></i></p>
                                    </div>
                                    <div class="text">
                                        <p>(0087) 111 222 3333</p>
                                        <p>(0998) 111 222 4444</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    </div>

        </div>
    </div>


    <div class="map-responsive">
        <iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d6030.418742494061!2d-111.34563870463673!3d26.01036670629853!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses-419!2smx!4v1471908546569"></iframe>
    </div>



    <!--Footer Section Start -->
		<jsp:include page="footer.jsp"></jsp:include>
    <!-- Footer Bottom End -->
    
    <a href="#" class="scrollup">
		<i class="fa fa-angle-up"></i>
	</a>

    <script src="userResources/js/jquery-2.2.4.min.js"></script>
    <script src="userResources/js/bootstrap.min.js"></script>
    <script src="userResources/js/superfish.js"></script>
    <script src="userResources/js/jquery.mixitup.min.js"></script>
    <script src="userResources/js/jquery.magnific-popup.min.js"></script>
    <script src="userResources/js/owl.carousel.min.js"></script>
    <script src="userResources/js/owl.animate.js"></script>
    <script src="userResources/js/jquery.slicknav.js"></script>
    <script src="userResources/js/jquery.counterup.js"></script>
    <script src="userResources/js/waypoints.min.js"></script>
    <script src="userResources/js/custom.js"></script>
</body>

</html>