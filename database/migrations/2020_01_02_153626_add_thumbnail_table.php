<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddThumbnailTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('workout_categories', function (Blueprint $table) {
            $table->string('thumbnail');
            $table->time('duration');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('workout_categories', function (Blueprint $table) {
            $table->dropColumn('thumbnail');
            $table->dropColumn('duration');
        });
    }
}
