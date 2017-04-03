var app = angular.module("myAppmaster", []);
app.controller("mainCtrl", function ($scope, $http) {

    $http({ method: "GET", url: 'getvegfoodDetails.asmx/GetallVegItems' }).then(function mySuccess(response) {
        $scope.foodDetails = response.data;

    }, function error(response) {
        $scope.foodDetails = response.statusText;
    });

    $http({ method: "GET", url: 'getvegfoodDetails.asmx/GetallNonVegItems' }).then(function mySuccess(response) {
        $scope.nonvegfoodDetails = response.data;

    }, function error(response) {
        $scope.nonvegfoodDetails = response.statusText;
    });


    $http({ method: "GET", url: 'getvegfoodDetails.asmx/GetallAdminData' }).then(function mySuccess(response) {
        $scope.displayAdminDashboard = response.data;

    }, function error(response) {
        $scope.displayAdminDashboard = response.statusText;
    });


});