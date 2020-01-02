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
        Schema::table('workoutcategories', function (Blueprint $table) {
            $table->string('thumbnail');
            $table->string('duration');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('workoutcategories', function (Blueprint $table) {
            $table->dropColumn('thumbnail');
            $table->dropColumn('duration');
        });
    }
}
