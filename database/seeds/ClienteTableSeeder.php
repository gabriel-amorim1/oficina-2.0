<?php

use Illuminate\Database\Seeder;

class ClienteTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	//define quantas linhas de dados serão criadas na tabela
        factory(App\Cliente::class,100)->create();
    }
}
