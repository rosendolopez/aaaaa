<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<script src="./js/myApp.js"></script>
<script src="./js/myCtrl.js"></script>


<body>

<div ng-app="myApp" ng-controller="myCtrl"> 

<ul>
  <li ng-repeat="x in myWelcome">
    {{ x.nombreTorneo + ', ' + x.descripcion }}
  </li>
</ul>

</div>



<script>
var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope, $http) {
  $http.get("http://rpez.grupohsi.com:8080/Spring4MVCCRUDRestService/torneos/")
  .then(function(response) {
    $scope.myWelcome = response.data;
  });
});
</script>

<!-- http://rpez.grupohsi.com:8080/Spring4MVCCRUDRestService/torneos/ -->


</body>
</html>