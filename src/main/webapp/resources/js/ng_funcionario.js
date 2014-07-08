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
			$http.get("http://localhost:8080/ProjetoRestaurante/rest/cargo/retornaCargos").
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
			$http.get("http://localhost:8080/ProjetoRestaurante/rest/categoria/retornaCategorias").
        	success(function(data) {
        		$scope.categorias = data;
        	});
		}
	});
	
	app.controller('RetornaCardapio', function ($http, $scope){
		$scope.getCardapio = function(){
			$http.get("http://localhost:8080/ProjetoRestaurante/rest/produto/retornaCardapio").
        	success(function(data) {
        		$scope.cardapio = data;
        	});
		}
		
		$scope.deleteItem = function(id){
			$http.delete("http://localhost:8080/ProjetoRestaurante/rest/produto/excluirItem/"+id).
        	success(function(data) {
        		$scope.cardapio = data;
        	});
		}
		
	});
	
	app.controller('RetornaVendas', function ($http, $scope){
		$scope.getVendas = function(){
			$http.get("http://localhost:8080/ProjetoRestaurante/rest/venda/retornaVendas").
        	success(function(data) {
        		$scope.vendas = data;
        	});
		}
	});
	
	app.controller('ProdutoControl', function ($http, $scope){
		$scope.funcionario = {};
		$scope.produto = {};
		$scope.elements = [{id: 'produto1'}];
		$scope.addNewProduto = function() {
			var newItemNo = $scope.elements.length+1;
		  	$scope.elements.push({'id_produto':'produto'+newItemNo});
		};
		$scope.showAddProduto = function(produto) {
			return produto.id_produto === $scope.produto[$scope.elements.length - 1].id_produto;
		};
		$scope.getProdutos = function(){
			$http.get("http://localhost:8080/ProjetoRestaurante/rest/produto/retornaProdutos").
        	success(function(data) {
        		$scope.produtos = data;
        	});
		}
		
		$scope.getProdutoById = function(id){
			$http.get("http://localhost:8080/ProjetoRestaurante/rest/produto/retornarProduto/"+id).
        	success(function(data) {
        		$scope.produto = data;
        	});
		}
		
		$scope.getFuncionarioById = function(id){
			$http.get("http://localhost:8080/ProjetoRestaurante/rest/funcionario/retornarFuncionario/"+id).
        	success(function(data) {
        		$scope.funcionario = data;
        	});
		}
		
		$scope.submitFormVenda = function(){
	    	var dataObject = {
	    		id_produto: $scope.produto,
	    		valor_produto: $scope.produto.valor,
	    		mesa: $scope.mesa,
	    		id_funcionario: $scope.funcionario,
	    		qtd_produto: 4,
	    		forma_pgto: 1,
	    		status: 1,
	    		datahora_pedido: Date.now()
	    		//datahora_pagamento: $scope.valor,
			};
	        $http.post("http://localhost:8080/ProjetoRestaurante/rest/venda/salvarVenda", dataObject).sucess(function(data) {
				console.log(data);
			});
	    }
	});
	
})();

