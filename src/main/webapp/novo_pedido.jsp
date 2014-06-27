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

		<!-- Text input
		<div class="form-group item">
			<label class="col-md-4 control-label" for="produto">Produto</label>
			<div class="col-md-6">
				<input id="produto" name="produto" type="text"
					placeholder="Descri��o do produto" class="form-control input-md"
					required="">
			</div>
			<td class="text-center"><a href="#" name="adicionar-item"><i
					style="vertical-align: middle;" class="glyphicon glyphicon-plus"
					title="Adicionar outro item"></i></a></td>
		</div>
		-->

		<!-- Appended Input-->
		<div class="form-group">
			<label class="col-md-4 control-label" for="produto">Produto</label>
			<div class="col-md-6">
				<div class="input-group">
					<input id="produto" name="produto" class="form-control"
						placeholder="" type="text"> <span class="input-group-btn">
						<button class="btn btn-success btn-add" type="button">
							<span class="glyphicon glyphicon-plus"></span>
						</button>
					</span>
				</div>
			</div>
		</div>
		
		<div id="teste"></div>

		<div class="form-group">
			<label class="col-md-4 control-label">Produto</label>
			<div class="controls col-md-2">
				<div class="entry input-group">
					<input class="form-control" name="fields[]" type="text" /> <span
						class="input-group-btn">
						<button class="btn btn-success btn-add" type="button">
							<span class="glyphicon glyphicon-plus"></span>
						</button>
					</span>
				</div>
			</div>
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
	/*$(document).on("click", "i", function(){
		$(".item:last").after("<div class='form-group item'><label class='col-md-4 control-label' for='produto'>Produto</label><div class='col-md-6'><input id='produto' name='produto' type='text' placeholder='Descri��o do produto' class='form-control input-md' required=''></div><td class='text-center'><a href='#' name='adicionar-item'><i style='vertical-align: middle;' class='glyphicon glyphicon-plus' title='Adicionar outro item'></i></a></td></div>");
		$("i").tooltip();
	});*/

	$(function() {
		$(document).on('click', '.btn-add', function(e) {
			alert($(this).html());
			$(this).closest("div:first .form-group").clone().appendTo($("#teste"));
			/*e.preventDefault();

			var controlSection = $('.controls form:first'), currentEntry = $(
					this).parents('.entry:first'), newEntry = $(
					currentEntry.clone()).appendTo(
					controlSection);

			newEntry.find('input').val('');
			controlSection
					.find('.entry:not(:last) .btn-add')
					.removeClass('btn-add')
					.addClass('btn-remove')
					.removeClass('btn-success')
					.addClass('btn-danger')
					.html(
							'<span class="glyphicon glyphicon-minus"></span>');
			 */
		}).on('click', '.btn-remove', function(e) {
			$(this).parents('.entry:first').remove();

			e.preventDefault();
			return false;
		});
	});
</script>
