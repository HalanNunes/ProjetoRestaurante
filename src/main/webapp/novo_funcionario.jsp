<form class="form-horizontal">
	<fieldset>

		<!-- Form Name -->
		<h2 class="sub-header ">Cadastrar funcion�rio</h2>

		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-4 control-label" for="nome">Nome</label>
			<div class="col-md-6">
				<input id="nome" name="nome" type="text"
					placeholder="Nome completo do funcion�rio"
					class="form-control input-md" required="">

			</div>
		</div>

		<!-- Button Drop Down -->
		<div class="form-group">
			<label class="col-md-4 control-label" for="cargo">Cargo</label>
			<div class="col-md-6">
				<div class="input-group">
					<input id="cargo" name="cargo" class="form-control"
						placeholder="Cargo do funcion�rio" type="text" required="">
					<div class="input-group-btn">
						<button type="button" class="btn btn-default dropdown-toggle"
							data-toggle="dropdown">
							Selecione <span class="caret"></span>
						</button>
						<ul class="dropdown-menu pull-right">
							<li><a href="#">Gar�ons</a></li>
							<li><a href="#">Caixas</a></li>
							<li><a href="#">Cozinheiros</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-4 control-label" for="telefone">Telefone</label>
			<div class="col-md-6">
				<input id="telefone" name="telefone" type="text"
					placeholder="Telefone do funcion�rio" class="form-control input-md"
					required="">

			</div>
		</div>

		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-4 control-label" for="email">E-mail</label>
			<div class="col-md-6">
				<input id="email" name="email" type="text"
					placeholder="E-mail do funcion�rio" class="form-control input-md">

			</div>
		</div>

		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-4 control-label" for="endereco">Endere�o</label>
			<div class="col-md-6">
				<input id="endereco" name="endereco" type="text"
					placeholder="Endere�o do funcion�rio" class="form-control input-md"
					required="">

			</div>
		</div>

		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-4 control-label" for="cpf">CPF</label>
			<div class="col-md-6">
				<input id="cpf" name="cpf" type="text"
					placeholder="CPF do funcion�rio" class="form-control input-md"
					required="">

			</div>
		</div>

		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-4 control-label" for="login">Login</label>
			<div class="col-md-6">
				<input id="login" name="login" type="text"
					placeholder="Login do usu�rio (para acesso ao sistema)"
					class="form-control input-md">

			</div>
		</div>
		
		<!-- Button (Double) -->
		<div class="form-group">
			<label class="col-md-4 control-label" for="cadastrar"></label>
			<div class="col-md-8">
				<button id="cadastrar" name="cadastrar" class="btn btn-success">Cadastrar</button>
				<button id="limpar" name="limpar" class="btn btn-danger">Limpar
					Campos</button>
			</div>
		</div>

	</fieldset>
</form>
