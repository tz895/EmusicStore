var cartApp = angular.module("cartApp",[]);
cartApp.controller("cartCtrl",function ($scope, $http) {

    $scope.refreshCart = function () {
        $http.get('/eMusicstore/rest/cart/' + $scope.cartId).success(function (data) {
            $scope.cart = data;
        });
    };

    $scope.clearCart = function () {
        $http.delete('/eMusicstore/rest/cart/'+$scope.cartId).success($scope.refreshCart()).error(function () {
            alert("#@$%^&*")
        });
    };

    $scope.initCart = function (cartId) {
        $scope.cartId = cartId;
        $scope.refreshCart();
    };

    $scope.addToCart = function (productId) {
        $http.put('/eMusicstore/rest/cart/add/'+ productId).success(function () {
            alert("Product successfully added to the cart!")
        }).error(function () {
            alert("Need Login First!")
        });
    };

    $scope.removeFromCart = function (productId) {
        $http.put('/eMusicstore/rest/cart/remove/' + productId).success(function (data) {
            $scope.refreshCart();
        })
    };

    $scope.calGrandTotal = function () {
        var grandTotal = 0;

        for(var i = 0;i < $scope.cart.cartItems.length;i++) {
            grandTotal += $scope.cart.cartItems[i].totalPrice;
        }

        return grandTotal;
    }

});