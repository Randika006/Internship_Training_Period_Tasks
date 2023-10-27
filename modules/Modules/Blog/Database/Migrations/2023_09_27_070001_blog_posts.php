<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('blog_posts', function (Blueprint $table) {
            $table->id();
            $table->foreignId('author_id')->constrained('users');
            $table->integer('parent_id');
            $table->string('title');
            $table->string('meta_title');
            $table->text('photo');
            $table->string('slug');
            $table->text('summary');
            $table->integer('published');
            $table->text('content');
            $table->timestamp('published_at');
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
        Schema::drop('blog_posts');

    }
};
