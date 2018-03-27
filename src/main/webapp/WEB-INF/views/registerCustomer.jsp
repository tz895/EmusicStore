<%--
  Created by IntelliJ IDEA.
  User: Desktop
  Date: 2018/3/24
  Time: 14:39
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: Desktop
  Date: 2018/3/19
  Time: 22:12
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri ="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>





<div class="container-wrapper">
    <div class = "container" style="width: 50%; margin: 25px auto;">
        <div class = "page-header">
            <h1>Register Customer</h1>

            <p class="lead">Please fill in your information below!</p>
        </div>

        <form:form action = "${pageContext.request.contextPath}/register" method = "post" commandName="customer" >

            <h3>Basic Info</h3>

            <div class="form-group">
                <label for="name">Name</label><form:errors path="customerName" cssStyle="color:#ff0000" />
                <form:input path="customerName" id = "name" class="form-control" />
            </div>

            <div class="form-group">
                <label for="email">Email</label><span style="color: #ff0000">${emailMsg}</span><form:errors path="customerEmail" cssStyle="color:#ff0000" />
                <form:input path="customerEmail" id = "email" class="form-control" />
            </div>

            <div class="form-group">
                <label for="phone">Phone</label>
                <form:input path="customerPhone" id = "phone" class="form-control" />
            </div>

            <div class="form-group">
                <label for="username">Username</label><span style="color: #ff0000">${usernameMsg}</span><form:errors path="username" cssStyle="color:#ff0000" />
                <form:input path="username" id = "username" class="form-control" />
            </div>

            <div class="form-group">
                <label for="password">Password</label><form:errors path="username" cssStyle="color:#ff0000" />
                <form:password path="password" id = "password" class="form-control" />
            </div>

            <h3>Billing Address</h3>

            <div class="form-group">
                <label for="billingStreet">Street Name</label>
                <form:input path="billingAddress.streetName" id = "billingStreet" class="form-control" />
            </div>

            <div class="form-group">
                <label for="billingApartmentNumber">Apartment Number</label>
                <form:input path="billingAddress.apartmentNumber" id = "billingApartmentNumber" class="form-control" />
            </div>

            <div class="form-group">
                <label for="billingCity">City</label>
                <form:input path="billingAddress.city" id = "billingCity" class="form-control" />
            </div>

            <div class="form-group">
                <label for="billingState">State</label>
                <form:input path="billingAddress.state" id = "billingState" class="form-control" />
            </div>

            <div class="form-group">
                <label for="billingCountry">Country</label>
                <form:input path="billingAddress.country" id = "billingCountry" class="form-control" />
            </div>

            <div class="form-group">
                <label for="billingZipCode">Zipcode</label>
                <form:input path="billingAddress.zipCode" id = "billingZipCode" class="form-control" />
            </div>

            <h3>Shipping Address</h3>

            <div class="form-group">
                <label for="shippingStreet">Street Name</label>
                <form:input path="shippingAddress.streetName" id = "shippingStreet" class="form-control" />
            </div>

            <div class="form-group">
                <label for="shippingApartmentNumber">Apartment Number</label>
                <form:input path="shippingAddress.apartmentNumber" id = "shippingApartmentNumber" class="form-control" />
            </div>

            <div class="form-group">
                <label for="shippingCity">City</label>
                <form:input path="shippingAddress.city" id = "shippingCity" class="form-control" />
            </div>

            <div class="form-group">
                <label for="shippingState">State</label>
                <form:input path="shippingAddress.state" id = "shippingState" class="form-control" />
            </div>

            <div class="form-group">
                <label for="shippingCountry">Country</label>
                <form:input path="shippingAddress.country" id = "shippingCountry" class="form-control" />
            </div>

            <div class="form-group">
                <label for="shippingZipCode">Zipcode</label>
                <form:input path="shippingAddress.zipCode" id = "shippingZipCode" class="form-control" />
            </div>

            <br>

            <input type="submit" value="submit" class="btn btn-primary">
            <a href="<c:url value="/"/>" class="btn btn-light"> Cancel</a>

        </form:form>

    </div>




</div><!-- /.container -->

<%@include file="/WEB-INF/views/template/footer.jsp"%>


