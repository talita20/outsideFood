<?php
	require_once 'header.php';
    require_once 'assets/php/classes/classLocais.php';



    $locais = New Locais();

?>

            <div class="content">
 				<div class="container-fluid">
                    <div class="collapse navbar-collapse">
                    <a href="./adicionarlocal.php">
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
                                    <h4 class="title">Locais</h4>
                                </div>
                                <div class="card-content table-responsive">
                                    <table class="table">
                                        <thead class="text-primary">
                                            <th>Nome</th>
                                                                                      				
                                            
                                        </thead>
                                        <tbody>
                                            
                                                <?php

                                                    $todosLocais = $locais->index();
                                                    while($row = $todosLocais->fetch(PDO::FETCH_OBJ)){
                                                ?>
                                                <tr>

                                                    <td class="nome"><?php echo $row->nome; ?></td>
                                                    
                                                   
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
        Dessa excluir esse Local?
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