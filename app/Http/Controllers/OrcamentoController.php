<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Orcamento;
use App\Cliente;
use App\Vendedor;

class OrcamentoController extends Controller
{
    //chama a função do model que retorna todos os orçamentos e redireciona os dados para a view index(lista de orçamentos, clientes e vendedores)
    public function index()
    {
        $orcamentos = Orcamento::getAllOrcamentos();
        $clientes = Cliente::getAllClientes();
        $vendedores = Vendedor::getAllVendedores();
        return view('orcamento.index', compact('orcamentos', 'clientes', 'vendedores'));
    }

    //redireciona para a página principal
    public function home(Request $request){
        return view('orcamento.home');
    }

    //redireciona para a página onde é realizado o cadastro
    public function cadastrar(){
        return view('orcamento.cadastrar');
    }

    //chama a função do model e passa os dados digitados na view por paramentro e caso a operação dê certo retorna a mensagem de ok, caso dê errado retorna a mensagem de erro
    public function create(Request $request)
    {
         if(Orcamento::criaOrcamento($request->cpfCliente, $request->cpfVendedor, $request->descricao, $request->valor)){
            return view('orcamento.insercaoOk');
         }else{
            return view('orcamento.erroInsercao');
         }
    }

    //chama a função atualiza orçamento passando os dados que deverão ser atualizados e caso a operação dê certo retorna a mensagem de ok, caso dê errado retorna a mensagem de erro
    public function update(Request $request, $id)
    {
        if(Orcamento::atualizaOrcamento($id, $request->cpfCliente, $request->cpfVendedor, $request->descricao, $request->valor)){
            return view('orcamento.insercaoOk');
         }else{
            return view('orcamento.erroInsercao');
         }
    }

    //chama a função do model que retorna os dados da linha que vai ser editada e redireciona para a página de edição
    public function redirectToUpdate($id)
    {
        $orcamento = Orcamento::pesquisaId($id);
        foreach($orcamento as $o){
            $clientes = Cliente::pesquisaId($o->id_cliente);
            $vendedores = Vendedor::pesquisaId($o->id_vendedor);
        }
        return view('orcamento.update', compact('orcamento', 'clientes', 'vendedores'));
    }
    

    //chama função do model para deletar uma linha de acordo com o id e retorna a view
    public function destroy($id)
    {   
        if(Orcamento::deletaOrcamento($id)){
            $confere = true;
            return view('orcamento.excluiMessage', compact('confere'));
        }else{
            $confere = false;
            return view('orcamento.excluiMessage', compact('confere'));
        }
    }

    //redireciona para a página de pesquisa de orçamentos
    public function pesquisa(){
        return view('orcamento.pesquisa');
    }

    public function retornoPesquisa(Request $request){
        $nomeCliente = $request->nomeCliente;
        $nomeVendedor = $request->nomeVendedor;
        $dataInicio = $request->dataInicio;
        $dataFinal = $request->dataFinal;

        $orcamentos = Orcamento::filtroOrcamentos($nomeCliente, $nomeVendedor, $dataInicio, $dataFinal);
        $clientes = Cliente::getAllClientes();
        $vendedores = Vendedor::getAllVendedores();
        return view('orcamento.index', compact('orcamentos', 'clientes', 'vendedores'));
    }
}
