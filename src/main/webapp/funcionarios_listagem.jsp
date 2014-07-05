<!doctype html>
<html ng-app="ProjetoRestaurante">
<head>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.0-beta.13/angular.min.js"></script>
<script src="resources/js/ng_funcionario.js"></script>
</head>
<body>
	<h2 class="sub-header ">Listagem de funcion�rios</h2>

	<h3>Gar�ons</h3>
	<table class="table table-striped table-hover" ng-controller="RetornaFuncionarios" data-ng-init="getFuncionarios()">
		<thead>
			<tr>
				<th class="text-center">Nome</th>
				<th class="text-center">Telefone</th>
				<th class="text-center">E-mail</th>
				<th class="text-center">Endere�o</th>
				<th class="text-center">CPF</th>
				<th class="text-left">Login</th>
				<th></th>
			</tr>
		</thead>
		<tbody ng-repeat="funcionario in funcionarios">
			<tr>
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
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="text-center">Nome</th>
				<th class="text-center">Telefone</th>
				<th class="text-center">E-mail</th>
				<th class="text-center">Endere�o</th>
				<th class="text-center">CPF</th>
				<th class="text-left">Login</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>Henrique Borba</td>
				<td class="text-center">(47) 9216-7845</td>
				<td class="text-left">henriqueborba@gmail.com</td>
				<td class="text-left">Rua Blumenau, 926 - Am�rica</td>
				<td class="text-center">614.726.845-12</td>
				<td class="text-left">Henrique</td>
				<td class="text-center"><a href="#"><i class="glyphicon glyphicon-pencil" title="Editar"></i></a></td>
			</tr>
			<tr>
				<td>Lucas Nunes</td>
				<td class="text-center">(47) 8823-7343</td>
				<td class="text-left">lucas.nunes@yahoo.com</td>
				<td class="text-left">Rua Marinho Lobo, 353 - Centro</td>
				<td class="text-center">984.242.845-83</td>
				<td class="text-left">Lucas</td>
				<td class="text-center"><a href="#"><i class="glyphicon glyphicon-pencil" title="Editar"></i></a></td>
			</tr>
		</tbody>
	</table>

	<h3>Cozinheiros</h3>
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="text-center">Nome</th>
				<th class="text-center">Telefone</th>
				<th class="text-center">E-mail</th>
				<th class="text-center">Endere�o</th>
				<th class="text-center">CPF</th>
				<th class="text-left">Login</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>Bernadete Venturini</td>
				<td class="text-center">(47) 3467-2166</td>
				<td class="text-center">-</td>
				<td class="text-left">Rua Lorival Tabert, 340 - Aventureiro</td>
				<td class="text-center">834.126.834-88</td>
				<td class="text-center">-</td>
				<td class="text-center"><a href="#"><i class="glyphicon glyphicon-pencil" title="Editar"></i></a></td>
			</tr>
			<tr>
				<td>S�lvia da Silva</td>
				<td class="text-center">(47) 9111-4561</td>
				<td class="text-center">-</td>
				<td class="text-left">Rua Jacupiranga, 390 - Aventureiro</td>
				<td class="text-center">235.283.035-11</td>
				<td class="text-center">-</td>
				<td class="text-center"><a href="#"><i class="glyphicon glyphicon-pencil" title="Editar"></i></a></td>
			</tr>
		</tbody>
	</table>
</body>
</html>