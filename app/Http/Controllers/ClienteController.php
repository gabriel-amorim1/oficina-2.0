<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Cliente;


class ClienteController extends Controller
{

    //redireciona para a página onde é realizado o cadastro
    public function cadastrar(){
        return view('cliente.cadastrarCliente');
    }

    //chama a função do model e passa os dados digitados na view por paramentro e caso a operação dê certo retorna a mensagem de ok, caso dê errado retorna a mensagem de erro
    public function create(Request $request)
    {
        if(Cliente::criaCliente($request->nomeCliente, $request->cpfCliente, $request->telefoneCliente)){
            return view('cliente.insercaoOk');
         }else{
            return view('cliente.erroInsercao');
         }
    }


    //função que redireciona os dados de todos o clientes buscados pelo modem e redireciona para a view clientes
    public function index()
    {
        $clientes = Cliente::getAllClientes();
        return view('cliente.clientes', compact('clientes'));
    }

    //chama a função do model que retorna os dados da linha que vai ser editada e redireciona para a página de edição
    public function redirectToUpdate($id)
    {
        $cliente = Cliente::pesquisaId($id);
        return view('cliente.update', compact('cliente'));
    }
    
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    //chama a função atualiza cliente passando os dados que deverão ser atualizados e caso a operação dê certo retorna a mensagem de ok, caso dê errado retorna a mensagem de erro
    public function update(Request $request, $id)
    {
        if(Cliente::atualizaCliente($id, $request->nomeCliente, $request->cpfCliente, $request->telefoneCliente)){
            return view('cliente.insercaoOk');
         }else{
            return view('cliente.erroInsercao');
         }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    //chama função do model para deletar uma linha de acordo com o id e retorna a view para a lista de clientes
    public function destroy($id)
    {   
        if(Cliente::deletaCliente($id)){
            $confere = true;
            return view('cliente.excluiMessage', compact('confere'));
        }else{
            $confere = false;
            return view('cliente.excluiMessage', compact('confere'));
        }
    }

    public function pesquisa(){
        return view('cliente.pesquisa');
    }

    public function retornoPesquisa(Request $request){
        $nomeCliente = $request->nomeCliente;
        $cpfCliente = $request->cpfCliente;

        $clientes = Cliente::filtroClientes($nomeCliente, $cpfCliente);
        return view('cliente.clientes', compact('clientes'));
    }
}
