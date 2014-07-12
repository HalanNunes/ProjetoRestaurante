<!doctype html>
<html ng-app="ProjetoRestaurante">
<head>
</head>
<body>
	<form ng-controller="ProdutoController" class="form-horizontal">
		<fieldset>

			<h2 class="sub-header ">Cadastrar produto</h2>

			<div class="form-group">
				<label class="col-md-4 control-label" for="descricao">Descrição</label>
				<div class="col-md-6">
					<input id="descricao" name="descricao" ng-model="descricao" type="text" placeholder="Descrição do produto" class="form-control input-md" required="">
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="custo">Custo</label>
				<div class="col-md-6">
					<input id="custo" name="custo" type="number" min="0" max="9999" step="0.01" ng-model="custo" placeholder="Custo de compra do produto" class="form-control input-md" required="" ng-pattern="/^[1-9][0-9]{0,2}(?:,?[0-9]{3}){0,3}(?:\.[0-9]{1,2})?$/">
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="valor">Valor</label>
				<div class="col-md-6">
					<input id="valor" name="valor" type="number" min="0" max="9999" step="0.01" ng-model="valor" placeholder="Valor de venda do produto" class="form-control input-md" required="" ng-pattern="/^[1-9][0-9]{0,2}(?:,?[0-9]{3}){0,3}(?:\.[0-9]{1,2})?$/">
				</div>
			</div>

			<div class="form-group" ng-controller="RetornaCategorias" data-ng-init="getCategorias()">
				<label class="col-md-4 control-label" for="categoria">Categoria</label>
				<div class="col-md-6">
					<select id="id_categoria" ng-model="id_categoria" class="form-control input-md ng-pristine ng-untouched ng-valid">
						<option value="">Selecione</option>
						<option ng-repeat="categoria in categorias" value="{{categoria.id_categoria}};{{categoria.descricao}}">{{categoria.descricao}}</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="quantidade">Quantidade</label>
				<div class="col-md-6">
					<input id="quantidade" name="quantidade" type="text" ng-model="qtde_estoque" placeholder="Quantidade atual em estoque" class="form-control input-md" required="">
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="unidade">Unidade de Medida</label>
				<div class="col-md-6">
					<input id="unidade" name="unidade" ng-model="unidade_medida" class="form-control input-md" placeholder="Unidade utilizada para mensurar o produto" type="text" required="">
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="cadastrar"></label>
				<div class="col-md-8">
					<button id="cadastrar" name="cadastrar" class="btn btn-success" ng-click="submitFormProduto()">Cadastrar</button>
					<button type="reset" id="limpar" name="limpar" class="btn btn-danger">Limpar Campos</button>
				</div>
			</div>

		</fieldset>
	</form>
</body>
</html>