<?php
    require_once 'headeradmin.php';
  ?>

 <div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header" data-background-color="orange">
                        <h4 class="title">Cadastrar</h4>
                        <p class="category">Cadastre as fotos do album</p>
                    </div>
                    <div class="card-content">
                        <form action="edicao.php" method="post">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Evento</label>
                                        <select id="select" name="eventos_id" id="eventos_id" for="eventos" action="edicao.php" class="form-control">
                                            <option>Selecione</option>
                                           
                                            </select>
                                        </div>
                                    </div>
                                    <!-- IMPORTANT:  FORM's enctype must be "multipart/form-data" -->
                                <div class="col-md-12" style="padding-right: 10px;">
                                <form method="post" action="upload-page.php" enctype="multipart/form-data">
                                  <input name="filesToUpload[]" id="filesToUpload" type="file" multiple="" />
                                </form>
                              </div>
                                
                                
                                </div>
                                <button type="submit" name="insert" id="btnamarelo" class="btn btn-primary pull-right">Adicionar Fotos</button>

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

<script>
  //get the input and UL list
var input = document.getElementById('filesToUpload');
var list = document.getElementById('fileList');

//empty list for now...
while (list.hasChildNodes()) {
  list.removeChild(ul.firstChild);
}

//for every file...
for (var x = 0; x < input.files.length; x++) {
  //add to list
  var li = document.createElement('li');
  li.innerHTML = 'File ' + (x + 1) + ':  ' + input.files[x].name;
  list.append(li);
}
</script>  

 <script type="application/javascript">
    var active = document.getElementById("album");
    active.classList.add("active");
</script>
