<%@page import="model.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Home</title>

        <!-- Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>

    <body class="bg-light">

        <c:if test="${empty user}">
            <c:redirect url="login.jsp"/>
        </c:if>

        <c:if test="${not empty user}">

            <!-- Navbar -->
            <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
                <div class="container">
                    <span class="navbar-brand">
                        Welcome, ${user.fullName}
                    </span>

                    <div>
                        <a href="MainController?action=logout"
                           class="btn btn-outline-light btn-sm">
                            Logout
                        </a>
                    </div>
                </div>
            </nav>

            <!-- Content -->
            <div class="container mt-5">

                <div class="card shadow">
                    <div class="card-body text-center">

                        <h3 class="card-title mb-3">
                            🎉 Login Successful
                        </h3>

                        <p class="card-text">
                            You are logged into the system.
                        </p>

                        <a href="search.jsp"
                           class="btn btn-primary">
                            Go to Search Page
                        </a>

                    </div>
                </div>

            </div>

        </c:if>

    </body>
</html>