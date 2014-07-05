<!doctype html>
<html ng-app="ProjetoRestaurante">
<head>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.0-beta.13/angular.min.js"></script>
<script src="resources/js/ng_funcionario.js"></script>
<!-- <script src="resources/js/ng_produto.js"></script> -->
</head>
<body>
<form ng-controller="ProdutoController" class="form-horizontal">
	<fieldset>

		<!-- Form Name -->
		<h2 class="sub-header ">Cadastrar produto</h2>

		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-4 control-label" for="descricao">Descrição</label>
			<div class="col-md-6">
				<input id="descricao" name="descricao" ng-model="descricao" type="text" placeholder="Descrição do produto" class="form-control input-md" required="">
			</div>
		</div>

		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-4 control-label" for="custo">Custo</label>
			<div class="col-md-6">
				<input id="custo" name="custo" type="text" ng-model="custo" placeholder="Custo de compra do produto" class="form-control input-md" required="">
			</div>
		</div>

		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-4 control-label" for="valor">Valor</label>
			<div class="col-md-6">
				<input id="valor" name="valor" type="text" ng-model="valor" placeholder="Valor de venda do produto" class="form-control input-md" required="">
			</div>
		</div>

		<!-- Button Drop Down -->
		<div class="form-group" ng-controller="RetornaCategorias" data-ng-init="getCategorias()">
			<label class="col-md-4 control-label" for="categoria">Categoria</label>
			<div class="col-md-6">
				<select id="id_categoria" ng-model="id_categoria" class="form-control input-md ng-pristine ng-untouched ng-valid">
					<option ng-repeat="categoria in categorias" value="{{categoria.id_categoria}};{{categoria.descricao}}">{{categoria.descricao}}</option>
				</select>
			</div>
		</div>

		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-4 control-label" for="quantidade">Quantidade</label>
			<div class="col-md-6">
				<input id="quantidade" name="quantidade" type="text" ng-model="qtde_estoque" placeholder="Quantidade atual em estoque" class="form-control input-md" required="">
			</div>
		</div>

		<!-- Button Drop Down -->
		<div class="form-group">
			<label class="col-md-4 control-label" for="unidade">Unidade de Medida</label>
			<div class="col-md-6">
				<div class="input-group">
					<input id="unidade" name="unidade" ng-model="unidade_medida" class="form-control" placeholder="Unidade utilizada para mensurar o produto" type="text" required="">
					<div class="input-group-btn">
						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
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
				<button id="cadastrar" name="cadastrar" class="btn btn-success" ng-click="submitFormProduto()">Cadastrar</button>
				<button id="limpar" name="limpar" class="btn btn-danger">Limpar Campos</button>
			</div>
		</div>

	</fieldset>
</form>
</body>
</html>