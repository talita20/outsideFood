<?php
require_once 'header.php';
require_once 'assets/php/classes/classEventos.php';
require_once 'assets/php/classes/classCidades.php';
require_once 'assets/php/classes/classLocais.php';

$eventos = New Eventos();
$cidades = New Cidades();
$locais = New Locais();

if(isset($_GET['nome'])){
$todosEventos = $eventos->pesquisa($_GET['nome']);
print_r($todosEventos);
}


if (isset($_POST['select'])) {
    $eventos->setCidade($_POST['cidades_id']);
    $eventos->setLocal($_POST['locais_id']);
}

if(isset($_POST['insert'])){
    $eventos->setNome($_POST['nome']);
    $eventos->setData($_POST['data']);
    $eventos->setHorario($_POST['horario']);
    $eventos->setOrganizador($_POST['organizador']);
    
    if($_FILES['foto']['error'] != 4){
        if($_FILES['foto']['size'] <= 1000000){
            date_default_timezone_set("Brazil/East"); //Definindo timezone padrão
            $ext = strtolower(substr($_FILES['foto']['name'],-4)); //Pegando extensão do arquivo
            $foto = date("Y.m.d-H.i.s") . $ext; //Definindo um novo nome para o arquivo

            if (!file_exists('../' . 'assets/img/eventos/' . $foto)) {
                $eventos->setFoto('assets/img/eventos/' . $foto);
                $allowed = array('image/jpeg', 'image/jpg', 'image/png', 'another/type');
                if(in_array($_FILES['foto']['type'], $allowed)){
                    if(!move_uploaded_file($_FILES['foto']['tmp_name'], 'assets/img/eventos/' . $foto)){
                        die('Erro ao salvar imagem, tente novamente!');
                    }else{

                        if($eventos->insert() == 1){
                            $result = "Evento inserido com sucesso!";
                        }else{
                            $error = "Erro ao inserir, tente novamente!";
                        }
                    }
                }else{
                    $error = "Insira uma imagem no formato .png ou .jpg ou .jpeg!";
                }
            }else{
                $error = "Erro ao inserir, tente novamente!";
            }
        }else {
            $error = "A imagem deve possuir tamanho menor que 1Mb!";
        }
    }else{
        $error = "Erro ao inserir, tente novamente!";
    }

    $eventos->setCidade($_POST['cidades_id']);
    $eventos->setLocal($_POST['locais_id']);
                        
    if($eventos->insert() == 1){
        $result = "Evento inserido com sucesso!";
    }else{
        $error = "Erro ao inserir, tente novamente!";
    }
}

if(isset($_POST['delete'])){
    $eventos->setId($_POST['id']);

    if($eventos->delete() == 1){
        $result = "apagou";
    }else{
        $error = "erro";
    }
}

?>
<div class="content">
 <div class="container-fluid">
  <div class="collapse navbar-collapse">
   <a href="./adicionarevento.php">
       <button type="button" class="btn btn-warning">Adicionar</button>
   </a>
   <form class="navbar-form navbar-right" role="search" action="evento.php" method="get">
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
      <h4 class="title">Eventos</h4>
  </div>
  <div class="card-content table-responsive">
      <table class="table">
       <thead class="text-primary">
        <th>Nome</th>
        <th>Data</th>
        <th>Horário</th>
        <th>Organizador</th>
        <th>Cidade</th>
        <th>Local</th>
        <th>Folder</th>
        <th class="actions">Ações</th>
    </thead>
    <tbody>
        <?php
        $todosEventos = $eventos->index();
        while($row = $todosEventos->fetch(PDO::FETCH_OBJ)){
         ?>
         <tr>
             <td class="nome"><?php echo $row->nome; ?></td>
             <td class="data"><?php echo $row->data; ?></td>
             <td class="horario"><?php echo $row->horario; ?></td>
             <td class="organizador"><?php echo $row->organizador; ?></td>
             <?php 
             $todasCidades = $cidades->index();
             while($rowCidade = $todasCidades->fetch(PDO::FETCH_OBJ)){
               if($rowCidade->id == $row->cidades_id){ ?>
               <td class="cidade"><?php echo $rowCidade->nome; ?></td>
               <?php } } ?>
               <?php 
               $todosLocais = $locais->index();
               while($rowLocal = $todosLocais->fetch(PDO::FETCH_OBJ)){
                   if($rowLocal->id == $row->locais_id){ ?>
                   <td class="local"><?php echo $rowLocal->nome; ?></td>
                   <?php } } ?>
                   <td class="foto"><?php echo $row->foto; ?></td>
                   <td class="actions">
                      <a href="" data-toggle="modal" data-target="#exampleModal<?php echo $row->id ?>" ><i class="material-icons">delete</i></a>
                      <a href=""><i class="material-icons">mode_edit</i></a>
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
$todosEventos = $eventos->index();
while($row = $todosEventos->fetch(PDO::FETCH_OBJ)){
 ?>
 <div class="modal fade" id="exampleModal<?php echo $row->id ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <form action="evento.php" method="post">
     <div class="modal-dialog" role="document">
      <div class="modal-content">
       <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Excluir</h5>
            <!--         <span aria-hidden="true">X</span>
            -->        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            </button>
        </div>
        <div class="modal-body">
            Dessa excluir esse evento?
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