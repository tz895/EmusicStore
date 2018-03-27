<%--
  Created by IntelliJ IDEA.
  User: Desktop
  Date: 2018/3/26
  Time: 20:32
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri ="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<jsp:useBean id="now" class="java.util.Date" />





<div class="container-wrapper">
    <div class = "container">
        <div class = "page-header">
            <h1>Order</h1>

            <p class="lead">Order confirmation</p>
        </div>

        <div class="container">

            <div class="row">

                <form:form commandName="order" class="form-horizaontal" >

                    <div class="card" style="width: 40rem;">
                        <div class="card-body">
                        <div class="text-center">
                            <h1>Receipt</h1>
                        </div>

                        <div class="row">
                            <div class="col-6 col-sm-6 col-md-6">
                                <address>
                                    <strong>Shipping Address</strong>
                                    <br>
                                    ${order.cart.customer.shippingAddress.streetName}
                                    <c:if test="${order.cart.customer.shippingAddress.apartmentNumber.length() != 0}">
                                        <br>
                                            ${order.cart.customer.shippingAddress.apartmentNumber}
                                    </c:if>
                                        <br>
                                        ${order.cart.customer.shippingAddress.city},${order.cart.customer.shippingAddress.state}
                                    <br>
                                        ${order.cart.customer.shippingAddress.country},${order.cart.customer.shippingAddress.zipCode}
                                    <br>
                                </address>
                            </div>
                            <div class="col-6 col-sm-6 col-md-6 text-right">
                                <p>Shipping Date:<fmt:formatDate type="date" value="${now}"/> </p>

                            </div>


                            <div class="col-6 col-sm-6 col-md-6">
                                <address>
                                    <strong>Billing Address</strong>
                                    <br>
                                        ${order.cart.customer.billingAddress.streetName}

                                        <c:if test="${order.cart.customer.billingAddress.apartmentNumber.length() != 0}">
                                            <br>
                                            ${order.cart.customer.billingAddress.apartmentNumber}
                                        </c:if>
                                    <br>
                                        ${order.cart.customer.billingAddress.city},${order.cart.customer.billingAddress.state}
                                    <br>
                                        ${order.cart.customer.billingAddress.country},${order.cart.customer.billingAddress.zipCode}
                                    <br>
                                </address>
                            </div>

                        </div>

                        <div class="row">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Product</th>
                                        <th>#</th>
                                        <th class="text-center">Price</th>
                                        <th class="text-center">Total</th>
                                    </tr>
                                </thead>
                                <thead>
                                    <tbody>
                                        <c:forEach var="cartItem" items="${order.cart.cartItems}">
                                            <tr>
                                                <td class="col-md-9">
                                                    <em>
                                                        ${cartItem.product.productName}
                                                    </em>
                                                </td>
                                                <td class="col-md-1" style="text-align: center">
                                                    ${cartItem.quantity}
                                                </td>
                                                <td class="col-md-1" style="text-align: center">
                                                        ${cartItem.product.productPrice}
                                                </td>
                                                <td class="col-md-1" style="text-align: center">
                                                        ${cartItem.totalPrice}
                                                </td>
                                            </tr>
                                        </c:forEach>

                                        <tr>
                                            <td class="text-left">
                                                <h4><strong>Grand Total:</strong></h4>
                                            </td>
                                            <td></td>
                                            <td></td>
                                            <td class="text-center text-danger">
                                                <h4><strong>${order.cart.grandTotal}</strong></h4>
                                            </td>
                                        </tr>
                                    </tbody>
                                </thead>
                            </table>
                        </div>

                        <input type="hidden" name="_flowExecutionKey" />

                        <br>
                        <button class="btn btn-light" name="_eventId_backToCollectShippingDetail">Back</button>
                        <input type="submit" value="Submit Order" class="btn btn-primary" name="_eventId_orderConfirmed" />
                        <button class="btn btn-light" name="_eventId_cancel">Cancel</button>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>




</div><!-- /.container -->

<%@include file="/WEB-INF/views/template/footer.jsp"%>
