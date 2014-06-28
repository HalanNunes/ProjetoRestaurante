<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html ng-app="ProjetoRestaurante">
<head>

<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.0-beta.13/angular.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.0-beta.13/angular-resource.min.js">
	
</script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.0-beta.13/angular-route.min.js">
	
</script>
<script src="https://cdn.firebase.com/v0/firebase.js"></script>
<script src="resources/js/ng_funcionario.js"></script>
<script
	src="https://cdn.firebase.com/libs/angularfire/0.5.0/angularfire.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Nome do Restaurante</title>

<!-- CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/bootstrap-theme.min.css" rel="stylesheet">
<link href="resources/css/dashboard.css" rel="stylesheet">
</head>
<body>
	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Nome do Restaurante</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">Nome do Usuário</a></li>
					<li><a href="login.jsp">Sair</a></li>
				</ul>
				<!--
				<form class="navbar-form navbar-right">
					<input type="text" class="form-control" placeholder="Search...">
				</form>
				 -->
			</div>
		</div>
	</div>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">
				<ul class="nav nav-sidebar">
					<li ng-class='{"active":tog==1}' ng-click='tog=1'><a href=""
						ng-click="tela='pedidos_em_aberto.jsp'">Pedidos em aberto</a></li>
					<li ng-class='{"active":tog==2}' ng-click='tog=2'><a href=""
						ng-click="tela='cardapio.jsp'">Cardápio</a></li>
					<li ng-class='{"active":tog==3}' ng-click='tog=3'><a href=""
						ng-click="tela='funcionarios_listagem.jsp'">Funcionários</a></li>
				</ul>
				<ul class="nav nav-sidebar">
					<li ng-class='{"active":tog==4}' ng-click='tog=4'><a href=""
						ng-click="tela='novo_pedido.jsp'">Novo Pedido</a></li>
					<li ng-class='{"active":tog==5}' ng-click='tog=5'><a href=""
						ng-click="tela='novo_funcionario.jsp'">Cadastrar Funcionários</a></li>
					<li ng-class='{"active":tog==6}' ng-click='tog=6'><a href=""
						ng-click="tela='novo_produto.jsp'">Cadastrar Produtos</a></li>
				</ul>
			</div>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<!--<h1 class="page-header">Título Principal</h1>
				<h1>Teste!</h1>
				<h3>Teste!</h3>
				<h2>Teste!</h2>
				<h4>Teste!</h4>
				<h5>Teste!</h5>
				<h6>Teste!</h6>-->

				<div data-ng-include="tela"></div>
			</div>
		</div>
	</div>
	<!-- JS -->
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
</body>
</html>
