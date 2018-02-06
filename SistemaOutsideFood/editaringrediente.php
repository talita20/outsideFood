<?php
	require_once 'headercliente.php';
?>

           <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header" data-background-color="orange">
                                    <h4 class="title">Atualizar</h4>
                                    <p class="category">Atualize o ingrediente</p>
                                </div>
                                <div class="card-content">
                                    <form action="cidade.php" method="post">
                                        <div class="row">
                                            <div class="col-md-5">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Nome</label>
                                                    <input type="text" name="nome" class="form-control">
                                                </div>
                                            </div>
                                            
                                        </div>
                                       
                                        <button type="submit" name="insert" id="btnamarelo" class="btn btn-primary pull-right">Atualizar Ingrediente</button>
                                        <div class="clearfix"></div>
                                    </form>
                                    </div>
                                </div>                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>

<script type="application/javascript">
    var active = document.getElementById("ingredientes");
    active.classList.add("active");
</script>