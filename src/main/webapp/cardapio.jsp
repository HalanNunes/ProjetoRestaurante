<html ng-app="ProjetoRestaurante">
<head>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.0-beta.13/angular.min.js"></script>
<script src="resources/js/ng_funcionario.js"></script>
</head>
<body>
	<h2 class="sub-header ">Cardápio</h2>
	<h3>Bebidas</h3>

	<table class="table table-striped table-hover" ng-controller="RetornaCardapio" data-ng-init="getCardapio()">
		<thead>
			<tr>
				<th class="text-center">Descrição</th>
				<th class="text-center">Preço</th>
				<th class="text-center">Estoque</th>
				<th class="text-center"></th>
				<th class="text-center"></th>
			</tr>
		</thead>
		<tbody ng-repeat="item in cardapio">
			<tr ng-if="item.id_categoria.id_categoria == 2">
				<td>{{item.descricao}}</td>
				<td class="text-right">{{item.valor | currency:"R$ "}}</td>
				<td class="text-center" ng-if="item.qtde_estoque == 1"><i class="glyphicon glyphicon-exclamation-sign" title="{{item.qtde_estoque}} item disponível."></i></td>
				<td class="text-center" ng-if="item.qtde_estoque > 1"><i class="glyphicon glyphicon-thumbs-up" title="{{item.qtde_estoque}} itens disponíveis."></i></td>
				<td class="text-center" ng-if="item.qtde_estoque == 0"><i class="glyphicon glyphicon-remove" title="Indisponível"></i></td>
				<td class="text-center"><a href="#"><i class="glyphicon glyphicon-pencil" title="Editar"></i></a></td>
				<td class="text-center"><a href="#"><i class="glyphicon glyphicon-trash" title="Excluir" ng-click="deleteItem({{item.id_produto}})"></i></a></td>
			</tr>
		</tbody>
	</table>

	<h3>Lanches</h3>
	<table class="table table-striped table-hover" ng-controller="RetornaCardapio" data-ng-init="getCardapio()">
		<thead>
			<tr>
				<th class="text-center">Descrição</th>
				<th class="text-center">Preço</th>
				<th class="text-center">Estoque</th>
				<th class="text-center"></th>
				<th class="text-center"></th>
			</tr>
		</thead>
		<tbody ng-repeat="item in cardapio">
			<tr ng-if="item.id_categoria.id_categoria == 1">
				<td>{{item.descricao}}</td>
				<td class="text-right">{{item.valor | currency:"R$ "}}</td>
				<td class="text-center" ng-if="item.qtde_estoque == 1"><i class="glyphicon glyphicon-exclamation-sign" title="{{item.qtde_estoque}} item disponível."></i></td>
				<td class="text-center" ng-if="item.qtde_estoque > 1"><i class="glyphicon glyphicon-thumbs-up" title="{{item.qtde_estoque}} itens disponíveis."></i></td>
				<td class="text-center" ng-if="item.qtde_estoque == 0"><i class="glyphicon glyphicon-remove" title="Indisponível"></i></td>
				<td class="text-center"><a href="#"><i class="glyphicon glyphicon-pencil" title="Editar"></i></a></td>
				<td class="text-center"><a href="#"><i class="glyphicon glyphicon-trash" title="Excluir" ng-click="deleteItem({{item.id_produto}})"></i></a></td>
			</tr>
		</tbody>
	</table>

	<h3>Porções</h3>
	<table class="table table-striped table-hover" ng-controller="RetornaCardapio" data-ng-init="getCardapio()">
		<thead>
			<tr>
				<th class="text-center">Descrição</th>
				<th class="text-center">Preço</th>
				<th class="text-center">Estoque</th>
				<th class="text-center"></th>
				<th class="text-center"></th>
			</tr>
		</thead>
		<tbody ng-repeat="item in cardapio">
			<tr ng-if="item.id_categoria.id_categoria == 3">
				<td>{{item.descricao}}</td>
				<td class="text-right">{{item.valor | currency:"R$ "}}</td>
				<td class="text-center" ng-if="item.qtde_estoque == 1"><i class="glyphicon-exclamation-sign glyphicon-ok" title="{{item.qtde_estoque}} item disponível."></i></td>
				<td class="text-center" ng-if="item.qtde_estoque > 1"><i class="glyphicon glyphicon-thumbs-up" title="{{item.qtde_estoque}} itens disponíveis."></i></td>
				<td class="text-center" ng-if="item.qtde_estoque == 0"><i class="glyphicon glyphicon-remove" title="Indisponível"></i></td>
				<td class="text-center"><a href="#"><i class="glyphicon glyphicon-pencil" title="Editar"></i></a></td>
				<td class="text-center"><a href="#"><i class="glyphicon glyphicon-trash" title="Excluir" ng-click="deleteItem({{item.id_produto}})"></i></a></td>
			</tr>
		</tbody>
	</table>
</body>
</html>