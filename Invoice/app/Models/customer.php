<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class customer extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $table = 'customers';
    protected $primaryKey='id';
    protected $fillable =['bill_id','send_to','address'];

}
