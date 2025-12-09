<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>WELDORK - Welding Website Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&family=Roboto:wght@700;800&display=swap"
        rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <!-- Spinner Start -->
    <div id="spinner"
        class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" role="status" style="width: 3rem; height: 3rem;"></div>
    </div>
    <!-- Spinner End -->


    <!-- Topbar Start -->
    <div class="container-fluid bg-primary text-white d-none d-lg-flex wow fadeIn" data-wow-delay="0.1s">
        <div class="container py-3">
            <div class="d-flex align-items-center">
                <a href="index.html">
                    <h2 class="text-white fw-bold m-0">WELDORK</h2>
                </a>
                <div class="ms-auto d-flex align-items-center">
                    <small class="ms-4"><i class="fa fa-map-marker-alt me-3"></i>123 Street, New York, USA</small>
                    <small class="ms-4"><i class="fa fa-envelope me-3"></i>info@example.com</small>
                    <small class="ms-4"><i class="fa fa-phone-alt me-3"></i>+012 345 67890</small>
                    <div class="ms-3 d-flex">
                        <a class="btn btn-sm-square btn-light text-primary ms-2" href=""><i
                                class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-sm-square btn-light text-primary ms-2" href=""><i
                                class="fab fa-twitter"></i></a>
                        <a class="btn btn-sm-square btn-light text-primary ms-2" href=""><i
                                class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <div class="container-fluid bg-white sticky-top wow fadeIn" data-wow-delay="0.1s">
        <div class="container">
            <nav class="navbar navbar-expand-lg bg-white navbar-light p-lg-0">
                <a href="index.html" class="navbar-brand d-lg-none">
                    <h1 class="fw-bold m-0">WELDORK</h1>
                </a>
                <button type="button" class="navbar-toggler me-0" data-bs-toggle="collapse"
                    data-bs-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav">
                        <a href="${pageContext.request.contextPath}/indexuser" class="nav-item nav-link active">Home</a>
                        <a href="${pageContext.request.contextPath}/about" class="nav-item nav-link">About</a>
                        <a href="${pageContext.request.contextPath}/service" class="nav-item nav-link">Services</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                            <div class="dropdown-menu bg-light rounded-0 rounded-bottom m-0">
                                <a href="${pageContext.request.contextPath}/feature" class="dropdown-item">Features</a>
                                <a href="${pageContext.request.contextPath}/team" class="dropdown-item">Our Team</a>
                                <a href="${pageContext.request.contextPath}/testimonial" class="dropdown-item">Testimonial</a>
                                <a href="${pageContext.request.contextPath}/appoinment" class="dropdown-item">Appoinment</a>
                                <a href="${pageContext.request.contextPath}/404" class="dropdown-item">404 Page</a>
                            </div>
                        </div>
                        <a href="${pageContext.request.contextPath}/contact" class="nav-item nav-link">Contact</a>
                    </div>
                    <div class="ms-auto d-none d-lg-block">
                    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:choose>
  <c:when test="${not empty sessionScope.loggedInUser}">
    <div class="dropdown d-inline-block me-2 user-dropdown">
      <button class="btn btn-outline-secondary py-2 px-3 dropdown-toggle" type="button" id="userDropdownMenu" data-bs-toggle="dropdown" aria-expanded="false">
        ${sessionScope.loggedInUser}
      </button>
      <ul class="dropdown-menu dropdown-menu-end animate__animated animate__fadeIn" aria-labelledby="userDropdownMenu">
        <li><a href="${pageContext.request.contextPath}/user/appointments" class="nav-item nav-link">My Appointments</a>
</li>
        <li><a href="${pageContext.request.contextPath}/user/upcoming" class="nav-item nav-link">Upcoming Appointments</a>
</li>
        <li><a class="dropdown-item" href="${pageContext.request.contextPath}/logout">Logout</a></li>
      </ul>
    </div>
  </c:when>
  <c:otherwise>
    <a href="${pageContext.request.contextPath}/login" class="btn btn-outline-secondary py-2 px-3 me-2">Login</a>
  </c:otherwise>
</c:choose>

                        <a href="" class="btn btn-primary py-2 px-3">Get A Quote</a>
                    </div>
                </div>
            </nav>
        </div>
    </div>
    <!-- Navbar End -->

    <!-- Page Header Start -->
    <div class="container-fluid page-header pt-5 mb-6 wow fadeIn" data-wow-delay="0.1s">
        <div class="container text-center pt-5">
            <div class="row justify-content-center">
                <div class="col-lg-7">
                    <div class="bg-white p-5">
                        <h1 class="display-6 text-uppercase mb-3 animated slideInDown">Contact</h1>
                        <nav aria-label="breadcrumb animated slideInDown">
                            <ol class="breadcrumb justify-content-center mb-0">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item"><a href="#">Pages</a></li>
                                <li class="breadcrumb-item" aria-current="page">Contact</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Contact Start -->
    <div class="pt-6 pb-6">
        <div class="container-fluid appoinment py-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="container pt-5">
                <div class="row gy-5 gx-0">
                    <div class="col-lg-6 pe-lg-5 wow fadeIn" data-wow-delay="0.3s">
                        <h1 class="display-6 text-uppercase text-white mb-4">Have Any Query? Feel Free To Contact Us
                        </h1>
                        <p class="text-white mb-5 wow fadeIn" data-wow-delay="0.4s">The contact form is currently inactive. Get a functional and working contact form with Ajax & PHP in a few minutes. Just copy and paste the files, add a little code and you're done. <a href="https://htmlcodex.com/contact-form">Download Now</a>.</p>
                        <div class="d-flex align-items-start wow fadeIn" data-wow-delay="0.5s">
                            <div class="btn-lg-square bg-white">
                                <i class="bi bi-envelope-at text-dark fs-3"></i>
                            </div>
                            <div class="ms-3">
                                <h6 class="text-white text-uppercase">Mail Us</h6>
                                <span class="text-white">info@example.com</span>
                            </div>
                        </div>
                        <hr class="bg-body">
                        <div class="d-flex align-items-start wow fadeIn" data-wow-delay="0.6s">
                            <div class="btn-lg-square bg-white">
                                <i class="bi bi-telephone text-dark fs-3"></i>
                            </div>
                            <div class="ms-3">
                                <h6 class="text-white text-uppercase">Call Us</h6>
                                <span class="text-white">+012 345 67890</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 mb-n5 wow fadeIn" data-wow-delay="0.7s">
                        <div class="bg-white p-5">
                            <h2 class="text-uppercase mb-4">Contact Us</h2>
                          <form action="${pageContext.request.contextPath}/submitContact" method="post">
  <div class="row g-3">
    <div class="col-sm-6">
      <div class="form-floating">
        <input type="text" class="form-control border-0 bg-light" id="name" name="name" placeholder="Your Name" required>
        <label for="name">Your Name</label>
      </div>
    </div>
    <div class="col-sm-6">
      <div class="form-floating">
        <input type="email" class="form-control border-0 bg-light" id="mail" name="email" placeholder="Your Email" required>
        <label for="mail">Your Email</label>
      </div>
    </div>
    <div class="col-sm-6">
      <div class="form-floating">
        <input type="text" class="form-control border-0 bg-light" id="mobile" name="mobile" placeholder="Your Mobile">
        <label for="mobile">Your Mobile</label>
      </div>
    </div>
    <div class="col-sm-6">
      <div class="form-floating">
        <input type="text" class="form-control border-0 bg-light" id="subject" name="subject" placeholder="Subject">
        <label for="subject">Subject</label>
      </div>
    </div>
    <div class="col-12">
      <div class="form-floating">
        <textarea class="form-control border-0 bg-light" id="message" name="message" placeholder="Leave a message here" style="height: 130px" required></textarea>
        <label for="message">Message</label>
      </div>
    </div>
    <div class="col-12 text-center">
      <button class="btn btn-primary w-100 py-3" type="submit">Submit Now</button>
    </div>
  </div>
</form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid px-0 wow fadeInUp" data-wow-delay="0.5s">
            <iframe class="w-100 h-100"
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3001156.4288297426!2d-78.01371936852176!3d42.72876761954724!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4ccc4bf0f123a5a9%3A0xddcfc6c1de189567!2sNew%20York%2C%20USA!5e0!3m2!1sen!2sbd!4v1603794290143!5m2!1sen!2sbd"
            frameborder="0" style="min-height: 500px; border:0;" allowfullscreen="" aria-hidden="false"
            tabindex="0"></iframe>
        </div>
    </div>
    <!-- Contact End -->


  <!-- Newsletter Start -->
<div class="container-fluid newsletter mt-6 wow fadeIn" data-wow-delay="0.1s">
    <div class="container pb-5">
        <div class="bg-white p-5 mb-5">
            <div class="row g-5">
                <div class="col-md-6 wow fadeIn" data-wow-delay="0.3s">
                    <h1 class="display-6 text-uppercase mb-4">Newsletter</h1>
                    <div class="d-flex">
                        <i class="far fa-envelope-open fa-3x text-primary me-4"></i>
                        <p class="fs-5 fst-italic mb-0">Subscribe to receive updates, offers, and service news directly in your inbox.</p>
                    </div>
                </div>
                <div class="col-md-6 wow fadeIn" data-wow-delay="0.5s">
                    <form action="${pageContext.request.contextPath}/subscribe" method="post">
                        <div class="form-floating mb-3">
                            <input type="email" name="email" class="form-control border-0 bg-light" id="mail" placeholder="Your Email" required>
                            <label for="mail">Your Email</label>
                        </div>
                        <button class="btn btn-primary w-100 py-3" type="submit">Submit Now</button>
                    </form>

                    <!-- Feedback Messages -->
                    <c:if test="${not empty success}">
                        <div class="alert alert-success mt-3">${success}</div>
                    </c:if>
                    <c:if test="${not empty error}">
                        <div class="alert alert-danger mt-3">${error}</div>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Newsletter End -->


    <!-- Footer Start -->
    <div class="container-fluid bg-dark footer py-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-lg-3 col-md-6">
                    <h5 class="text-uppercase text-light mb-4">Our Office</h5>
                    <p class="mb-2"><i class="fa fa-map-marker-alt text-primary me-3"></i>123 Street, New York, USA</p>
                    <p class="mb-2"><i class="fa fa-phone-alt text-primary me-3"></i>+012 345 67890</p>
                    <p class="mb-2"><i class="fa fa-envelope text-primary me-3"></i>info@example.com</p>
                    <div class="d-flex pt-3">
                        <a class="btn btn-square btn-light me-2" href=""><i
                                class="fab fa-twitter"></i></a>
                        <a class="btn btn-square btn-light me-2" href=""><i
                                class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-square btn-light me-2" href=""><i
                                class="fab fa-youtube"></i></a>
                        <a class="btn btn-square btn-light me-2" href=""><i
                                class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h5 class="text-uppercase text-light mb-4">Quick Links</h5>
                    <a class="btn btn-link" href="">About Us</a>
                    <a class="btn btn-link" href="">Contact Us</a>
                    <a class="btn btn-link" href="">Our Services</a>
                    <a class="btn btn-link" href="">Terms & Condition</a>
                    <a class="btn btn-link" href="">Support</a>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h5 class="text-uppercase text-light mb-4">Business Hours</h5>
                    <p class="text-uppercase mb-0">Monday - Friday</p>
                    <p>09:00 am - 07:00 pm</p>
                    <p class="text-uppercase mb-0">Saturday</p>
                    <p>09:00 am - 12:00 pm</p>
                    <p class="text-uppercase mb-0">Sunday</p>
                    <p>Closed</p>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h5 class="text-uppercase text-light mb-4">Gallery</h5>
                    <div class="row g-1">
                        <div class="col-4">
                            <img class="img-fluid" src="img/service-1.jpg" alt="">
                        </div>
                        <div class="col-4">
                            <img class="img-fluid" src="img/service-2.jpg" alt="">
                        </div>
                        <div class="col-4">
                            <img class="img-fluid" src="img/service-3.jpg" alt="">
                        </div>
                        <div class="col-4">
                            <img class="img-fluid" src="img/service-4.jpg" alt="">
                        </div>
                        <div class="col-4">
                            <img class="img-fluid" src="img/service-5.jpg" alt="">
                        </div>
                        <div class="col-4">
                            <img class="img-fluid" src="img/service-6.jpg" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->


    <!-- Copyright Start -->
    <div class="container-fluid text-body copyright py-4">
        <div class="container">
            <div class="row">
                <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                    &copy; <a class="fw-semi-bold" href="#">Your Site Name</a>, All Right Reserved.
                </div>
                <div class="col-md-6 text-center text-md-end">
                    <!--/*** This template is free as long as you keep the below author’s credit link/attribution link/backlink. ***/-->
                    <!--/*** If you'd like to use the template without the below author’s credit link/attribution link/backlink, ***/-->
                    <!--/*** you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". ***/-->
                    Designed By <a class="fw-semi-bold" href="https://htmlcodex.com">HTML Codex</a> Distributed by <a href="https://themewagon.com" target="_blank">ThemeWagon</a></a>
                </div>
            </div>
        </div>
    </div>
    <!-- Copyright End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
            class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>