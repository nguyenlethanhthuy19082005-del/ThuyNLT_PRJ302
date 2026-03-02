<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Search University</title>

        <!-- Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>

    <body class="bg-light">

        <c:if test="${empty user}">
            <c:redirect url="login.jsp"/>
        </c:if>

        <jsp:include page="welcome.jsp" />

        <div class="container mt-4">

            <!-- Header -->
            <div class="d-flex justify-content-between align-items-center mb-3">
                <h3>University Management</h3>

                <a href="university-form.jsp" class="btn btn-success">
                    + Add University
                </a>
            </div>

            <!-- Search Form -->
            <div class="card shadow mb-4">
                <div class="card-body">

                    <form action="MainController" method="post" class="row g-3">
                        <input type="hidden" name="action" value="searchUniversity"/>

                        <div class="col-md-10">
                            <input type="text"
                                   name="keywords"
                                   value="${keywords}"
                                   class="form-control"
                                   placeholder="Enter university name...">
                        </div>

                        <div class="col-md-2 d-grid">
                            <button type="submit" class="btn btn-primary">
                                Search
                            </button>
                        </div>

                    </form>

                </div>
            </div>

            <!-- No Data -->
            <c:if test="${empty list}">
                <div class="alert alert-warning text-center">
                    No data matching the search criteria found!
                </div>
            </c:if>

            <!-- Table -->
            <c:if test="${not empty list}">
                <div class="card shadow">
                    <div class="table-responsive">

                        <table class="table table-bordered table-hover align-middle mb-0">

                            <thead class="table-dark text-center">
                                <tr>
                                    <th>Id</th>
                                    <th>Name</th>
                                    <th>Short</th>
                                    <th>City</th>
                                    <th>Region</th>
                                    <th>Type</th>
                                    <th>Founded</th>
                                    <th>Students</th>
                                    <th>Faculties</th>
                                    <th>Update</th>
                                    <th>Delete</th>
                                </tr>
                            </thead>

                            <tbody>

                                <c:forEach items="${list}" var="u">
                                    <tr>
                                        <td>${u.id}</td>
                                        <td>${u.name}</td>
                                        <td>${u.shortName}</td>
                                        <td>${u.city}</td>
                                        <td>${u.region}</td>
                                        <td>${u.type}</td>
                                        <td>${u.foundedYear}</td>
                                        <td>${u.totalStudents}</td>
                                        <td>${u.totalFaculties}</td>

                                        <!-- Update -->
                                        <td class="text-center">
                                            <c:if test="${u.isDraft}">
                                                <a href="MainController?action=updateUniversity&id=${u.id}"
                                                   class="btn btn-warning btn-sm">
                                                    Update
                                                </a>
                                            </c:if>
                                        </td>

                                        <!-- Delete -->
                                        <td class="text-center">
                                            <form action="MainController"
                                                  method="POST"
                                                  onsubmit="return confirm('Bạn có chắc chắn muốn xóa?');">

                                                <input type="hidden" name="action" value="deleteUniversity"/>
                                                <input type="hidden" name="id" value="${u.id}"/>
                                                <input type="hidden" name="keywords" value="${keywords}"/>

                                                <button type="submit"
                                                        class="btn btn-danger btn-sm">
                                                    Delete
                                                </button>

                                            </form>
                                        </td>

                                    </tr>
                                </c:forEach>

                            </tbody>

                        </table>

                    </div>
                </div>
            </c:if>

        </div>

    </body>
</html>