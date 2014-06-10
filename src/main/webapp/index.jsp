<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
					<li><a href="#">Nome do Funcionário</a></li>
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
					<li id="pedidos-em-aberto"><a href="#">Pedidos
							em aberto</a></li>
					<li id="cardapio"><a href="#">Cardápio</a></li>
					<li><a href="#">Funcionários</a></li>
				</ul>
			</div>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<!--<h1 class="page-header">Título Principal</h1>
				<h1>Teste!</h1>
				<h2>Teste!</h2>
				<h3>Teste!</h3>
				<h4>Teste!</h4>
				<h5>Teste!</h5>
				<h6>Teste!</h6>-->

				<div class="table-responsive" id="main-content"></div>
			</div>
		</div>
	</div>
	<!-- JS -->
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>

	<script>
		function LoadPage(element){
			$("#main-content").load(element.id.replace(/-/g,"_")+".jsp");
			$("li").removeClass("active");
			$(element).addClass("active");
			$("i").tooltip();
		}
		
		$("#pedidos-em-aberto").click(function() {
			LoadPage(this);
		});
		
		$("#cardapio").click(function() {
			LoadPage(this);
		});
	</script>
</body>
</html>
