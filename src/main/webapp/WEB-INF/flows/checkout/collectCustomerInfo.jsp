<%--
  Created by IntelliJ IDEA.
  User: Desktop
  Date: 2018/3/26
  Time: 14:49
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

        <form:form commandName="order" class="form-horizontal" >

            <h3>Basic Info</h3>

            <div class="form-group">
                <label for="name">Name</label>
                <form:input path="cart.customer.customerName" id = "name" class="form-control" />
            </div>

            <div class="form-group">
                <label for="email">Email</label>
                <form:input path="cart.customer.customerEmail" id = "email" class="form-control" />
            </div>

            <div class="form-group">
                <label for="phone">Phone</label>
                <form:input path="cart.customer.customerPhone" id = "phone" class="form-control" />
            </div>


            <h3>Billing Address</h3>

            <div class="form-group">
                <label for="billingStreet">Street Name</label>
                <form:input path="cart.customer.billingAddress.streetName" id = "billingStreet" class="form-control" />
            </div>


            <div class="form-group">
                <label for="billingApartmentNumber">Apartment Number</label>
                <form:input path="cart.customer.billingAddress.apartmentNumber" id = "billingApartmentNumber" class="form-control" />
            </div>

            <div class="form-group">
                <label for="billingCity">City</label>
                <form:input path="cart.customer.billingAddress.city" id = "billingCity" class="form-control" />
            </div>

            <div class="form-group">
                <label for="billingState">State</label>
                <form:input path="cart.customer.billingAddress.state" id = "billingState" class="form-control" />
            </div>

            <div class="form-group">
                <label for="billingCountry">Country</label>
                <form:input path="cart.customer.billingAddress.country" id = "billingCountry" class="form-control" />
            </div>

            <div class="form-group">
                <label for="billingZipCode">Zipcode</label>
                <form:input path="cart.customer.billingAddress.zipCode" id = "billingZipCode" class="form-control" />
            </div>

            <input type="hidden" name="_flowExecutionKey" />

            <br>

            <input type="submit" value="Next" class="btn btn-primary" name="_eventId_customerInfoCollected" />
            <button class="btn btn-light" name="_eventId_cancel">Cancel</button>

        </form:form>

    </div>




</div><!-- /.container -->

<%@include file="/WEB-INF/views/template/footer.jsp"%>



