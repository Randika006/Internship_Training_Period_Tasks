<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class model_has_permissions extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $table = 'model_has_roles';
    protected $primaryKey='role_id';
    protected $fillable =['model_type,model_id'];

}
