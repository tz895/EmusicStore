<%--
  Created by IntelliJ IDEA.
  User: Desktop
  Date: 2018/3/26
  Time: 20:57
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1 class="alert alert-danger">Checkout cancelled</h1>

                    <p>Your checkout process is cancelled. You may continue shopping.</p>
                </div>
            </div>
        </section>
        <section class="container" >

            <p>
                <a href="<spring:url value="/product/productList"/>" class="btn btn-primary">Products</a>
            </p>

        </section>

    </div>
</div>


<%@include file="/WEB-INF/views/template/footer.jsp"%>
