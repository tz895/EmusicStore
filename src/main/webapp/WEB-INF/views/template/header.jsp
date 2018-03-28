<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Desktop
  Date: 2018/3/14
  Time: 20:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--中文乱码问题 TODO--%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>Carousel Template for Bootstrap</title>

    <!-- Angular JS -->
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>

    <%--Jquery--%>
    <script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.min.js"></script>

    <%--Data Table--%>
    <script type="text/javascript" src="http://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>

    <!-- fontawesome CSS -->
    <link href="https://use.fontawesome.com/releases/v5.0.8/css/all.css" rel="stylesheet">

    <!-- Bootstrap core CSS -->
    <link href="<c:url value = "/resources/css/bootstrap.min.css"/>" rel="stylesheet">

    <link href="<c:url value = "/resources/css/main.css"/>" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="<c:url value = "/resources/css/carousel.css"/>" rel="stylesheet">

    <link href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" rel="stylesheet">


</head>

<body >

<header>
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href="#">Zpotify</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="<c:url value="/" />">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/product/productList/all" />">Products</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#">Disabled</a>
                </li>
            </ul>

            <ul class="navbar-nav pull-right">

                <c:if test="${pageContext.request.userPrincipal.name != null}" >
                    <li class="nav-item">
                        <a href="#" class="btn btn-dark nav-link">Welcome: ${pageContext.request.userPrincipal.name}</a>
                    </li>
                    <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
                        <li class="nav-item">
                            <a href="<c:url value="/customer/cart"/> "class="btn nav-link btn-dark">Cart</a>
                        </li>
                    </c:if>
                    <c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
                        <li class="nav-item">
                            <a href="<c:url value="/admin"/> "class="btn nav-link btn-dark">Admin</a>
                        </li>
                    </c:if>
                    <li class="nav-item" >
                        <a href="<c:url value="/j_spring_security_logout"/> "class="btn nav-link btn-dark">Logout</a>
                    </li>
                </c:if>
                <c:if test="${pageContext.request.userPrincipal.name == null}" >
                    <li class="nav-item">
                        <a href="<c:url value="/login"/>" class="btn nav-link btn-dark" style="color: #0069d9">Login</a>
                    </li>
                    <li class="nav-item" >
                        <a href="<c:url value="/register"/> "class="btn nav-link btn-dark">Register</a>
                    </li>
                </c:if>
            </ul>

        </div>
    </nav>
</header>

<main role="main">
    <br>