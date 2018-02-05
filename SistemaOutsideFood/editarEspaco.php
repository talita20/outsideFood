

 <?php
    require_once 'headeradmin.php';
?>   

           <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header" data-background-color="orange">
                                    <h4 class="title">Atualizar</h4>
                                    <p class="category">Atualize o espaço do evento</p>
                                </div>
                                <div class="card-content">
                                    <form action="espaco.php" method="post">
                                        <div class="row">
                                            <div class="col-md-5">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Nome</label>
                                                    <input type="text" name="nome" class="form-control">
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Aluguel</label>
                                                    <input type="text" name="aluguel" class="form-control">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Metragem</label>
                                                    <input id="formulario" type="number" name="metragem" class="form-control">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Benfeitoria</label>
                                                    <input id="formulario" type="text" name="benfeitoria" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                       
                                        <button type="submit" name="insert" id="btnamarelo" class="btn btn-primary pull-right">Atualizar Espaço</button>
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
