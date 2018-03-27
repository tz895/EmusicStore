<%--
  Created by IntelliJ IDEA.
  User: Desktop
  Date: 2018/3/26
  Time: 14:56
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri ="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>





<div class="container-wrapper">
    <div class = "container" style="width: 50%; margin: 25px auto;">
        <div class = "page-header">
            <h1>Customer</h1>

            <p class="lead">Customer Details</p>
        </div>

        <form:form commandName="order" class="form-horizaontal" >

            <h3>Shipping Address</h3>

            <div class="form-group">
                <label for="shippingStreet">Street Name</label>
                <form:input path="cart.customer.shippingAddress.streetName" id = "shippingStreet" class="form-control" />
            </div>

            <div class="form-group">
                <label for="shippingApartmentNumber">Apartment Number</label>
                <form:input path="cart.customer.shippingAddress.apartmentNumber" id = "shippingApartmentNumber" class="form-control" />
            </div>

            <div class="form-group">
                <label for="shippingCity">City</label>
                <form:input path="cart.customer.shippingAddress.city" id = "shippingCity" class="form-control" />
            </div>

            <div class="form-group">
                <label for="shippingState">State</label>
                <form:input path="cart.customer.shippingAddress.state" id = "shippingState" class="form-control" />
            </div>

            <div class="form-group">
                <label for="shippingCountry">Country</label>
                <form:input path="cart.customer.shippingAddress.country" id = "shippingCountry" class="form-control" />
            </div>

            <div class="form-group">
                <label for="shippingZipCode">Zipcode</label>
                <form:input path="cart.customer.shippingAddress.zipCode" id = "shippingZipCode" class="form-control" />
            </div>

            <input type="hidden" name="_flowExecutionKey" />

            <br>
            <button class="btn btn-light" name="_eventId_backToCollectCustomerInfo">Back</button>
            <input type="submit" value="Next" class="btn btn-primary" name="_eventId_shippingDetailCollected" />
            <button class="btn btn-light" name="_eventId_cancel">Cancel</button>

        </form:form>

    </div>




</div><!-- /.container -->

<%@include file="/WEB-INF/views/template/footer.jsp"%>
