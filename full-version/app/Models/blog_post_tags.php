<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class blog_post_tags extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $table = 'blog_post_tags';
    protected $primaryKey='id';
    protected $fillable =['post_id','tag_id'];

}
