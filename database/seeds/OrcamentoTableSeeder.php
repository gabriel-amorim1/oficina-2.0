<?php

use Illuminate\Database\Seeder;

class OrcamentoTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	//define quantas linhas de dados serão criadas na tabela
        factory(App\Orcamento::class,100)->create();
    }
}
