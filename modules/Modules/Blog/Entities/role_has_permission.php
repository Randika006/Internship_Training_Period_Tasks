<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class role_has_permission extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $table = 'role_has_permissions';
    protected $primaryKey='permission_id';
    protected $fillable =['role_id'];

}
