<form class="form-horizontal">
	<fieldset>

		<!-- Form Name -->
		<h2 class="sub-header ">Novo pedido</h2>

		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-4 control-label" for="mesa">Mesa</label>
			<div class="col-md-2">
				<input id="mesa" name="mesa" type="text" placeholder=""
					class="form-control input-md" required="">

			</div>
		</div>

		<!-- Text input-->
		<div class="form-group item">
			<label class="col-md-4 control-label" for="produto">Produto</label>
			<div class="col-md-6">
				<input id="produto" name="produto" type="text"
					placeholder="Descrição do produto" class="form-control input-md"
					required="">
			</div>
			<td class="text-center"><a href="#" name="adicionar-item"><i
					style="vertical-align: middle;" class="glyphicon glyphicon-plus"
					title="Adicionar outro item"></i></a></td>
		</div>

		<div class="form-group">
			<label class="col-md-4 control-label" for="confirmar"></label>
			<div class="col-md-4">
				<button id="confirmar" name="confirmar" class="btn btn-success">Confirmar</button>
			</div>
		</div>

	</fieldset>
</form>

<script>
	$(document).on("click", "i", function(){
		$(".item:last").after("<div class='form-group item'><label class='col-md-4 control-label' for='produto'>Produto</label><div class='col-md-6'><input id='produto' name='produto' type='text' placeholder='Descrição do produto' class='form-control input-md' required=''></div><td class='text-center'><a href='#' name='adicionar-item'><i style='vertical-align: middle;' class='glyphicon glyphicon-plus' title='Adicionar outro item'></i></a></td></div>");
		$("i").tooltip();
	});
</script>
