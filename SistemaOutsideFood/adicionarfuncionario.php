 <?php
 require_once 'headercliente.php';
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
                        <form action="evento.php" method="post" enctype="multipart/form-data">
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
                                            <select id="select" name="locais_id" id="locais_id" for="local" action="evento.php" class="form-control">
                                            <option>Selecione</option>
                                                <option id="" value="">
                                                </option>                                                
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
