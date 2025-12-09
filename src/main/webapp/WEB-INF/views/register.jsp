<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
      <!-- Favicon -->
    <link href="${pageContext.request.contextPath}/img/favicon.ico" rel="icon">

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&family=Roboto:wght@700;800&display=swap" rel="stylesheet">

    <!-- Icon Fonts -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries via CDN -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Bootstrap CSS -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template CSS -->
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
</head>
<body>
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
                        <a href="${pageContext.request.contextPath}/home" class="nav-item nav-link active">Home</a>
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
                    <a href="${pageContext.request.contextPath}/login" class="btn btn-outline-secondary py-2 px-3 me-2">Login</a>
                        <a href="" class="btn btn-primary py-2 px-3">Get A Quote</a>
                    </div>
                </div>
            </nav>
        </div>
    </div>
    <!-- Navbar End -->
<div class="container pt-6 pb-6">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="bg-light p-5 rounded shadow feature-row">
                <h2 class="fw-medium mb-4 text-center">Create Account</h2>
                <form action="${pageContext.request.contextPath}/register" method="post">
                    <div class="mb-3">
                        <label for="username" class="form-label fw-medium">Username</label>
                        <input type="text" class="form-control" id="username" name="username" required>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label fw-medium">Email</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label fw-medium">Password</label>
                        <input type="password" class="form-control" id="password" name="password" required>
                    </div>
                    <div class="mb-4">
                        <label for="confirmPassword" class="form-label fw-medium">Confirm Password</label>
                        <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" required>
                    </div>
                    <div class="d-grid">
                        <button type="submit" class="btn btn-primary text-uppercase">Register</button>
                    </div>
                </form>
                <c:if test="${not empty error}">
                    <div class="alert alert-danger mt-3">${error}</div>
                </c:if>
                <c:if test="${not empty success}">
                    <div class="alert alert-success mt-3">${success}</div>
                </c:if>
            </div>
        </div>
    </div>
</div>

</body>
</html>
