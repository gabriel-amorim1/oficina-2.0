<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use DateTime;

//classe (modelo) para servir de base para manipulação das migrates
class Orcamento extends Model
{	
	//define a tabela a ser usada
	protected $table = 'orcamento';
	//define as colunas da tabela
	protected $fillable = ['id_cliente', 'DataHora', 'id_vendedor', 'Descricao', 'Valor'];
    protected $casts = [
    	'DataHora' => 'date:hh:mm'
	];

	//Cria os dados na tabela 'orcamento' a partir dos parametros recebidos e caso a operação dê certo retorna verdadeiro e caso a operação dê errado retorna falso
	public static function criaOrcamento($cpfcliente, $cpfvendedor, $descricao, $valor){
		
		//busca o id(chave primaria) da tabela cliente por meio do cpf recebido
		$Cliente = DB::table('cliente')
		->select()
		->where('cpf' , '=', $cpfcliente)
		->get();
		$idCliente;
		//$Cliente é um array então foi preciso pegar uma posição para que o valor fosse retornado
		foreach($Cliente as $c){
			$idCliente = $c->id;
		}
		//busca o id(chave primaria) da tabela vendedor por meio do cpf recebido
		$Vendedor = DB::table('vendedor')
		->select()
		->where('cpf' , '=', $cpfvendedor)
		->get();
		$IdVendedor;
		//$Vendedor é um array então foi preciso pegar uma posição para que o valor fosse retornado
		foreach($Vendedor as $v){
			$IdVendedor = $v->id;
		}

		//insere na tabela os dados recebidos por parametro e as chaves estrangeiras
		if(
		$orcamentos = DB::table('orcamento')
		->insert(['id_cliente' => $idCliente, 'id_vendedor' => $IdVendedor, 'Descricao' =>$descricao, 'Valor' =>$valor])){
			return true;
		}else{
			return false;
		}
	}

	//Retorna todos os registros da tabela orçamento e ordena de forma decrescente pela data 
	public static function getAllOrcamentos() {
		$orcamentos = DB::table('orcamento')
        ->select()
        ->orderByDesc('DataHora')
        ->get();
        return $orcamentos;
	}

	//Retorna os dados de uma linha com o id especifico recebido por parâmetro
	public static function pesquisaId($id) {
		$orcamentos = DB::table('orcamento')
        ->select()
        ->where('id', '=',$id)
        ->get();
        return $orcamentos;
	}

	//Atualiza os dados na tabela 'orcamento' a partir dos parametros recebidos e caso a operação dê certo retorna verdadeiro e caso a operação dê errado retorna falso
	public static function atualizaOrcamento($id, $cpfcliente, $cpfvendedor, $descricao, $valor){
		if($cpfcliente!=null){
			//busca o id(chave primaria) da tabela cliente por meio do cpf recebido
			$Cliente = DB::table('cliente')
			->select()
			->where('cpf' , '=', $cpfcliente)
			->get();
			$idCliente;
			//$Cliente é um array então foi preciso pegar uma posição para que o valor fosse retornado
			foreach($Cliente as $c){
				$idCliente = $c->id;
			}
		}else{
			$idCliente = null;
		}
		if($cpfvendedor!=null){
			//busca o id(chave primaria) da tabela cliente por meio do cpf recebido
			$Vendedor = DB::table('vendedor')
			->select()
			->where('cpf' , '=', $cpfvendedor)
			->get();
			$idVendedor;
			//$Cliente é um array então foi preciso pegar uma posição para que o valor fosse retornado
			foreach($Vendedor as $v){
				$idVendedor = $v->id;
			}
		}else{
			$idVendedor = null;
		}
		if(
		DB::table('orcamento')
            ->where('id', '=',$id)
            ->update(['id_cliente' => $idCliente, 'id_vendedor' =>$idVendedor, 'Descricao' =>$descricao, 'Valor' =>$valor])){
            	return true;
		}else{
			return false;
		}
	}


	//Remove a linha do id recebido por parametro da tabela 'orcamento' 
	public static function deletaOrcamento($id){
		if(DB::table('orcamento')->where('id', '=', $id)->delete()){
		   	return true;
		}else{
			return false;
		}
	}

	//busca no banco de dados conforme o que foi digitado pelo usuario na tela de pesquisa de orcamentos
	public static function filtroOrcamentos($nomeCliente, $nomeVendedor, $dataInicio, $dataFinal){
		if($nomeCliente!=null){
			//busca o id(chave primaria) da tabela cliente por meio do nome recebido
			$Cliente = DB::table('cliente')
			->select()
			->where('nome' , '=', $nomeCliente)
			->get();
			$idCliente;
			//$Cliente é um array então foi preciso pegar uma posição para que o valor fosse retornado
			foreach($Cliente as $c){
				$idCliente = $c->id;
			}
			echo $idCliente;
		}else{
			$idCliente = null;
		}
		if($nomeVendedor!=null){
			//busca o id(chave primaria) da tabela cliente por meio do nome recebido
			$Vendedor = DB::table('vendedor')
			->select()
			->where('nome' , '=', $nomeVendedor)
			->get();
			$idVendedor;
			//$Cliente é um array então foi preciso pegar uma posição para que o valor fosse retornado
			foreach($Vendedor as $v){
				$idVendedor = $v->id;
			}
		}else{
			$idVendedor = null;
		}
		$orcamentos =DB::table('orcamento')
					->where('id_cliente', '=', $idCliente)
					->where('id_vendedor', '=', $idVendedor)
					->where('DataHora', '>=', $dataInicio, 'and', 'DataHora', '<=', $dataFinal)
					->orderByDesc('DataHora')
					->get();
		return $orcamentos;
	}
}
