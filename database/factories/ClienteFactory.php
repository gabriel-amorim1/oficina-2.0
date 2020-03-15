<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Cliente;
use Faker\Generator as Faker;

$factory->define(Cliente::class, function (Faker $faker) {
    return [
    	//biblioteca faker gera os dados aleatorios para as colunas indicadas
        'nome'=>$faker->name,
        'cpf'=>$faker->numberBetween($min = 100000000, $max = 999999999), 
        'telefone'=>$faker->phoneNumber,
    ];
});
