<%--
  Created by IntelliJ IDEA.
  User: Desktop
  Date: 2018/3/26
  Time: 22:08
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri ="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>





<div class="container-wrapper">
    <div class = "container">
        <div class = "page-header">
            <h1>Customer Management Page</h1>

            <p class="lead">This is the customer management page.</p>


        </div>

        <table class="table table-striped table-hover" ng-app = "cartApp">
            <thead>
            <tr class="table-success">
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Username</th>
                <th>Enable</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items = "${customerList}" var="customer">
                <tr>

                    <td>${customer.customerName}</td>
                    <td>${customer.customerEmail}</td>
                    <td>${customer.customerPhone}</td>
                    <td>${customer.username}</td>
                    <td>${customer.enabled}</td>

                    <td>
                        <p ng-controller="cartCtrl">
                            <a href="<spring:url value = "/product/viewProduct/${product.productId}"/>"><i class="fas fa-info-circle fa-spin"></i></a>
                            <c:if test="${pageContext.request.userPrincipal.name != null}" >
                                <a href="#" ng-click="addToCart('${product.productId}')"><i class="fas fa-plus"></i></a>
                            </c:if>
                        </p>
                    </td>

                </tr>
            </c:forEach>
        </table>
    </div>




</div><!-- /.container -->

<script src="<c:url value="/resources/js/controller.js" />"></script>

<%@include file="/WEB-INF/views/template/footer.jsp"%>
