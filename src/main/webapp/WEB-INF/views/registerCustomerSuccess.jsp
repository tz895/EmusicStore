<%--
  Created by IntelliJ IDEA.
  User: Desktop
  Date: 2018/3/24
  Time: 21:08
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Customer register successfully</h1>
                </div>
            </div>
        </section>
        <section class="container" >

            <p>
                <a href="<spring:url value="/product/productList/"/>" class="btn btn-primary">Products</a>
            </p>

        </section>

    </div>
</div>


<script src="<c:url value="/resources/js/controller.js" /> "></script>
<%@include file="/WEB-INF/views/template/footer.jsp"%>
