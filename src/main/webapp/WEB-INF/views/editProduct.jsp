<%--
  Created by IntelliJ IDEA.
  User: Desktop
  Date: 2018/3/20
  Time: 13:51
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri ="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>





<div class="container-wrapper">
    <div class = "container">
        <div class = "page-header">
            <h1>Edit Product</h1>

            <p class="lead">Please update information here to update product!</p>
        </div>

        <form:form action = "${pageContext.request.contextPath}/admin/product/editProduct" method = "post" commandName="product" enctype="multipart/form-data">

            <form:hidden path="productId" value="${product.productId}"/>
            <div class="form-group">
                <label for="name">Name</label> <form:errors path="productName" cssStyle="color:#ff0000" />
                <form:input path="productName" id = "name" class="form-control"  value="${product.productName}"/>
            </div>

            <div class="form-group">
                <label for="category">Category</label>
                <label class="checkbox-inline">
                    <form:radiobutton path ="productCategory" id="category" value="instrument" />
                    Instrument
                </label>
                <label class="checkbox-inline">
                    <form:radiobutton path ="productCategory" id="category" value="record" />
                    Record
                </label>
                <label class="checkbox-inline">
                    <form:radiobutton path ="productCategory" id="category" value="accessory" />
                    Accessory
                </label>
            </div>

            <div class="form-group">
                <label for="description">Description</label>
                <form:textarea path="productDescription" id = "description" class="form-control" value="${product.productDescription}"/>
            </div>

            <div class="form-group">
                <label for="price">Price</label> <form:errors path="productPrice" cssStyle="color:#ff0000" />
                <form:input path="productPrice" id = "price" class="form-control" value="${product.productPrice}"/>
            </div>

            <div class="form-group">
                <label for="condition">Category</label>
                <label class="checkbox-inline">
                    <form:radiobutton path ="productCondition" id="condition" value="new" />
                    New
                </label>
                <label class="checkbox-inline">
                    <form:radiobutton path ="productCondition" id="condition" value="used" />
                    Used
                </label>
            </div>

            <div class="form-group">
                <label for="status">Status</label>
                <label class="checkbox-inline">
                    <form:radiobutton path ="productStatus" id="status" value="active" />
                    Active
                </label>
                <label class="checkbox-inline">
                    <form:radiobutton path ="productStatus" id="status" value="inactive" />
                    Inactive
                </label>
            </div>

            <div class="form-group">
                <label for="unitInStock">Unit In Stock</label> <form:errors path="unitInStock" cssStyle="color:#ff0000" />
                <form:input path="unitInStock" id = "unitInStock" class="form-control" value="${product.unitInStock}"/>
            </div>

            <div class="form-group">
                <label for="manufacturer">Manufacturer</label>
                <form:input path="productManufacturer" id = "manufacturer" class="form-control" value="${product.productManufacturer}"/>
            </div>

            <div class="form-group">
                <label for="productImage" class="custom-control-label">Upload Picture</label>
                <form:input path="productImage" type="file" class="form:input-large" />
            </div>
            <br>

            <input type="submit" value="submit" class="btn btn-primary">
            <a href="<c:url value="/admin/productInventory"/>" class="btn btn-light"> Cancel</a>

        </form:form>

    </div>




</div><!-- /.container -->

<%@include file="/WEB-INF/views/template/footer.jsp"%>


