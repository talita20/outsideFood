 <?php
 require_once 'headercliente.php';
 require_once 'assets/php/classes/classFuncionarios.php';
   require_once 'assets/php/classes/classServicos.php';
      require_once 'assets/php/classes/classCulinaria.php';
   $funcionarios= new Funcionarios();
   $servicos= new Servicos();
   $culinaria= new Culinaria();
 ?>   

 <div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header" data-background-color="orange">
                        <h4 class="title">Cadastrar</h4>
                        <p class="category">Cadastre seu funcionário</p>
                    </div>
                    <div class="card-content">
                        <form action="funcionarios.php" method="post" enctype="multipart/form-data">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Nome</label>
                                        <input type="text" name="nome" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label>Tipo</label>
                                    <div class="form-group label-floating">
                                     <form>
                                      <input type="radio" name="gender" value="" > Chefe<br>
                                      <input type="radio" name="gender" value=""> Auxiliar<br>
                                    </form>   
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                         <div class="col-md-6">
                                        <div class="form-group label-floating">
                                            <label class="control-label">Tipo de culinária</label>
                                            <select id="select" name="culinaria_id" id="culinaria_id" for="local" action="funcionarios.php" class="form-control">
                                            <option>Selecione</option>
                                                <?php 
                                            $stmtCulinaria = $culinaria->index();
                                            while($rowCulinaria = $stmtCulinaria->fetch(PDO::FETCH_OBJ)){
                                                ?>
                                                <option id="<?php echo $rowCulinaria->id; ?>" value="<?php echo $rowCulinaria->id; ?>"><?php echo $rowCulinaria->tipo_culinaria ?></option>
                                                <?php } ?>                                               
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                <button type="submit" name="insert" id="btnamarelo" class="btn btn-primary pull-right">Adicionar Funcionário</button>
                                <div class="clearfix"></div>
                            </form>
                        </div>
                    </div>                                
                </div>
            </div>
        </div>
    </div>
</div>

<?php
require_once 'footer.php';
?>

<script type="application/javascript">
    var active = document.getElementById("funcionarios");
    active.classList.add("active");
</script>