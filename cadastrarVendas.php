<?php
require_once "assets/php/classes/classVendas.php";
require_once "assets/php/classes/classServicos.php";

$vendas = new Vendas();
$servicos = new Servicos();

if (isset($_POST['select'])){
	$vendas->setServicos($_POST['id']);
}

if(isset($_POST['action'])){
	switch ($_POST['action']){
		case "insert":
		$login->setQuantidade($_POST['quantidade']);
		$login->insert();		
		echo "Cadastrado";
	}
}

?>

<head><title>outsideFood</title></head>
<body>
	<form action="cadastrarVendas.php" method="post">
		<div class="form-group">
			<input type="number" name="quantidade" placeholder="quantidade">
			<select id="select" name="id" action="cadastrarVendas.php">
			<option>Selecione</option>
			<?php 
				$stmt = $servicos->index();
				while($row = $stmt->fetch(PDO::FETCH_OBJ))
					{
			?>

				<option id="<?php echo $row->id; ?>" value="<?php echo $row->id; ?>"><?php echo $row->nome ?></option>

			<?php 

					} 

			?>
		</select>
		<input type="hidden" name="action" value="insert">
        <button type="submit" value="Cadastrar" id="btnenviar" class="btn btn-primary">Enviar</button>
    </form>
</body>