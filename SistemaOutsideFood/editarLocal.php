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
                                    <p class="category">Atualize o local do evento</p>
                                </div>
                                <div class="card-content">
                                    <form>
                                        <div class="row">
                                            <div class="col-md-5">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Nome</label>
                                                    <input type="text" class="form-control">
                                                </div>
                                            </div>
                                            
                                        </div>
                                       
                                        <button type="submit" id="btnamarelo" class="btn btn-primary pull-right">Atualizar Local</button>
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

