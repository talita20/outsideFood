<?php
require_once 'assets/php/classes/classEventos.php';
require_once 'assets/php/classes/classCidades.php';
require_once 'assets/php/classes/classLocais.php';

$evento = new Eventos();
$cidade = new Cidades();
$local = new Locais();

if(isset($_POST['insert'])){
	$evento->setNome($_POST['nome']);
	$evento->setData($_POST['data']);
	$evento->setHorario($_POST['horario']);
	$evento->setOrganizador($_POST['organizador']);
	$evento->setFoto($_POST['foto']);
	$evento->setCidades_id($_POST['cidades_id']);
	

	if($evento->insert() == 1){
		$result = "Evento inserido com sucesso!";
	}else{
		$error = "Erro ao inserir";
	}
}

if(isset($_POST['cancel'])){
	header("Location: cadastrarEventos.php");
}

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="assets/css/bootstrap.min.css" rel="stylesheet">
	<link href="assets/css/style.css" rel="stylesheet">
	<title>Outside Food</title>
</head>
<body>
	<h1>CADASTRAR EVENTOS</h1>
	<?php
	if (isset($result)) {
		?>
		<div class="alert alert-success">
			<?php echo $result; ?>
		</div>
		<?php
	}else if(isset($error)){
		?>
		<div class="alert alert-danger">
			<?php echo $error; ?>
		</div>
		<?php
	}
	?>
	<div class="col-md-6">
		<form action="cadastrarEventos.php" method="post" enctype="multipart/form-data">
			<div class="form-group">
				<label>Nome</label>
				<input type="text" name="nome" class="form-control">
				<label>Data</label>
				<input type="date" name="data" class="form-control" >
				<label>Horario</label>
				<input type="time" name="horario" id="hora" class="form-control">
				<label>Organizador</label>
				<input type="text" name="organizador" class="form-control">
				<label>Foto</label>
				<input type="file" name="foto" required>
				<label>Cidade</label>
				<select id="select" name="id" id="cidade" action="cadastrarEventos.php">
					<option>Selecione</option>
					<?php 
					$stmt = $cidade->index();
					while($row = $stmt->fetch(PDO::FETCH_OBJ)){
						?>
						<option id="<?php echo $row->id; ?>" value="<?php echo $row->id; ?>"><?php echo $row->nome ?></option>
						<?php } ?>
					</select>
					<label>Locais</label>
					<?php 
					$stmtLocal = $local->index();
					while($row = $stmt->fetch(PDO::FETCH_OBJ)){
						while($rowLocal = $stmtLocal->fetch(PDO::FETCH_OBJ)){
							if($row->id == $rowLocal->id){
					?>
					<input type="radio" name="local" value="<?php echo $rowLocal->nome ?>" disabled><?php echo $rowLocal->nome ?>
					<?php }}}?>
				</div>
				<div class="form-group">
					<button type="submit" name="cancel" class="btn btn-danger">Cancelar</button>
					<button type="submit" name="insert" class="btn btn-success">Cadastrar</button>
				</div>			
			</form>
		</div>
	</body>
	</html>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript">
		function chainSelect(current, target){
			var value1 = $(current).on('change', function(){
				if($(this).find(':selected').val() != ''){
					$(target).removeAttr('disabled');
					var value = $(this).find(':selected').text();
				}else{
					$(target).prop('disabled', 'disabled').val(null);
				}
				return value;
			});
			return value1;
		}
		cidade = chainSelect('select#cidade', '#local');
		local = chainSelect('select#local', '#submit');

		$('#addToCart').submit(function(){
			event.preventDefault();
			alert('cidade: ' + cidade + '\nlocal: ' + local + '');
		});
	</script>



