<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class WorkoutVideos extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('workout_videos', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title');
            $table->integer('categoryId')->unsigned();
            $table->foreign('categoryId')->references('id')->on('workout_categories')->onDelete('cascade');
            $table->time('duration');
            $table->string('thumbnail');
            $table->string('video_url');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('workout_videos');
    }
}
