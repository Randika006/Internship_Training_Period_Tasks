<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class blog_categories extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $table = 'blog_categories';
    protected $primaryKey='id';
    protected $fillable =['parent_id','title','meta_title','photo','slug','content'];

}
