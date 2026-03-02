<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>403 - Access Denied</title>

        <!-- Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>

    <body class="bg-light">

        <div class="container vh-100 d-flex justify-content-center align-items-center">

            <div class="card shadow text-center p-5">

                <h1 class="display-1 text-danger fw-bold">
                    403
                </h1>

                <h3 class="mb-3">
                    Access Denied
                </h3>

                <p class="text-muted">
                    You do not have permission to access this resource.
                </p>

                <div class="mt-4">
                    <a href="search.jsp" class="btn btn-primary">
                        Go Home
                    </a>

                    <a href="MainController?action=logout"
                       class="btn btn-outline-secondary">
                        Logout
                    </a>
                </div>

            </div>

        </div>

    </body>
</html>