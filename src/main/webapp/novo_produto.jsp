<form class="form-horizontal">
	<fieldset>

		<!-- Form Name -->
		<h2 class="sub-header ">Cadastrar produto</h2>

		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-4 control-label" for="descricao">Descrição</label>
			<div class="col-md-6">
				<input id="descricao" name="descricao" type="text"
					placeholder="Descrição do produto" class="form-control input-md"
					required="">

			</div>
		</div>

		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-4 control-label" for="custo">Custo</label>
			<div class="col-md-6">
				<input id="custo" name="custo" type="text"
					placeholder="Custo de compra do produto"
					class="form-control input-md" required="">

			</div>
		</div>

		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-4 control-label" for="valor">Valor</label>
			<div class="col-md-6">
				<input id="valor" name="valor" type="text"
					placeholder="Valor de venda do produto"
					class="form-control input-md" required="">

			</div>
		</div>

		<!-- Button Drop Down -->
		<div class="form-group">
			<label class="col-md-4 control-label" for="categoria">Categoria</label>
			<div class="col-md-6">
				<div class="input-group">
					<input id="categoria" name="categoria" class="form-control"
						placeholder="Categoria à qual o produto pertence" type="text"
						required="">
					<div class="input-group-btn">
						<button type="button" class="btn btn-default dropdown-toggle"
							data-toggle="dropdown">
							Selecione <span class="caret"></span>
						</button>
						<ul class="dropdown-menu pull-right">
							<li><a href="#">Bebidas</a></li>
							<li><a href="#">Lanches</a></li>
							<li><a href="#">Porções</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-4 control-label" for="quantidade">Quantidade</label>
			<div class="col-md-6">
				<input id="quantidade" name="quantidade" type="text"
					placeholder="Quantidade atual em estoque"
					class="form-control input-md" required="">

			</div>
		</div>

		<!-- Button Drop Down -->
		<div class="form-group">
			<label class="col-md-4 control-label" for="unidade">Unidade
				de Medida</label>
			<div class="col-md-6">
				<div class="input-group">
					<input id="unidade" name="unidade" class="form-control"
						placeholder="Unidade utilizada para mensurar o produto"
						type="text" required="">
					<div class="input-group-btn">
						<button type="button" class="btn btn-default dropdown-toggle"
							data-toggle="dropdown">
							Selecione <span class="caret"></span>
						</button>
						<ul class="dropdown-menu pull-right">
							<li><a href="#">Grama</a></li>
							<li><a href="#">ML</a></li>
							<li><a href="#">Unid</a></li>
						</ul>
					</div>
				</div>
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
