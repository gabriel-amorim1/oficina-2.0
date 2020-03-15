<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Vendedor;


class VendedorController extends Controller
{
    //redireciona para a página onde é realizado o cadastro
    public function cadastrar(){
        return view('vendedor.cadastrarVendedor');
    }

    //chama a função do model e passa os dados digitados na view por paramentro e caso a operação dê certo retorna a mensagem de ok, caso dê errado retorna a mensagem de erro
    public function create(Request $request)
    {
        if(Vendedor::criaVendedor($request->nomeVendedor, $request->cpfVendedor, $request->telefoneVendedor)){
            return view('vendedor.insercaoOk');
         }else{
            return view('vendedor.erroInsercao');
         }
    }


    //função que redireciona os dados de todos o vendedores buscados pelo modem e redireciona para a view vendedores
    public function index()
    {
        $vendedores = Vendedor::getAllVendedores();
        return view('vendedor.vendedor', compact('vendedores'));
    }

    //chama a função do model que retorna os dados da linha que vai ser editada e redireciona para a página de edição
    public function redirectToUpdate($id)
    {
        $vendedor = Vendedor::pesquisaId($id);
        return view('vendedor.update', compact('vendedor'));
    }
    
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    //chama a função atualiza vendedor passando os dados que deverão ser atualizados e caso a operação dê certo retorna a mensagem de ok, caso dê errado retorna a mensagem de erro
    public function update(Request $request, $id)
    {
        if(Vendedor::atualizaVendedor($id, $request->nomeVendedor, $request->cpfVendedor, $request->telefoneVendedor)){
            return view('vendedor.insercaoOk');
         }else{
            return view('vendedor.erroInsercao');
         }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    //chama função do model para deletar uma linha de acordo com o id e retorna a view para a lista de vendedores
    public function destroy($id)
    {
        if(Vendedor::deletaVendedor($id)){
            $confere = true;
            return view('vendedor.excluiMessage', compact('confere'));
        }else{
            $confere = false;
            return view('vendedor.excluiMessage', compact('confere'));
        }
    }

    public function pesquisa(){
        return view('vendedor.pesquisa');
    }

    public function retornoPesquisa(Request $request){
        $nomeVendedor = $request->nomeVendedor;
        $cpfVendedor = $request->cpfVendedor;

        $vendedores = Vendedor::filtroVendedores($nomeVendedor, $cpfVendedor);
        return view('vendedor.vendedor', compact('vendedores'));
    }
}
