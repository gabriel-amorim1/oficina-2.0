<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Vendedor;
use Faker\Generator as Faker;

$factory->define(Vendedor::class, function (Faker $faker) {
    return [
    	//biblioteca faker gera os dados aleatorios para as colunas indicadas
        'nome'=>$faker->name,
        'cpf'=>$faker->numberBetween($min = 10000000, $max = 99999999), 
        'telefone'=>$faker->phoneNumber,
    ];
});
