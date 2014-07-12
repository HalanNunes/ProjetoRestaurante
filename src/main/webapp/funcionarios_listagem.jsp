<!doctype html>
<html ng-app="ProjetoRestaurante">
<head>
</head>
<body>
	<h2 class="sub-header ">Listagem de funcionários</h2>

	<h3>Garçons</h3>
	<table class="table table-striped table-hover" ng-controller="RetornaFuncionarios" data-ng-init="getFuncionarios()">
		<thead>
			<tr>
				<th class="text-center">Nome</th>
				<th class="text-center">Telefone</th>
				<th class="text-center">E-mail</th>
				<th class="text-center">Endereço</th>
				<th class="text-center">CPF</th>
				<th class="text-left">Login</th>
				<th></th>
			</tr>
		</thead>
		<tbody ng-repeat="funcionario in funcionarios">
			<tr ng-if="funcionario.id_cargo.id_cargo == 1">
				<td>{{funcionario.nome}}</td>
				<td class="text-center">{{funcionario.telefone}}</td>
				<td class="text-left">{{funcionario.email}}</td>
				<td class="text-left">{{funcionario.endereco}}</td>
				<td class="text-center">{{funcionario.cpf}}</td>
				<td class="text-left">{{funcionario.login}}</td>
				<td class="text-center"><a href="#"><i class="glyphicon glyphicon-pencil" title="Editar"></i></a></td>
			</tr>
		</tbody>
	</table>

	<h3>Caixas</h3>
	<table class="table table-striped table-hover" ng-controller="RetornaFuncionarios" data-ng-init="getFuncionarios()">
		<thead>
			<tr>
				<th class="text-center">Nome</th>
				<th class="text-center">Telefone</th>
				<th class="text-center">E-mail</th>
				<th class="text-center">Endereço</th>
				<th class="text-center">CPF</th>
				<th class="text-left">Login</th>
				<th></th>
			</tr>
		</thead>
		<tbody ng-repeat="funcionario in funcionarios">
			<tr ng-if="funcionario.id_cargo.id_cargo == 2">
				<td>{{funcionario.nome}}</td>
				<td class="text-center">{{funcionario.telefone}}</td>
				<td class="text-left">{{funcionario.email}}</td>
				<td class="text-left">{{funcionario.endereco}}</td>
				<td class="text-center">{{funcionario.cpf}}</td>
				<td class="text-left">{{funcionario.login}}</td>
				<td class="text-center"><a href="#"><i class="glyphicon glyphicon-pencil" title="Editar"></i></a></td>
			</tr>
		</tbody>
	</table>

	<h3>Cozinheiros</h3>
	<table class="table table-striped table-hover" ng-controller="RetornaFuncionarios" data-ng-init="getFuncionarios()">
		<thead>
			<tr>
				<th class="text-center">Nome</th>
				<th class="text-center">Telefone</th>
				<th class="text-center">E-mail</th>
				<th class="text-center">Endereço</th>
				<th class="text-center">CPF</th>
				<th class="text-left">Login</th>
				<th></th>
			</tr>
		</thead>
		<tbody ng-repeat="funcionario in funcionarios">
			<tr ng-if="funcionario.id_cargo.id_cargo == 3">
				<td>{{funcionario.nome}}</td>
				<td class="text-center">{{funcionario.telefone}}</td>
				<td class="text-left">{{funcionario.email}}</td>
				<td class="text-left">{{funcionario.endereco}}</td>
				<td class="text-center">{{funcionario.cpf}}</td>
				<td class="text-left">{{funcionario.login}}</td>
				<td class="text-center"><a href="#"><i class="glyphicon glyphicon-pencil" title="Editar"></i></a></td>
			</tr>
		</tbody>
	</table>
</body>
</html>