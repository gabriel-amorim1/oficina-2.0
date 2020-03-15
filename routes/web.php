<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

//routes cliente
Route::get('cadastrarCliente', 'ClienteController@cadastrar'); //redireciona para a página de cadastro
Route::post('createCliente', 'ClienteController@create'); //cria os dados do cliente
Route::get('clientes', 'clienteController@index'); //pagina onde ficam listados os clientes
Route::get('destroyCliente/{id}', 'ClienteController@destroy'); //remove os dados
Route::get('redirectToUpdateCliente/{id}', 'ClienteController@redirectToUpdate'); //redireciona para a página de update
Route::post('updateCliente/{id}', 'ClienteController@update'); //faz a alteração dos dados
Route::get('pesquisaClientes', 'ClienteController@pesquisa');//pagina de pesquisa
Route::post('retornoPesquisaCliente', 'ClienteController@retornoPesquisa');//pagina que retorna os dados da pesquisa

//routes vendedor
Route::get('cadastrarVendedor', 'VendedorController@cadastrar'); //redireciona para a página de cadastro
Route::post('createVendedor', 'VendedorController@create'); //cria os dados do vendedor
Route::get('vendedores', 'VendedorController@index'); //pagina onde ficam listados os vendedores
Route::get('destroyVendedor/{id}', 'VendedorController@destroy'); //remove os dados
Route::get('redirectToUpdateVendedor/{id}', 'VendedorController@redirectToUpdate'); //redireciona para a página de update
Route::post('updateVendedor/{id}', 'VendedorController@update'); //faz a alteração dos dados
Route::get('pesquisaVendedores', 'VendedorController@pesquisa');//pagina de pesquisa
Route::post('retornoPesquisaVendedor', 'VendedorController@retornoPesquisa');//pagina que retorna os dados da pesquisa

//routes orcamento
Route::get('home', 'OrcamentoController@home'); //página principal
Route::get('orcamento', 'OrcamentoController@index'); //pagina onde ficam listados os orçamentos
Route::get('cadastrar', 'OrcamentoController@cadastrar'); //redireciona para a página cadastrar
Route::post('create', 'OrcamentoController@create'); //cria os dados
Route::get('destroy/{id}', 'OrcamentoController@destroy'); //remove os dados
Route::get('redirectToUpdate/{id}', 'OrcamentoController@redirectToUpdate'); //redireciona para a página de update
Route::post('update/{id}', 'OrcamentoController@update'); //faz a alteração dos dados
Route::get('pesquisa', 'OrcamentoController@pesquisa');//pagina de pesquisa
Route::post('retornoPesquisa', 'OrcamentoController@retornoPesquisa');//pagina que retorna os dados da pesquisa
