<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Orcamento;
use Faker\Generator as Faker;

$factory->define(Orcamento::class, function (Faker $faker) {
    return [
    	//biblioteca faker gera os dados aleatorios para as colunas indicadas
        'id_cliente'=> App\Cliente::all(['id'])->random(), 
        'DataHora'=>$faker->dateTime($max = 'now', $timezone = null),
        'id_vendedor'=> App\Vendedor::all(['id'])->random(),
        'Descricao'=>$faker->text($maxNbChars = 400) , 
        'Valor'=>$faker->randomFloat($nbMaxDecimals = 2, $min = 0, $max = NULL),
    ];
});
