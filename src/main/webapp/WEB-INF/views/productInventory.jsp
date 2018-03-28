<%--
  Created by IntelliJ IDEA.
  User: Desktop
  Date: 2018/3/19
  Time: 21:57
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri ="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<script>
    $(document).ready(function () {//when the document is finished loading,start to execute the function

        $('table').DataTable({
            "lengthMenu":[[5,10,20,30,50,-1],[5,10,20,30,50,"All"]],
        });
    })
</script>


<div class="container-wrapper">
    <div class = "container">
        <div class = "page-header">
            <h1>Product Inventory Page</h1>

            <p class="lead">This is the product inventory page!</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="table-success">
                <th>Photo Thumb</th>
                <th>Product Name</th>
                <th>Category</th>
                <th>Condition</th>
                <th>Price</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items = "${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.productId}.png"/> " alt="image" class = "index-page-image"></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice}</td>
                    <td>
                        <a href="<spring:url value = "/product/viewProduct/${product.productId}"/>"><i class="fas fa-info-circle"></i></a>

                        <a href="<spring:url value = "/admin/product/deleteProduct/${product.productId}"/>"><i class="fas fa-trash"></i></a>

                        <a href="<spring:url value = "/admin/product/editProduct/${product.productId}"/>"><i class="fas fa-edit"></i></a>
                    </td>
                </tr>
            </c:forEach>
        </table>

        <a href="<spring:url value="/admin/product/addProduct" />" class="btn btn-success">Add Product</a>
    </div>




</div><!-- /.container -->

<%@include file="/WEB-INF/views/template/footer.jsp"%>
