var app = angular.module('consumeRestApp', ['ngResource']);
alert("Hello! I am an alert box!!");

app.factory("torneos", function($resource) {
//    return $resource("http://localhost:8080/Spring4MVCCRUDRestService/torneos/");
	alert("Hello! I am an alert box... 2!!");
	return $resource("http://rpez.grupohsi.com:8080/Spring4MVCCRUDRestService/torneos/");
	
    //http://rpez.grupohsi.com:8080/Spring4MVCCRUDRestService/torneos/
});

app.controller("ArtistsCtrl", function($scope, torneos) {
	alert("Hello! I am an alert box...3!!");
    torneos.query(function(data) {
        $scope.torneos = data;
    }, function(err) {
        console.error("Error occured: ", err);
    });
});
