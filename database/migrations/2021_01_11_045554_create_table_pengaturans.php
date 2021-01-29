<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTablePengaturans extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('table_pengaturans', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string("nama_ujian");
            $table->string("waktu");
            $table->string("nilai_min");
            $table->string("peraturan_ujian");
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('table_pengaturans');
    }
}
