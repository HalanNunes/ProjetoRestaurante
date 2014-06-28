(function(){
	var app = angular.module('ProjetoRestaurante',[]);	
	app.controller('FuncionarioController', function ($scope, $http){
	    $scope.submitForm = function(){
	    	var dataObject = {
				nome : $scope.nome,
				cpf : $scope.cpf,
				endereco : $scope.endereco,
				telefone : $scope.telefone,
				email : $scope.email,
				login : $scope.login
			};
	    	
	        $http.post("http://localhost:8080/ProjetoRestaurante/rest/funcionario/salvarFuncionario", dataObject).sucess(function(data) {
				$scope.nome = data;
				console.log(data);
			});
	    }
	});
})();

