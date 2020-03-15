<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

//classe (modelo) para servir de base para manipulação das migrates
class Cliente extends Model
{
	//define a tabela
    protected $table = 'cliente';
    //define as colunas da tabela
	protected $fillable = ['cpf', 'nome', 'telefone'];
    
    //Cria os dados na tabela 'cliente' a partir dos parametros recebidos e caso a operação dê certo retorna verdadeiro e caso a operação dê errado retorna falso
	public static function criaCliente($nomeCliente, $cpfCliente, $telefoneCliente){
		//insere na tabela os dados recebidos por parametro
		if(
		$clientes = DB::table('cliente')
		->insert(['nome' => $nomeCliente, 'cpf' =>$cpfCliente, 'telefone' =>$telefoneCliente])){
			return true;
		}else{
			return false;
		}
	}

	//Retorna todos os registros da tabela cliente
	public static function getAllClientes() {
		$clientes = DB::table('cliente')
        ->select()
        ->get();
        return $clientes;
	}

	//Retorna os dados de uma linha com o id especifico recebido por parâmetro
	public static function pesquisaId($id) {
		$clientes = DB::table('cliente')
        ->select()
        ->where('id', '=',$id)
        ->get();
        return $clientes;
	}

	//Atualiza os dados na tabela 'cliente' a partir dos parametros recebidos e caso a operação dê certo retorna verdadeiro e caso a operação dê errado retorna falso
	public static function atualizaCliente($id, $nomeCliente, $cpfCliente, $telefoneCliente){
		if(
		DB::table('cliente')
            ->where('id', '=',$id)
            ->update(['nome' => $nomeCliente, 'cpf' =>$cpfCliente, 'telefone' =>$telefoneCliente])){
            	return true;
		}else{
			return false;
		}
	}

	//Remove a linha do id recebido por parametro da tabela 'cliente' 
	public static function deletaCliente($id){
		$orcamento = DB::table('orcamento')->where('id_cliente', '=', $id)->get();
		foreach($orcamento as $o){
				$idCliente = $o->id_cliente;
			}
		if($idCliente == $id){
			return false;
		}else{
			DB::table('cliente')->where('id', '=', $id)->delete();
			return true;
		}
	}

	//busca no banco de dados conforme o que foi digitado pelo usuario na tela de pesquisa de clientes
	public static function filtroClientes($nomeCliente, $cpfCliente){
			//busca o id(chave primaria) da tabela cliente por meio do nome e cpf recebido
			$clientes = DB::table('cliente')
			->select()
			->where('nome' , '=', $nomeCliente)
			->orWhere('cpf', '=', $cpfCliente)
			->get();
		return $clientes;
	}
}
