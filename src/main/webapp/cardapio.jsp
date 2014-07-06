<html ng-app="ProjetoRestaurante">
<head>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.0-beta.13/angular.min.js"></script>
<script src="resources/js/ng_funcionario.js"></script>
</head>
<body>
	<h2 class="sub-header ">Card�pio</h2>
	<h3>Bebidas</h3>

	<table class="table table-striped table-hover" ng-controller="RetornaCardapio" data-ng-init="getCardapio()">
		<thead>
			<tr>
				<th class="text-center">Descri��o</th>
				<th class="text-center">Pre�o R$</th>
				<th class="text-center">Estoque</th>
			</tr>
		</thead>
		<tbody ng-repeat="item in cardapio">
			<tr ng-if="item.id_categoria.id_categoria == 2">
				<td>{{item.descricao}}</td>
				<td class="text-right">{{item.valor}}</td>
				<td class="text-center" ng-if="item.qtde_estoque == 1"><i class="glyphicon glyphicon-ok" title="{{item.qtde_estoque}} item dispon�vel."></i></td>
				<td class="text-center" ng-if="item.qtde_estoque > 1"><i class="glyphicon glyphicon-ok" title="{{item.qtde_estoque}} items dispon�veis."></i></td>
				<td class="text-center" ng-if="item.qtde_estoque == 0"></td>
			</tr>
		</tbody>
	</table>

	<h3>Lanches</h3>
	<table class="table table-striped table-hover" ng-controller="RetornaCardapio" data-ng-init="getCardapio()">
		<thead>
			<tr>
				<th class="text-center">Descri��o</th>
				<th class="text-center">Pre�o R$</th>
				<th class="text-center">Estoque</th>
			</tr>
		</thead>
		<tbody ng-repeat="item in cardapio">
			<tr ng-if="item.id_categoria.id_categoria == 1">
				<td>{{item.descricao}}</td>
				<td class="text-right">{{item.valor}}</td>
				<td class="text-center" ng-if="item.qtde_estoque == 1"><i class="glyphicon glyphicon-ok" title="{{item.qtde_estoque}} item dispon�vel."></i></td>
				<td class="text-center" ng-if="item.qtde_estoque > 1"><i class="glyphicon glyphicon-ok" title="{{item.qtde_estoque}} items dispon�veis."></i></td>
				<td class="text-center" ng-if="item.qtde_estoque == 0"></td>
			</tr>
		</tbody>
	</table>

	<h3>Por��es</h3>
	<table class="table table-striped table-hover" ng-controller="RetornaCardapio" data-ng-init="getCardapio()">
		<thead>
			<tr>
				<th class="text-center">Descri��o</th>
				<th class="text-center">Pre�o R$</th>
				<th class="text-center">Estoque</th>
			</tr>
		</thead>
		<tbody ng-repeat="item in cardapio">
			<tr ng-if="item.id_categoria.id_categoria == 3">
				<td>{{item.descricao}}</td>
				<td class="text-right">{{item.valor}}</td>
				<td class="text-center" ng-if="item.qtde_estoque == 1"><i class="glyphicon glyphicon-ok" title="{{item.qtde_estoque}} item dispon�vel."></i></td>
				<td class="text-center" ng-if="item.qtde_estoque > 1"><i class="glyphicon glyphicon-ok" title="{{item.qtde_estoque}} items dispon�veis."></i></td>
				<td class="text-center" ng-if="item.qtde_estoque == 0"></td>
			</tr>
		</tbody>
	</table>
</body>
</html>