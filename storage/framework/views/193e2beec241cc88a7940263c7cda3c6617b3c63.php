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
            <a class="nav-link" href="<?php echo e(url('home')); ?>">Home</a>
          </li>
          <li class="nav-item ml-auto">
            <a class="nav-link" href="<?php echo e(url('clientes')); ?>">Clientes</a>
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
        foreach ($cliente as $c) {
      ?>
      <form method="POST" action = "<?php echo e(action('ClienteController@update', $c->id)); ?>">
      <?php echo e(csrf_field()); ?>


        <!-- Row 1 -->
        <div class="form-row">
           <div class="form-group col-md-12">
              <label for="nomeCliente"> Nome </label>
              <input type="text" class="form-control" name ="nomeCliente" id="nomeCliente"   placeholder="Digite aqui seu nome completo" value="<?php echo $c->nome; ?>" required>
            </div>
        </div>

        <!-- Row 2 -->
        <div class="form-row">
          <div class="form-group col-md-12">
              <label for="cpfCliente">CPF</label>
              <input type="text" class="form-control" name ="cpfCliente" id="cpfCliente" placeholder="Digite aqui seu CPF" value="<?php echo $c->cpf; ?>" required>
            </div>
         </div> 

         <!-- Row 3 -->
        <div class="form-row">
        <div class="col-md-12">
          <div class="form-group">
            <label for="telefoneCliente">Telefone</label>
           <input type="text" class="form-control" name ="telefoneCliente" id="telefoneCliente" placeholder="(XX)XXXXX-XXXX" value="<?php echo $c->telefone; ?>" required>
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
<?php /**PATH C:\xampp\htdocs\oficina\resources\views/cliente/update.blade.php ENDPATH**/ ?>