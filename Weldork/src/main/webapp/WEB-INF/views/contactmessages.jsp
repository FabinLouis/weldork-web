<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Contact Messages</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
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
    <style> 
    .user-dropdown:hover .dropdown-menu {
    display: block;
    margin-top: 0;
}

.user-dropdown .dropdown-menu {
    min-width: 120px;
    box-shadow: 0 0 10px rgba(0,0,0,0.1);
    transition: all 0.3s ease;
}

.user-dropdown .dropdown-item:hover {
    background-color: var(--bs-primary);
    color: white;
}
    
     </style>
</head>
<body>

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
                        <a href="${pageContext.request.contextPath}/indexadmin" class="nav-item nav-link active">Home</a>
                        <a href="${pageContext.request.contextPath}/admin/contact-messages" class="nav-item nav-link active">Contact Messages</a>
                        <a href="${pageContext.request.contextPath}/admin/all" class="nav-item nav-link">All Appointments</a>
                        <a href="${pageContext.request.contextPath}/admin/newsletter" class="nav-item nav-link">Newsletter Subscribers</a>                        
                        <a href="${pageContext.request.contextPath}/admin/appointments" class="nav-item nav-link">Appointments</a>                        
                    </div>
                    <div class="ms-auto d-none d-lg-block">

<c:choose>
  <c:when test="${not empty sessionScope.loggedInUser}">
    <div class="dropdown d-inline-block me-2 user-dropdown">
      <button class="btn btn-outline-secondary py-2 px-3 dropdown-toggle" type="button" id="userDropdownMenu" data-bs-toggle="dropdown" aria-expanded="false">
        ${sessionScope.loggedInUser}
      </button>
      <ul class="dropdown-menu dropdown-menu-end animate__animated animate__fadeIn" aria-labelledby="userDropdownMenu">
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
    <div class="container mt-5">
        <h2 class="mb-4 text-center">Contact Messages</h2>
        <table class="table table-bordered table-hover">
            <thead class="table-light">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Mobile</th>
                    <th>Subject</th>
                    <th>Message</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="msg" items="${messages}">
                    <tr>
                        <td>${msg.id}</td>
                        <td>${msg.name}</td>
                        <td>${msg.email}</td>
                        <td>${msg.mobile}</td>
                        <td>${msg.subject}</td>
                        <td>${msg.message}</td>
                    </tr>
                </c:forEach>
                <c:if test="${empty messages}">
                    <tr>
                        <td colspan="6" class="text-center text-muted">No contact messages found.</td>
                    </tr>
                </c:if>
            </tbody>
        </table>
    </div>
    
        <!-- Footer -->
    <footer class="bg-dark text-white text-center py-3">
        <small>&copy; 2025 Weldork. All rights reserved.</small>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    
</body>
</html>
