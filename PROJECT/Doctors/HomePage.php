<!DOCTYPE html>
<html lang="en">

<head>
<?php
include("../Assets/Connection/Connection.php");
include("SessionValidator.php");

	
	
	$selqry="select count(*) as coun  from tbl_appointmentrequest u inner join tbl_user p on u.user_id=p.user_id inner join tbl_service x on u.service_id=x.service_id where u.dentist_id='".$_SESSION['uid']."' AND status=0";
  $row=$con->query($selqry);
  $result=$row->fetch_assoc();
	
	
	
	?>
	<p align="center"><B>welcome:<?php echo $_SESSION["uname"];?></B></p>
    <meta charset="utf-8">
    <title>DentCare - Dental Clinic Website Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="../Assets/Template/Main/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600;700&family=Open+Sans:wght@400;600&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="../Assets/Template/Main/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="../Assets/Template/Main/lib/animate/animate.min.css" rel="stylesheet">
    <link href="../Assets/Template/Main/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />
    <link href="../Assets/Template/Main/lib/twentytwenty/twentytwenty.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="../Assets/Template/Main/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="../Assets/Template/Main/css/style.css" rel="stylesheet">
</head>

<body>


    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-grow text-primary m-1" role="status">
            <span class="sr-only">Loading...</span>
        </div>
        <div class="spinner-grow text-dark m-1" role="status">
            <span class="sr-only">Loading...</span>
        </div>
        <div class="spinner-grow text-secondary m-1" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Spinner End -->


    <!-- Topbar Start -->
    <div class="container-fluid bg-light ps-5 pe-0 d-none d-lg-block">
        <div class="row gx-0">
            <div class="col-md-6 text-center text-lg-start mb-2 mb-lg-0">
                <div class="d-inline-flex align-items-center">
                    
                </div>
            </div>
            <div class="col-md-6 text-center text-lg-end">
                <div class="position-relative d-inline-flex align-items-center bg-primary text-white top-shape px-5">
                    <div class="me-3 pe-3 border-end py-2">
                        <p class="m-0"><i class="fa fa-envelope-open me-2"></i>aamidentalclinic@gmail.com</p>
                    </div>
                    <div class="py-2">
                        <p class="m-0"><i class="fa fa-phone-alt me-2"></i>+917559012043</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light shadow-sm px-5 py-3 py-lg-0">
       
            <h1 class="m-0 text-primary"><i class="fa fa-tooth me-2"></i>Aami DentCare</h1>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto py-0">
               
            <a href="../Admin/HomePage.php" class="nav-item nav-link active">Home</a>
       
     <a href="../Guest/Logout.php" class="nav-item nav-link active">Logout</a>
           <!--  <div class="nav-item dropdown">
                    <a href="" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Privacy</a>
                    <div class="dropdown-menu m-0">
                        <a href="MyProfile.php" class="dropdown-item">Profile</a>
                        <a href="EditProfile.php" class="dropdown-item">Edit Profile</a>
                        <a href="ChangePassword.php" class="dropdown-item">Change Password</a>
                                          </div>
                                         
                </div>-->
                 <a href="MyProfile.php" class="nav-item nav-link">MyProfile</a>
                 
                  <a href="Patientrequest.php" class="nav-item nav-link"><span style="    color: white;
    background: red;
    padding: 5px;
    border-radius: 50%;"><?php echo $result["coun"] ?></span> PatientRequest </a>
    

                <div class="nav-item dropdown">
                  <a href="" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Diagnosis</a>
                  <div class="dropdown-menu m-0">
                      <a href="Diagnosis.php".php" class="dropdown-item">Add Diagnosis</a>
                     
                       
                      
                    
                                        </div>
                                       
              </div>
             
             <div class="nav-item dropdown">
                  <a href="" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Patients</a>
                  <div class="dropdown-menu m-0">
                      <a href="UserList.php" class="dropdown-item">Patient List</a>
                         <a href="Consulted.php" class="dropdown-item">Consulted List</a>
                     <!-- <a href="Patientrequest.php" class="dropdown-item"><span style="    color: white;
    background: red;
    padding: 5px;
    border-radius: 50%;"><?php echo $result["coun"] ?></span> PatientRequest </a>-->
                       <a href="Acceptedpatients.php" class="dropdown-item">AcceptedRequest</a>
                        <a href="Rejectedpatients.php" class="dropdown-item">RejectedRequest</a>
                       <div class="nav-item dropdown">
                  
                </div>
                
                
         </div>
      
       
    </nav>
    <!-- Navbar End -->


    <!-- Full Screen Search Start -->
    <div class="modal fade" id="searchModal" tabindex="-1">
        <div class="modal-dialog modal-fullscreen">
            <div class="modal-content" style="background: rgba(9, 30, 62, .7);">
                <div class="modal-header border-0">
                    <button type="button" class="btn bg-white btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body d-flex align-items-center justify-content-center">
                    <div class="input-group" style="max-width: 600px;">
                        <input type="text" class="form-control bg-transparent border-primary p-3" placeholder="Type search keyword">
                        <button class="btn btn-primary px-4"><i class="bi bi-search"></i></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Full Screen Search End -->


    <!-- Carousel Start -->
    <div class="container-fluid p-0">
        <div id="header-carousel" class="carousel slide carousel-fade" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                
                    <img src="../Assets/Template/Main/img/price-3.jpg" alt="Image" width="50%">
                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                        <div class="p-3" style="max-width: 900px;">
                       
                        
                        
                        
                            <h1 class="text-white text-uppercase mb-3 animated slideInDown">WELCOME</1>
                           <!-- <h1 class="display-1 text-white mb-md-4 animated zoomIn">Take The Best Quality Dental Treatment</h1>-->

                          
                            
                          <!--  <a href="../Assets/Template/Main/appointment.html" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Appointment</a>-->
                            <!--<a href="../Assets/Template/Main/" class="btn btn-secondary py-md-3 px-md-5 animated slideInRight">Contact Us</a>-->
                        </div>
                    </div>
                </div>
                
               <!-- <div class="carousel-item">
                    <img class="w-100" src="../Assets/Template/Main/img/carousel-2.jpg" alt="Image">
                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                        <div class="p-3" style="max-width: 900px;">
                            <h5 class="text-white text-uppercase mb-3 animated slideInDown">Keep Your Teeth Healthy</h5>
                            <h1 class="display-1 text-white mb-md-4 animated zoomIn">Take The Best Quality Dental Treatment</h1>
                            <a href="../Assets/Template/Main/appointment.html" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Appointment</a>
                            <a href="../Assets/Template/Main/" class="btn btn-secondary py-md-3 px-md-5 animated slideInRight">Contact Us</a>
                        </div>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#header-carousel"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#header-carousel"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>-->
    </div>
    <!-- Carousel End -->




    <!-- About Start -->
    <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container">
           <!-- <div class="row g-5">
                <div class="col-lg-7">-->
                   
                    
     
                   <div align="center">
                     <a href="ActiveTime.php" class="btn btn-primary py-3 px-5 mt-4 wow zoomIn" data-wow-delay="0.6s">My Working Schedule</a>
                   </div>
                </div>
               
               
             
              <!--  <div class="col-lg-5" style="min-height: 400px;">
                    <div class="position-relative h-100">
                        <img src="../Assets/Template/Main/img/1662878530073.jpg" class="position-absolute w-100 h-100 rounded wow zoomIn" style="object-fit: cover;" data-wow-delay="0.9s">
                    </div>
                </div>-->
            </div>
        </div>
    </div>
    <!-- About End -->


  

    
    

    <!-- Footer Start -->
    <div class="container-fluid bg-dark text-light py-5 wow fadeInUp" data-wow-delay="0.3s" style="margin-top: -75px;">
        <div class="container pt-5">
            <div class="row g-5 pt-4">
                <div class="col-lg-3 col-md-6">
                    <h3 class="text-white mb-4">Quick Links</h3>
                    <div class="d-flex flex-column justify-content-start">
                        <a class="text-light mb-2" href=""><i class="bi bi-arrow-right text-primary me-2"></i>Home</a>
                        <a class="text-light mb-2" href=""><i class="bi bi-arrow-right text-primary me-2"></i>About Us</a>
                        <a class="text-light mb-2" href=""><i class="bi bi-arrow-right text-primary me-2"></i>Our Services</a>
                        <a class="text-light mb-2" href=""><i class="bi bi-arrow-right text-primary me-2"></i>Latest Blog</a>
                        <a class="text-light" href=""><i class="bi bi-arrow-right text-primary me-2"></i>Contact Us</a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h3 class="text-white mb-4">Popular Links</h3>
                    <div class="d-flex flex-column justify-content-start">
                        <a class="text-light mb-2" href=""><i class="bi bi-arrow-right text-primary me-2"></i>Home</a>
                        <a class="text-light mb-2" href=""><i class="bi bi-arrow-right text-primary me-2"></i>About Us</a>
                        <a class="text-light mb-2" href=""><i class="bi bi-arrow-right text-primary me-2"></i>Our Services</a>
                        <a class="text-light mb-2" href=""><i class="bi bi-arrow-right text-primary me-2"></i>Latest Blog</a>
                        <a class="text-light" href=""><i class="bi bi-arrow-right text-primary me-2"></i>Contact Us</a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h3 class="text-white mb-4">Get In Touch</h3>
                    <p class="mb-2"><i class="bi bi-geo-alt text-primary me-2"></i>Mulamthuruthy,Ernakulam,Kerala</p>
                    <p class="mb-2"><i class="bi bi-envelope-open text-primary me-2"></i>aamidentalclinic@gmail.com</p>
                    <p class="mb-0"><i class="bi bi-telephone text-primary me-2"></i>+917559012043</p>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h3 class="text-white mb-4">Follow Us</h3>
                    <div class="d-flex">
                        <a class="btn btn-lg btn-primary btn-lg-square rounded me-2" href=""><i class="fab fa-twitter fw-normal"></i></a>
                        <a class="btn btn-lg btn-primary btn-lg-square rounded me-2" href=""><i class="fab fa-facebook-f fw-normal"></i></a>
                        <a class="btn btn-lg btn-primary btn-lg-square rounded me-2" href=""><i class="fab fa-linkedin-in fw-normal"></i></a>
                        <a class="btn btn-lg btn-primary btn-lg-square rounded" href=""><i class="fab fa-instagram fw-normal"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid text-light py-4" style="background: #051225;">
        <div class="container">
            <div class="row g-0">
                <div class="col-md-6 text-center text-md-start">
                    <p class="mb-md-0">&copy; <a class="text-white border-bottom" href="../Assets/Template/Main/#">Your Site Name</a>. All Rights Reserved.</p>
                </div>
                <div class="col-md-6 text-center text-md-end">
                    <p class="mb-0">&nbsp;</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="../Assets/Template/Main/#" class="btn btn-lg btn-primary btn-lg-square rounded back-to-top"><i class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../Assets/Template/Main/lib/wow/wow.min.js"></script>
    <script src="../Assets/Template/Main/lib/easing/easing.min.js"></script>
    <script src="../Assets/Template/Main/lib/waypoints/waypoints.min.js"></script>
    <script src="../Assets/Template/Main/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="../Assets/Template/Main/lib/tempusdominus/js/moment.min.js"></script>
    <script src="../Assets/Template/Main/lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="../Assets/Template/Main/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>
    <script src="../Assets/Template/Main/lib/twentytwenty/jquery.event.move.js"></script>
    <script src="../Assets/Template/Main/lib/twentytwenty/jquery.twentytwenty.js"></script>

    <!-- Template Javascript -->
    <script src="../Assets/Template/Main/js/main.js"></script>
</body>

</html>