<?php
namespace Modules\Blog\Entities;

use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class blog_posts extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $table = 'blog_posts';
    protected $primaryKey='id';
    protected $fillable =['author_id','parent_id','title','meta_title','photo','slug','summary','published','content','published_at'];


    protected function title(): Attribute
    {
        return Attribute::make(
            get: fn ($value) => ucfirst($value),
            set: fn ($value) => ucfirst($value),
        );
    }

    protected function meta_title(): Attribute
    {
        return Attribute::make(
            set: fn ($value) => ucfirst($value),
        );
    }

    protected function slug(): Attribute
    {
        return Attribute::make(
            set: fn ($value) => strtolower($value),
        );
    }

    protected function summary(): Attribute
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


    protected function published_at(): Attribute
    {
        return Attribute::make(
            get:fn ($value, $attributes) => Carbon::create($value)->format('m/d/Y'),
        );
    }


}
