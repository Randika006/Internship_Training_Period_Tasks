<?php

namespace Modules\Blog\Entities;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class blog_tags extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $table = 'blog_tags';
    protected $primaryKey='id';
    protected $fillable =['title','meta_title','slug','content'];

}
