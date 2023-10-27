<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class roles extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $table = 'roles';
    protected $primaryKey='id';
    protected $fillable =['name,guard_name'];

}
