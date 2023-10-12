<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class blog_posts extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $table = 'blog_posts';
    protected $primaryKey='id';
    protected $fillable =['author_id','parent_id','title','meta_title','photo','slug','summary','published','content','published_at'];
}
