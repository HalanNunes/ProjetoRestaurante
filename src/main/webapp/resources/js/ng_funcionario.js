(function(){
	var app = angular.module('ProjetoRestaurante',[]);	
	app.controller('FuncionarioControl', function ($scope, $http){
	    $scope.submitForm = function(){
	    	var dataObject = {
				nome : $scope.nome,
				cpf : $scope.cpf,
				id_cargo: {
					id_cargo: document.getElementById('id_cargo').value.split(';')[0],
					descricao: document.getElementById('id_cargo').value.split(';')[1] 
				},
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
	
	app.controller('RetornaFuncionarios', function ($http, $scope){
		$scope.getFuncionarios = function(){
			$http.get("http://localhost:8080/ProjetoRestaurante/rest/funcionario/retornaFuncionarios").
        	success(function(data) {
        		$scope.funcionarios = data;
        	});
		}
	});
	
	app.controller('RetornaCargos', function ($http, $scope){
		$scope.getCargos = function(){
			$http.get("http://localhost:8080/ProjetoRestaurante/rest/funcionario/retornaCargos").
        	success(function(data) {
        		$scope.cargos = data;
        	});
		}
	});
	
	
	
	
	app.controller('ProdutoController', function ($scope, $http){
	    $scope.submitFormProduto = function(){
	    	var dataObject = {
				descricao : $scope.descricao,
				valor : $scope.valor,
				id_categoria: {
					id_categoria: document.getElementById('id_categoria').value.split(';')[0],
					descricao: document.getElementById('id_categoria').value.split(';')[1] 
				},
				unidade_medida : $scope.unidade_medida,
				custo : $scope.custo,
				qtde_estoque : $scope.qtde_estoque
			};
	    	
	        $http.post("http://localhost:8080/ProjetoRestaurante/rest/produto/salvarProduto", dataObject).sucess(function(data) {
				console.log(data);
			});
	    }
	});
	
	app.controller('RetornaCategorias', function ($http, $scope){
		$scope.getCategorias = function(){
			$http.get("http://localhost:8080/ProjetoRestaurante/rest/produto/retornaCategorias").
        	success(function(data) {
        		$scope.categorias = data;
        	});
		}
	});
	
})();

