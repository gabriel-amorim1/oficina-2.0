<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

//classe (modelo) para servir de base para manipulação das migrates
class Vendedor extends Model
{
	//define a tabela a ser usada
    protected $table = 'vendedor';
    //define as colunas da tabela
	protected $fillable = ['cpf', 'nome', 'telefone'];

	    //Cria os dados na tabela 'vendedor' a partir dos parametros recebidos e caso a operação dê certo retorna verdadeiro e caso a operação dê errado retorna falso
	public static function criaVendedor($nomeVendedor, $cpfVendedor, $telefoneVendedor){
		//insere na tabela os dados recebidos por parametro
		if(
		$vendedores = DB::table('vendedor')
		->insert(['nome' => $nomeVendedor, 'cpf' =>$cpfVendedor, 'telefone' =>$telefoneVendedor])){
			return true;
		}else{
			return false;
		}
	}

	//Retorna todos os registros da tabela vendedor
	public static function getAllVendedores() {
		$vendedores = DB::table('vendedor')
        ->select()
        ->get();
        return $vendedores;
	}

	//Retorna os dados de uma linha com o id especifico recebido por parâmetro
	public static function pesquisaId($id) {
		$vendedores = DB::table('vendedor')
        ->select()
        ->where('id', '=',$id)
        ->get();
        return $vendedores;
	}

	//Atualiza os dados na tabela 'vendedor' a partir dos parametros recebidos e caso a operação dê certo retorna verdadeiro e caso a operação dê errado retorna falso
	public static function atualizaVendedor($id, $nomeVendedor, $cpfVendedor, $telefoneVendedor){
		if(
		DB::table('vendedor')
            ->where('id', '=',$id)
            ->update(['nome' => $nomeVendedor, 'cpf' =>$cpfVendedor, 'telefone' =>$telefoneVendedor])){
            	return true;
		}else{
			return false;
		}
	}

	//Remove a linha do id recebido por parametro da tabela 'vendedor' 
	public static function deletaVendedor($id){
		//confere se não existe orçamento com o id do vendedor cadastrado
		$orcamento = DB::table('orcamento')->where('id_vendedor', '=', $id)->get();
		foreach($orcamento as $o){
				$idVendedor = $o->id_vendedor;
			}
		if($idVendedor == $id){
			return false;
		}else{
			DB::table('vendedor')->where('id', '=', $id)->delete();
			return true;
		}
	}

	//busca no banco de dados conforme o que foi digitado pelo usuario na tela de pesquisa de clientes
	public static function filtroVendedores($nomeVendedor, $cpfVendedor){
			//busca o id(chave primaria) da tabela cliente por meio do nome e cpf recebido
			$vendedores = DB::table('vendedor')
			->select()
			->where('nome' , '=', $nomeVendedor)
			->orWhere('cpf', '=', $cpfVendedor)
			->get();
		return $vendedores;
	}
}
