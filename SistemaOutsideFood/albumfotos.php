<?php
    require_once 'headeradmin.php';
  ?>

  <div class="content">
 <div class="container-fluid">
 	 <a href="./adicionarfotos.php">
     <button type="button" class="btn btn-warning">Adicionar</button>
   </a>
  <div class="collapse navbar-collapse">
                    <div class="form-group label-floating">
                    <label class="control-label">Evento</label>
                    <select id="select" name="cidades_id" id="cidades_id" for="cidade" action="evento.php" class="form-control">
                    <option>Selecione</option>
                    <option id="" value=""></option>                   
                     </select>
                    </div>   <form class="navbar-form navbar-right" role="search" action="evento.php" method="get">
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
      <h4 class="title">Galeria</h4>
  </div>
  <div class="card-content table-responsive">
      
            <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 ">
                <img src="http://fakeimg.pl/300x300/" class="img-responsive">

            </div>

            <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 ">
                <img src="http://fakeimg.pl/300x300/" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 ">
                <img src="http://fakeimg.pl/300x300/" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 ">
                <img src="http://fakeimg.pl/300x300/" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 ">
                <img src="http://fakeimg.pl/300x300/" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 ">
                <img src="http://fakeimg.pl/300x300/" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 ">
                <img src="http://fakeimg.pl/300x300/" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 ">
                <img src="http://fakeimg.pl/300x300/" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 ">
                <img src="http://fakeimg.pl/300x300/" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 ">
                <img src="http://fakeimg.pl/300x300/" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 ">
                <img src="http://fakeimg.pl/300x300/" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 ">
                <img src="http://fakeimg.pl/300x300/" class="img-responsive">
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
    var active = document.getElementById("album");
    active.classList.add("active");
</script>