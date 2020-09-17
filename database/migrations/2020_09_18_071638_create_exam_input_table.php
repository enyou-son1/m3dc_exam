<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateExamInputTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('exam_input', function (Blueprint $table) {
            $table->increments('id')->comment('自動番号付与(AI)');
            $table->dateTime('crnt_date')->comment('入力日時');
            $table->string('todohuken', 50)->default('')->comment('都道府県');
            $table->string('fname', 10)->default('')->comment('氏名の一番目');
            $table->string('lname', 15)->default('')->comment('氏名の二番目');
            $table->integer('viewcnt')->comment('参加人数');
            $table->string('ip_addr', 30)->default('')->comment('ユーザーIP Address');
            $table->string('referer', 200)->default('')->comment('ユーザーReferer');
            $table->string('usr_agent', 200)->default('')->comment('ユーザーAgent');

            $table->charset = 'utf8';
            $table->collation = 'utf8_unicode_ci';
        });
        
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('exam_input');
    }
}
