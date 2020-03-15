<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        //chamada dos seeders para preencher as tabelas com dados
        $this->call(ClienteTableSeeder::class);
        $this->call(VendedorTableSeeder::class);
        $this->call(OrcamentoTableSeeder::class);
    }
}
