<!doctype html>
<html lang="pt">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>Oficina 2.0</title>
  </head>
  <body>
  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
    <div class="container">
      <h1 class="navbar-brand text-info">Oficina 2.0</h1>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="{{ url('home') }}">Home</a>
          </li>
          <li class="nav-item ml-auto">
            <a class="nav-link" href="{{ url('pesquisa') }}">Pesquisar por orçamentos</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <br>

    
    <!-- Form -->
   <div class="row justify-content-center">
          
      <div class="jumbotron bg-transparent col-md-8 " >
    <?php
        foreach ($orcamento as $o) {
      ?>
      <form method="POST" action = "{{action('OrcamentoController@update', $o->id)}}">
      {{ csrf_field() }}
        <!-- Row 1 -->
        <div class="form-row">
           <div class="form-group col-md-6">
              <label for="cpfCliente"> Cpf Cliente </label>
              <input type="text" class="form-control" name ="cpfCliente" id="cpfCliente"   placeholder="CPF do cliente" value="<?php 
              foreach($clientes as $c){
                  echo $c->cpf;
              } ?>" required>
            </div>
            <div class="form-group col-md-6">
              <label for="cpfVendedor">Cpf Vendedor</label>
              <input type="text" class="form-control" name ="cpfVendedor" id="cpfVendedor"   placeholder="Cpf do vendedor" value="<?php 
              foreach($vendedores as $v){
                  echo $v->cpf;
              } ?>" required>
            </div>

        </div>

        <!-- Row 2 -->
        <div class="form-row">

        <div class="col-md-12">
          <div class="form-group">
            <label for="descricao">Descrição</label>
            <textarea class="form-control" id="descricao" name="descricao" rows="4" required> <?php
                echo $o->Descricao; ?> </textarea>
          </div>
         </div>
         </div> 

          
         <!-- Row 3 -->
        <div class="form-row">
          <div class="col-md-3">
            <div class="form-group">
              <label for="valor">Valor</label>
              <input type="number" class="form-control" name ="valor" id="valor"
              placeholder="1,00" step="0.01" min="0" value="<?php echo $o->Valor; ?>" required>
            </div>
          </div>
        </div>
        
        
        <!-- Row4 -->
        <div class="form-row justify-content-center">
       
            <button class="btn btn-outline-info col-md-4" type="submit" name="alterar">Alterar dados</button>  
        </div>
      
      </form>
      <?php
              }
          ?>

      </div>
        
  </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>