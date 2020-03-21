<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrcamentoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    //cria a tabela com as colunas indicadas
    public function up()
    {
        Schema::create('orcamento', function (Blueprint $table) {
            $table->bigIncrements('id');//chave primaria
            $table->unsignedBigInteger('id_cliente');//chave estrangeira id da tabela cliente
            $table->foreign('id_cliente')->references('id')->on('cliente');
            $table->timestamp("DataHora");
            $table->unsignedBigInteger('id_vendedor');//chave estrangeira id da tabela vendedor
            $table->foreign('id_vendedor')->references('id')->on('vendedor');
            $table->text("Descricao");
            $table->double("Valor");
            $table->timestamps();
        });
        Artisan::call('db:seed', array('--class' => 'OrcamentoTableSeeder', '--force' => null));
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    //remove a tabela da base de dados
    public function down()
    {
        Schema::dropIfExists('orcamento');
    }
}
