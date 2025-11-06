<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Your Appointments</title>

    <!-- Favicon -->
    <link href="${pageContext.request.contextPath}/img/favicon.ico" rel="icon">

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&family=Roboto:wght@700;800&display=swap" rel="stylesheet">

    <!-- Icon Fonts -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries -->
    <link href="${pageContext.request.contextPath}/lib/animate/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Bootstrap & Custom Styles -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
</head>
<body>

    <!-- Topbar -->
    <div class="container-fluid bg-primary text-white d-none d-lg-flex">
        <div class="container py-3 d-flex justify-content-between align-items-center">
            <a href="${pageContext.request.contextPath}/indexuser" class="text-white fw-bold h2 m-0">WELDORK</a>
            <div>
                <small class="me-4"><i class="fa fa-map-marker-alt me-2"></i>123 Street, New York, USA</small>
                <small class="me-4"><i class="fa fa-envelope me-2"></i>info@example.com</small>
                <small><i class="fa fa-phone-alt me-2"></i>+012 345 67890</small>
            </div>
        </div>
    </div>

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
                        <a href="${pageContext.request.contextPath}/user/upcoming" class="nav-item nav-link">Upcoming Appointments</a>
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

                        <a href="${pageContext.request.contextPath}/logout" class="btn btn-primary py-2 px-3">Logout</a>
                    </div>
                </div>
            </nav>
        </div>
    </div>
    <!-- Navbar End -->

    <!-- Main Content -->
    <main class="container py-5">
        <div class="row justify-content-center">
            <div class="col-lg-10">
                <h2 class="mb-4 text-center">Your Appointments</h2>
                <table class="table table-bordered table-hover">
                    <thead class="table-light">
                        <tr>
                            <th>Service</th>
                            <th>Status</th>
                            <th>Fee</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="appt" items="${appointments}">
                            <tr>
                                <td>${appt.service}</td>
                                <td>${appt.status}</td>
                                <td>
                                    <c:choose>
                                        <c:when test="${appt.fee > 0}">
                                            ₹${appt.fee}
                                        </c:when>
                                        <c:otherwise>
                                            —
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td>
                                    <c:choose>
                                        <c:when test="${appt.status == 'Accepted'}">
                                            <form action="${pageContext.request.contextPath}/user/pay" method="post">
                                                <input type="hidden" name="appointmentId" value="${appt.id}" />
                                                <input type="hidden" name="fee" value="${appt.fee}" />
                                                <button type="submit" class="btn btn-success btn-sm">Pay Now</button>
                                            </form>
                                        </c:when>
                                        <c:otherwise>
                                            <span class="text-muted">Action Taken</span>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                            </tr>
                        </c:forEach>
                        <c:if test="${empty appointments}">
                            <tr>
                                <td colspan="4" class="text-center text-muted">No appointments found.</td>
                            </tr>
                        </c:if>
                    </tbody>
                </table>
            </div>
        </div>
    </main>

    <!-- Footer -->
    <footer class="bg-dark text-white text-center py-3">
        <small>&copy; 2025 Weldork. All rights reserved.</small>
    </footer>

    <!-- Bootstrap JS -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
</body>
</html>
