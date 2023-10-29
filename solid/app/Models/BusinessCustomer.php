<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BusinessCustomer extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $table = 'business_customer';
    protected $primaryKey='id';
    protected $fillable =['brand','country','email','tel'];

}
