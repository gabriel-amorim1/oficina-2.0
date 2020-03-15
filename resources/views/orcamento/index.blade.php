
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <!-- Meta tags Obrigatórias -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
     <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.min.js"></script> 
    <script type="text/javascript" src="script.js"></script>  

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <title>Oficina 2.0</title>
  </head>
  <body>
<!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
    <div class="container">
      <h1 class="navbar-brand text-info">Oficina 2.0</h1>
      <h1>Lista de orçamentos</h1>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="{{ url('home') }}">Home</a>
          </li>
          <li class="nav-item ml-auto">
            <a class="nav-link" href="{{ url('cadastrar') }}">Cadastrar Orçamentos</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  	<br>
  	<br><br>

  	<div class="row justify-content-center">
          
      <div class="jumbotron bg-transparent col-md-8 " >
    
      <form method="POST" action = "{{action('OrcamentoController@retornoPesquisa')}}">
      {{ csrf_field() }}
        <!-- Row 1 -->
        <div class="form-row">
           <div class="form-group col-md-6">
              <label for="nomeCliente">Nome Cliente</label>
              <input type="text" class="form-control" name ="nomeCliente" id="nomeCliente"   placeholder="Digite aqui o nome do cliente do orçamento" required>
            </div>
            <div class="form-group col-md-6">
              <label for="nomeVendedor">Nome Vendedor</label>
              <input type="text" class="form-control" name ="nomeVendedor" id="nomeVendedor"   placeholder="Digite aqui o nome do vendedor do orçamento"required>
            </div>
        </div>

          
         <!-- Row 2 -->
        <div class="form-row">
           <div class="form-group col-md-6">
              <label for="dataInicio">Data início</label>
              <input type="text" class="form-control" name ="dataInicio" id="dataInicio"   placeholder="Formato ano-mes-dia"required>
            </div>
            <div class="form-group col-md-6">
              <label for="dataFinal">Data final</label>
              <input type="text" class="form-control" name ="dataFinal" id="dataFinal"   placeholder="Ex: 1999-12-30"required>
            </div>
        </div>
        
        
        <!-- Row3 -->
        <div class="form-row justify-content-center">
            <button class="btn btn-outline-info col-md-4" type="submit" name="pesquisar">Pesquisar</button>  
        </div>
      
      </form>

      </div>
        
  </div>
	 

	 <script>

	$(function(){
    $("#tabela input").keyup(function(){       
        var index = $(this).parent().index();
        var nth = "#tabela td:nth-child("+(index+1).toString()+")";
        var valor = $(this).val().toUpperCase();
        $("#tabela tbody tr").show();
        $(nth).each(function(){
            if($(this).text().toUpperCase().indexOf(valor) < 0){
                $(this).parent().hide();
            }
        });
    });
 
    $("#tabela input").blur(function(){
        $(this).val("");
	    });
	});
</script>
	
	<!-- Table --> 
	
	<div class="row justify-content-center">
		<div id="divConteudo" class = "col-md-12">
			<table id="tabela" class="table table-responsive table-bordered table-hover" >
				<thead  class="thead-light ">
					<tr>
						<th scope="col">Id</th>
						<th scope="col">Cliente</th>
						<th scope="col">Data e Hora</th>
						<th scope="col">Vendedor</th>
						<th scope="col">Descricao</th>
						<th scope="col">Valor</th>
					</tr>
					<tr>
                    <th><input type="text" id="txtColuna1"/></th>
                    <th><input type="text" id="txtColuna2"/></th>
                    <th><input type="text" id="txtColuna3"/></th>
                    <th><input type="text" id="txtColuna4"/></th>
                    <th><input type="text" id="txtColuna5"/></th>
                    <th><input type="text" id="txtColuna6"/></th>
                </tr>  
				</thead>
				<tbody>

					<?php
					   	foreach ($orcamentos as $o) {
					?>
					<tr>
						<td>
						  	<?php
						  		echo '<pre>';
								echo $o->id;
								echo '</pre>';
							?>
							<a href="{{action('OrcamentoController@destroy', $o->id)}}" class = "btn btn-outline-danger">Excluir</a>
							<a href="{{action('OrcamentoController@redirectToUpdate', $o->id)}}" class = "btn btn-outline-info">Editar</a>
					    </td>
					 	<td>
						  	<?php
						  	foreach($clientes as $c){
						  		if($c->id == $o->id_cliente){
									echo $c->nome."  / CPF: ". $c->cpf;
								}
							}
							?>
					    </td>
					  <td>
					  	<?php
					  			echo '<pre>';
								echo $o->DataHora;
								echo '</pre>';
							?>
					  </td>
					  <td>
					  	<?php
					  		foreach($vendedores as $v){
						  		if($v->id == $o->id_vendedor){
									echo $v->nome."  / CPF: ". $v->cpf;
								}
							}
							?>
					  </td>
					  <td>
					  	<?php
								echo $o->Descricao;
							?>
					  </td>
					  <td>
					  	<?php
					  			echo '<pre>';
								echo 'R$ '.$o->Valor;
								echo '</pre>';
							?>
					  </td>
					<?php
					}
					  ?>
			</tr>
				</tbody>
			</table>
		
		</div>
	</div>
	
	
	
    <!-- JavaScript (Opcional) -->
    <!-- jQuery primeiro, depois Popper.js, depois Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  </body>
</html>
