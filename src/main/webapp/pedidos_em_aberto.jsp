<html ng-app="ProjetoRestaurante">
<head>
</head>
<body>
	<h2 class="sub-header">Pedidos em aberto</h2>

	<table class="table table-striped table-hover" ng-controller="RetornaVendas" data-ng-init="getVendas()">
		<thead>
			<tr>
				<th class="text-center">Mesa</th>
				<th class="text-center">Chegada</th>
				<th class="text-center">Garçon</th>
				<th class="text-center">Total R$</th>
				<th></th>
			</tr>
		</thead>
		<tbody ng-repeat="venda in vendas">
			<tr>
				<td class="text-right">{{venda.mesa}}</td>
				<td class="text-center">{{venda.datahora_pedido | date : 'medium'}}</td>
				<td>{{venda.id_funcionario.nome}}</td>
				<td class="text-right"></td>
				<td class="text-center"><a href="#pedido{{venda.id_venda}}" data-toggle="collapse"><i class="glyphicon glyphicon-ok" title="Fechar a conta" data-placement="top"></i></a></td>
			</tr>
			<tr>
				<td colspan="100">
					<div class="collapse" id="pedido{{venda.id_venda}}">
						<table class="table table-striped table-hover">
							<tr>
								<th class="text-center">Descrição</th>
								<th class="text-center">Valor R$</th>
								<th class="text-center">Garçon</th>
								<th class="text-center">Hora do Pedido</th>
								<th></th>
							</tr>
							<tr>
								<td class="text-center">Coca-Cola 2L</td>
								<td cla	ss="text-center">4,99</td>
								<td class="text-center">João</td>
								<td class="text-center">19:23</td>
								<td class="text-center"><input type="checkbox" checked /></td>
							</tr>
							<tr>
								<td class="text-center">Coca-Cola 2L</td>
								<td class="text-center">4,99</td>
								<td class="text-center">João</td>
								<td class="text-center">19:23</td>
								<td class="text-center"><input type="checkbox" checked /></td>
							</tr>
						</table>
						<div>
							<strong>Total: R$ 9,98</strong><input type="button" value="Fechar a Conta" class="btn pull-right btn-success" />
						</div>
					</div>
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>