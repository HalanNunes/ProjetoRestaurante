<!doctype html>
<html ng-app="ProjetoRestaurante">
<head>
</head>
<body>
	<form ng-controller="ProdutoControl" class="form-horizontal">
		<fieldset>

			<!-- Form Name -->
			<h2 class="sub-header ">Novo pedido</h2>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="mesa">Mesa</label>
				<div class="col-md-2">
					<input id="mesa" name="mesa" type="text" ng-model="mesa" placeholder="" class="form-control input-md" required="">
				</div>
			</div>

			<div class="form-group" ng-controller="RetornaFuncionarios" data-ng-init="getFuncionarios()">
				<label class="col-md-4 control-label" for="mesa">Funcionario</label>
				<div class="col-md-2">
					<select id="id_funcionario" ng-model="id_funcionario" ng-model="id_funcionario" ng-change="getFuncionarioById(this.id_funcionario)" class="form-control input-md ng-pristine ng-untouched ng-valid">
						<option ng-repeat="funcionario in funcionarios" value="{{funcionario.id_funcionario}}">{{funcionario.nome}}</option>
					</select>
				</div>
			</div>

			<div data-ng-init="getProdutos()">
				<div ng-repeat="element in elements" sytle='margin-bottom:20px;'>
					<div class="form-group">
						<label class="col-md-4 control-label" for="produto">Produto</label>
						<div class="col-md-2">
							<select id="id_produto" ng-model="id_produto" ng-change="getProdutoById(this.id_produto.split(';')[0])" class="form-control input-md ng-pristine ng-untouched ng-valid">
								<option ng-repeat="produto in produtos" value="{{produto.id_produto}};{{produto.descricao}}">{{produto.descricao}}</option>
							</select>
						</div>

						<span ng-show="$last" class="input-group-btn">
							<button class="btn btn-success btn-add" type="button" ng-show="showAddProduto(produto)" ng-click="addNewProduto()">
								<span class="glyphicon glyphicon-plus"></span>
							</button>
						</span>
						
						<span ng-show="!$last" class="input-group-btn">
							<button class="btn btn-danger btn-add" type="button" ng-show="showAddProduto(produto)" ng-click="removeProduto(element)">
								<span class="glyphicon glyphicon-minus"></span>
							</button>
						</span>
					</div>
					<div class="form-group">
						<label class="col-md-4 control-label" for="produto">Quantidade</label>
						<div class="col-md-2">
							<div>
								<input id="qtd_produto" ng-model="qtd_produto" type="text" class="form-control input-md" required="">
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="confirmar"></label>
				<div class="col-md-4">
					<button id="confirmar" name="confirmar" class="btn btn-success" ng-click="submitFormVenda()">Confirmar</button>
				</div>
			</div>

		</fieldset>
	</form>
</body>
</html>