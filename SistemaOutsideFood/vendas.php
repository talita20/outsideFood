<?php
require_once 'headercliente.php';
require_once 'assets/php/classes/classVendas.php';
require_once 'assets/php/classes/classServicos.php';
require_once 'assets/php/classes/classEventos.php';
$vendas = New Vendas();
$servicos = New Servicos();
$eventos = New Eventos();

if (isset($_POST['select'])) {
    $servicos->setServicos($_POST['servicos_id']);
    $eventos-> setEventos($_POST['eventos_id']);
}

if(isset($_POST['insert'])){
    $vendas->setQuantidade($_POST['quantidade']);
    $vendas->setServicos($_POST['servicos_id']);
    $vendas->setEventos($_POST['eventos_id']);

    if($vendas->insert() == 1){
        $result = "Venda inserida com sucesso!";
    }else{
        $error = "Erro ao inserir. Tente novamente";
    }
}

if(isset($_POST['edit'])){
  $vendas->setId($_POST['id']);
  $vendas->setQuantidade($_POST['quantidade']);
  $vendas->setServicos($_POST['servicos_id']);
  $vendas->setEventos($_POST['eventos_id']);

  if($vendas->edit() == 1){
        $result = "Venda editada com sucesso!";
    }else{
        $error = "Erro ao editar. Tente novamente";
    }
}


if(isset($_POST['delete'])){
    $vendas->setId($_POST['id']);

    if($vendas->delete() == 1){
        $result = "apagou";
    }else{
        $error = "erro";
    }
}
?>


<div class="content">
 <div class="container-fluid">
  <div class="collapse navbar-collapse">
   <a href="./adicionarvenda.php">
       <button type="button" class="btn btn-warning">Adicionar</button>
   </a>
   <form class="navbar-form navbar-right" role="search" action="vendas.php" method="get">
    <div class="form-group  is-empty">
     <input type="text" name="nome" class="form-control" placeholder="Search">
     <span class="material-input"></span>
 </div>
 <button type="submit" name="pesquisa" class="btn btn-white btn-round btn-just-icon">
     <i class="material-icons">search</i>
     <div class="ripple-container"></div>
 </button>
</form>
</div>
</div>
<div class="container-fluid">
  <div class="row">
   <div class="col-md-12">
    <div class="card">
     <div class="card-header" data-background-color="orange">
      <h4 class="title">Vendas</h4>
  </div>
  <div class="card-content table-responsive">
      <table class="table">
       <thead class="text-primary">
       <th>Quantidade vendida</th>
        <th>Evento</th>
        <th>Prato</th>
        
        <th class="actions">Ações</th>
    </thead>
    <tbody>
    <?php

                            $todasVendas = $vendas->index();
                            while($row = $todasVendas->fetch(PDO::FETCH_OBJ)){
                                ?>
                                <tr>
                                    <td class="quantidade"><?php echo $row->quantidade; ?></td>
                                    <?php 
                                    $todosEventos = $eventos->index();
                                    while($rowEventos = $todosEventos->fetch(PDO::FETCH_OBJ)){
                                     if($rowEventos->id == $rowEventos->eventos_id){ ?>
                                     <td class=""><?php echo $row->quantidade; ?></td>
                                     <?php } } ?>

         
             <td class="actions">
                      <a href="" data-toggle="modal" data-target="#exampleModal" ><i class="material-icons">delete</i></a>
                      <a href="./editarvenda.php"><i class="material-icons">mode_edit</i></a>
                  </td>
              </tr>
              <?php

                          }

                          ?>

      </tbody>
  </table>
</div>
</div>
</div>
</div>
</div>
</div>
<!-- Modal -->
<?php

$todasVendas = $vendas->index();
while($row = $todasVendas->fetch(PDO::FETCH_OBJ)){
    ?>
 <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <form action="vendas.php" method="post">
     <div class="modal-dialog" role="document">
      <div class="modal-content">
       <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Excluir</h5>
            <!--         <span aria-hidden="true">X</span>
            -->        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            </button>
        </div>
        <div class="modal-body">
            Dessa excluir essa venda?
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Não</button>
            <input type="hidden" name="id" value="<?php echo $row->id ?>">
            <button id="btnamarelo" type="submit" name="delete" class="btn btn-primary">Sim</button>
        </div>
    </div>
</div>
</form>
</div>
<?php } ?>
<?php
require_once 'footer.php';
?>
<script type="application/javascript">
    var active = document.getElementById("vendas");
    active.classList.add("active");
</script>