<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;



class blog_post_comments extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $table = 'blog_posts_comments';
    protected $primaryKey='id';
    protected $fillable =['post_id','parent_id','title','published','content','published_at'];

     public function childs(){
        return $this->hasMany('app\Models\blog_post_comments','parent_id','id') ;

     }


     protected function title(): Attribute
     {
        return Attribute::make(
            set: fn ($value) => strtolower($value),
        );
     }

     protected function content(): Attribute
     {
         return Attribute::make(
             set: fn ($value) => strtolower($value),
         );
     }


}
