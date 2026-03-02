<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>University Form</title>

        <!-- Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>

    <body class="bg-light">

        <div class="container mt-5">

            <div class="card shadow">
                <div class="card-header bg-primary text-white">
                    <h4 class="mb-0">
                        <c:choose>
                            <c:when test="${mode=='update'}">
                                Update University
                            </c:when>
                            <c:otherwise>
                                Add New University
                            </c:otherwise>
                        </c:choose>
                    </h4>
                </div>

                <div class="card-body">

                    <form action="MainController" method="POST">

                        <input type="hidden"
                               name="action"
                               value="${mode=='update'?'saveUpdateUniversity':'addUniversity'}"/>

                        <!-- ID -->
                        <div class="mb-3">
                            <label class="form-label">ID</label>
                            <input type="text"
                                   name="id"
                                   value="${u.id}"
                                   class="form-control"
                                   ${mode=='update'?'readonly':''}>
                        </div>

                        <!-- Name -->
                        <div class="mb-3">
                            <label class="form-label">University Name</label>
                            <input type="text"
                                   name="name"
                                   value="${u.name}"
                                   class="form-control"
                                   required>
                        </div>

                        <!-- Short Name -->
                        <div class="mb-3">
                            <label class="form-label">Short Name</label>
                            <input type="text"
                                   name="shortName"
                                   value="${u.shortName}"
                                   class="form-control">
                        </div>

                        <!-- Description -->
                        <div class="mb-3">
                            <label class="form-label">Description</label>
                            <input type="text"
                                   name="description"
                                   value="${u.description}"
                                   class="form-control">
                        </div>

                        <!-- Founded Year -->
                        <div class="mb-3">
                            <label class="form-label">Founded Year</label>
                            <input type="number"
                                   name="foundedYear"
                                   value="${u.foundedYear}"
                                   min="0"
                                   class="form-control">
                        </div>

                        <!-- Address -->
                        <div class="mb-3">
                            <label class="form-label">Address</label>
                            <input type="text"
                                   name="address"
                                   value="${u.address}"
                                   class="form-control">
                        </div>

                        <!-- City -->
                        <div class="mb-3">
                            <label class="form-label">City</label>
                            <input type="text"
                                   name="city"
                                   value="${u.city}"
                                   class="form-control">
                        </div>

                        <!-- Region -->
                        <div class="mb-3">
                            <label class="form-label">Region</label>
                            <input type="text"
                                   name="region"
                                   value="${u.region}"
                                   class="form-control">
                        </div>

                        <!-- Type -->
                        <div class="mb-3">
                            <label class="form-label">Type</label>
                            <input type="text"
                                   name="type"
                                   value="${u.type}"
                                   class="form-control">
                        </div>

                        <!-- Students -->
                        <div class="mb-3">
                            <label class="form-label">Total Students</label>
                            <input type="number"
                                   name="totalStudents"
                                   value="${u.totalStudents}"
                                   min="0"
                                   class="form-control">
                        </div>

                        <!-- Faculties -->
                        <div class="mb-3">
                            <label class="form-label">Total Faculties</label>
                            <input type="number"
                                   name="totalFaculties"
                                   value="${u.totalFaculties}"
                                   min="0"
                                   class="form-control">
                        </div>

                        <!-- Draft -->
                        <div class="form-check mb-3">
                            <input class="form-check-input"
                                   type="checkbox"
                                   name="isDraft"
                                   ${u.isDraft?'checked':''}>
                            <label class="form-check-label">
                                Draft Mode
                            </label>
                        </div>

                        <!-- Buttons -->
                        <div class="d-flex gap-2">

                            <button type="submit"
                                    class="btn btn-primary">
                                <c:choose>
                                    <c:when test="${mode=='update'}">
                                        Update
                                    </c:when>
                                    <c:otherwise>
                                        Add
                                    </c:otherwise>
                                </c:choose>
                            </button>

                            <a href="search.jsp"
                               class="btn btn-secondary">
                                Back
                            </a>

                        </div>

                    </form>

                    <!-- Messages -->
                    <c:if test="${not empty msg}">
                        <div class="alert alert-success mt-3">
                            ${msg}
                        </div>
                    </c:if>

                    <c:if test="${not empty error}">
                        <div class="alert alert-danger mt-3">
                            ${error}
                        </div>
                    </c:if>

                </div>
            </div>

        </div>

    </body>
</html>