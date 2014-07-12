<!doctype html>
<html ng-app="ProjetoRestaurante">
<head>
</head>
<body>
	<form ng-controller="FuncionarioControl" class="form-horizontal">
		<fieldset>

			<h2 class="sub-header ">Cadastrar funcionário</h2>
			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="nome">Nome</label>
				<div class="col-md-6">
					<input type="text" id="nome" name="nome" required ng-model="nome" placeholder="Nome completo do funcionário" class="form-control input-md">
				</div>
			</div>

			<div class="form-group" ng-controller="RetornaCargos" data-ng-init="getCargos()">
				<label class="col-md-4 control-label" for="cargo">Cargo</label>
				<div class="col-md-6">
					<select id="id_cargo" ng-model="id_cargo" class="form-control input-md ng-pristine ng-untouched ng-valid">
						<option value="">Selecione</option>
						<option ng-repeat="cargo in cargos" value="{{cargo.id_cargo}};{{cargo.descricao}}">{{cargo.descricao}}</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="telefone">Telefone</label>
				<div class="col-md-6">
					<input data-mask="(99) 9999-9999" pattern="\([0-9]{2}\)[\s][0-9]{4}-[0-9]{4}" id="telefone" name="telefone" required type="text" ng-model="telefone" placeholder="Telefone do funcionário" class="form-control input-md">
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="email">E-mail</label>
				<div class="col-md-6">
					<input id="email" name="email" type="email" ng-model="email" placeholder="E-mail do funcionário" class="form-control input-md">

				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="endereco">Endereço</label>
				<div class="col-md-6">
					<input id="endereco" name="endereco" type="text" required ng-model="endereco" placeholder="Endereço do funcionário" class="form-control input-md">

				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="cpf">CPF</label>
				<div class="col-md-6">
					<input id="cpf" name="cpf" type="text" maxLength="11" required ng-model="cpf" placeholder="CPF do funcionário (somente números)" class="form-control input-md">
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="login">Login</label>
				<div class="col-md-6">
					<input id="login" name="login" type="text" ng-model="login" placeholder="Login do usuário (para acesso ao sistema)" class="form-control input-md">
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="cadastrar"></label>
				<div class="col-md-8">
					<button id="cadastrar" name="cadastrar" class="btn btn-success" ng-click="submitForm()">Cadastrar</button>
					<button type="reset" id="limpar" name="limpar" class="btn btn-danger">Limpar Campos</button>
				</div>
			</div>
		</fieldset>
	</form>
</body>
</html>