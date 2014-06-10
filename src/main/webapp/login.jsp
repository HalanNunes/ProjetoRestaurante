<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>

<!-- CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/signin.css" rel="stylesheet">
</head>
<body>
	<div class="container">

		<form class="form-signin" role="form" action="index.jsp">
			<h2 class="form-signin-heading">Entrar</h2>
			<input type="email" class="form-control" placeholder="Usuário"
				required="" autofocus=""> <input type="password"
				class="form-control" placeholder="Senha" required="">
			<label class="checkbox">
			<input type="checkbox" value="remember-me">Lembrar</label>
			<button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
		</form>

	</div>
</body>
</html>