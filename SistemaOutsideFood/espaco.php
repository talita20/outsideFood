<?php
	require_once 'headeradmin.php';
    require_once 'assets/php/classes/classEspacos.php';



    $espacos = New Espacos();

?>

            <div class="content">
 				<div class="container-fluid">
                    <div class="collapse navbar-collapse">
                    <a href="./adicionarespaco.php">
                     	<button type="button" class="btn btn-warning">Adicionar</button>
                 	</a>
                       <form class="navbar-form navbar-right" role="search">
                            <div class="form-group  is-empty">
                                <input type="text" class="form-control" placeholder="Search">
                                <span class="material-input"></span>
                            </div>
                            <button type="submit" class="btn btn-white btn-round btn-just-icon">
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
                                    <h4 class="title">Espaços</h4>
                                </div>
                                <div class="card-content table-responsive">
                                    <table class="table">
                                        <thead class="text-primary">
                                            <th>Nome</th>
                                            <th>Aluguel</th>
                                            <th>Metragem</th>
                                            <th>Benfeitoria</th>
                                            <th class="actions">Ações</th>  
                                        </thead>
                                        <tbody>
                                            
                                                <?php

                                                    $todosEspacos = $espacos->index();
                                                    while($row = $todosEspacos->fetch(PDO::FETCH_OBJ)){
                                                ?>
                                                <tr>

                                                    <td class="nome"><?php echo $row->nome; ?></td>
                                                     <td class="aluguel"><?php echo $row->aluguel; ?></td>
                                                      <td class="metragem"><?php echo $row->metragem; ?></td>
                                                       <td class="benfeitoria"><?php echo $row->benfeitoria; ?></td>
                                                       <td class="actions">
                                                        <a href="" data-toggle="modal" data-target="#exampleModal" ><i class="material-icons">delete</i></a>
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
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Excluir</h5>
<!--         <span aria-hidden="true">X</span>
 -->        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        </button>
      </div>
      <div class="modal-body">
        Dessa excluir esse Espaço?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Não</button>
        <button id="btnamarelo" type="button" class="btn btn-primary">Sim</button>
      </div>
    </div>
  </div>
</div>

<?php
require_once 'footer.php';
?>

<script type="application/javascript">
    var active = document.getElementById("espaco");
    active.classList.add("active");
</script>