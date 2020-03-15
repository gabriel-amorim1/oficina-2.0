<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
 
  <title>Oficina 2.0</title>

  <!-- Bootstrap CSS -->
  <!--link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"-->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>

<body>
  <div class="jumbotron bg-transparent"></div>
  <div class="container">
      <h3 class="text-center text-primary ">Oficina 2.0</h3>
   </div>
  <br>
  <br>

  <div class="row justify-content-center">
    <div class="jumbotron bg-light col-lg-5">
      <div class="container text-center col-lg-8">
        <!--h1 class="font-weight-bold display-4 text-primary">Cadastro</h1-->
        <a href="{{ url('cadastrar') }}" class="btn btn-block btn-outline-primary">Cadastrar um orçamento</a>
        <a href="{{ url('pesquisa') }}" class="btn btn-block btn-outline-primary">Pesquisar por orçamentos cadastrados</a>
        <a href="{{ url('cadastrarCliente') }}" class="btn btn-block btn-outline-primary">Cadastrar cliente</a>
        <a href="{{ url('pesquisaClientes') }}" class="btn btn-block btn-outline-primary">Pesquisar por clientes cadastrados</a>
        <a href="{{ url('cadastrarVendedor') }}" class="btn btn-block btn-outline-primary">Cadastrar vendedor</a>
        <a href="{{ url('pesquisaVendedores') }}" class="btn btn-block btn-outline-primary">Pesquisar por vendedores cadastrados</a>
      </div>

    </div>
     
  </div>

  
  <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>

</html>
