<?php

namespace Modules\Blog\Entities;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class blog_post_categories extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $table = 'blog_posts_categories';
    protected $primaryKey='id';
    protected $fillable =['post_id','category_id','category_name'];

}
