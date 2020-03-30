<!DOCTYPE html>
<html lang="en">
<head>
	<title>Inscrição UNIRB</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="public/images/redeunirb.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="public/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="public/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="public/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="public/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="public/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="public/css/util.css">
    <link rel="stylesheet" type="text/css" href="public/css/main.css">
    
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"><link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

	<style type="text/css">
			.carregando{
				color:#ff0000;
				display:none;
			};

			.carregando1{
				color:#ff0000;
				display:none;
			};

		</style>

</head>


<body>

	<div class="bg-contact100" style="background-color:#9e111f;">
		<div class="container-contact100">
			<div class="wrap-contact100">
				<div class="contact100-pic js-tilt" data-tilt>
					<img src="public/images/redeunirb.png" alt="IMG">
				</div>

				
				<?php include_once("conexao.php"); ?>
		
		<form method="POST" action="salvar_post.php">
		<span class="contact100-form-title">
						<b style="font-size:35px">Cadastro de Candidato</b>
					</span>

			<input type="text" class="form-control" id="cpf" name="cpf" placeholder="CPF"  required><br>
			<input type="text" class="form-control" id="nome" name="nome" placeholder="Nome completo"  required> <br>
			<input type="email" class="form-control" id="email" name="email" placeholder="email@email.com" required> <br>
			<input type="text" class="form-control" id="telefone" name="telefone" placeholder="Telefone" required> <br>

			<select name="unidade" id="unidade" class="form-control">
				<option value="">Escolha a Cidade</option>
				<?php
					$result_cat_post = "SELECT * FROM unidades ORDER BY nome";
					$resultado_cat_post = mysqli_query($conn, $result_cat_post);
					while($row_cat_post = mysqli_fetch_assoc($resultado_cat_post) ) {
						echo '<option value="'.$row_cat_post['id'].'">'.$row_cat_post['nome'].'</option>';
					}
				?>
			</select>
			<br>
	<!-------------------------------------------------------------------------->		
			<select name="faculdade" id="faculdade" class="form-control">
				<option value="">Escolha a Faculdade</option>
			</select>
			<br>
	<!-------------------------------------------------------------------------->
	
			<select name="curso" id="curso" class="form-control" >
				<option value="">Escolha o Curso</option>
			</select>
			<br>
			
			<input type="submit" value="Cadastrar" class="btn btn-danger">
		</form>

               
			</div>
		</div>
	</div>




<!--===============================================================================================-->
	<script src="public/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="public/vendor/bootstrap/js/popper.js"></script>
	<script src="public/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="public/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="public/vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="public/js/main.js"></script>
	<script type="text/javascript" src="https://www.google.com/jsapi"></script>
		<script type="text/javascript">
		  google.load("jquery", "1.4.2");
		</script>
	<!-------------------------------------------------------------------------->			
		
		
		<script type="text/javascript">
		$(function(){
			$('#unidade').change(function(){
				if( $(this).val() ) {
					$('#faculdade').hide();
					$.getJSON('sub_categorias_post.php?search=',{unidade: $(this).val(), ajax: 'true'}, function(j){
						var options = '<option value="">Escolha a Faculdade</option>';	
						for (var i = 0; i < j.length; i++) {
							options += '<option value="' + j[i].id + '">' + j[i].nome + '</option>';
						}	
						$('#faculdade').html(options).show();
					});
				} else {
					$('#faculdade').html('<option value="">– Escolha a Faculdade –</option>');
				}
			});
		});
		//------------------------------------------------------------------------
		$(function(){
			$('#faculdade').change(function(){
				if( $(this).val() ) {
					$('#curso').hide();
					
					$.getJSON('curso.php?search=',{faculdade: $(this).val(), ajax: 'true'}, function(j){
						var options = '<option value="">Escolha o curso</option>';	
						for (var i = 0; i < j.length; i++) {
							options += '<option value="' + j[i].id + '">' + j[i].nome + '</option>';
						}	
						$('#curso').html(options).show();
					});
				} else {
					$('#curso').html('<option value="">– Escolha o curso –</option>');
				}
			});
		});
		</script>

</body>
</html>