<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Login</title>

        <!-- Bootstrap CDN -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>

    <body class="bg-light">

        <div class="container vh-100 d-flex justify-content-center align-items-center">

            <div class="card shadow p-4" style="width: 400px;">
                
                <h3 class="text-center mb-4">🔐 Login System</h3>

                <form action="MainController" method="post">

                    <input type="hidden" name="action" value="login"/>

                    <!-- Username -->
                    <div class="mb-3">
                        <label class="form-label">Username</label>
                        <input 
                            type="text" 
                            name="txtUsername" 
                            class="form-control"
                            placeholder="Enter username"
                            required />
                    </div>

                    <!-- Password -->
                    <div class="mb-3">
                        <label class="form-label">Password</label>
                        <input 
                            type="password" 
                            name="txtPassword" 
                            class="form-control"
                            placeholder="Enter password"
                            required />
                    </div>

                    <!-- Button -->
                    <div class="d-grid">
                        <button type="submit" class="btn btn-primary">
                            Login
                        </button>
                    </div>

                </form>

                <!-- Message -->
                <c:if test="${not empty message}">
                    <div class="alert alert-danger mt-3 text-center">
                        ${message}
                    </div>
                </c:if>

            </div>

        </div>

    </body>
</html>