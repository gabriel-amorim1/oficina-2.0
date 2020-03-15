<?php

use Illuminate\Database\Seeder;

class VendedorTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	//define quantas linhas de dados serão criadas na tabela
        factory(App\Vendedor::class,10)->create();
    }
}
