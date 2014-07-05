(function(){
	var app = angular.module('ProjetoRestaurante',[]);	
	app.controller('ProdutoController', function ($scope, $http){
	    $scope.submitForm = function(){
	    	var dataObject = {
				descricao : $scope.descricao,
				valor : $scope.valor,
				unidade_medida : $scope.unidade_medida,
				custo : $scope.custo,
				qtde_estoque : $scope.qtde_estoque
			};
	    	
	        $http.post("http://localhost:8080/ProjetoRestaurante/rest/produto/salvarProduto", dataObject).sucess(function(data) {
				$scope.nome = data;
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

