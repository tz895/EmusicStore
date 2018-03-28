<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Desktop
  Date: 2018/3/21
  Time: 20:06
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Cart</h1>

                    <p>All the selected products in your shopping cart</p>
                </div>
            </div>
        </section>
        <section class="container" ng-app="cartApp">
            <div ng-controller = "cartCtrl" ng-init="initCart('${cartId}')">
                <div>
                    <a href="#" class="btn btn-danger pull-left" ng-click="clearCart()"><i class="fas fa-trash"></i>Clear Cart</a>
                    <a href="<spring:url value="/order/${cartId}"/>" class="btn btn-success pull-right"><i class="fas fa-shopping-cart"></i>Checkout</a>
                </div>

                <br>

                <table class="table table-hover">
                    <tr>
                        <th>Product</th>
                        <th>Unit Price</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Action</th>
                    </tr>
                    <tr ng-repeat="item in cart.cartItems ">
                        <td>{{item.product.productName}}</td>
                        <td>{{item.product.productPrice}}</td>
                        <td>{{item.quantity}}</td>
                        <td>{{item.totalPrice}}</td>
                        <td><a href="#" class="badge badge-danger" ng-click="removeFromCart(item.product.productId)">
                                <i class="fas fa-trash"></i>remove</a></td>
                    </tr>
                    <tr>
                        <th></th>
                        <th></th>
                        <th>Grand Total</th>
                        <th>{{calGrandTotal()}}</th>
                        <th></th>
                    </tr>
                </table>
            </div>
        </section>
        <a href="<spring:url value="/product/productList/all"/>" class="btn btn-primary">Continue Shopping</a>
    </div>
</div>


<script src="<c:url value="/resources/js/controller.js" /> "></script>
<%@include file="/WEB-INF/views/template/footer.jsp"%>