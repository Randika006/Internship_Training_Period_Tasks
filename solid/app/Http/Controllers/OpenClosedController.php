<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use App\Models\Customer;

use Illuminate\Http\Request;

class OpenClosedController extends Controller
{
    //Open-closed
    //class Should be open for extention but closed for modification

    public function AddCountry(){
        $country="Sri Lanka";

        $customer = new Customer;
        $customer->name="Ravi Perera";
        $customer->address="Colombo Seven, 57, Ward Place,";
        $customer->email="ravi1990@gmail.com";
        $customer->tel="011-1234563";
        $customer->country=$country;
        $customer->save();

        echo '<div style="background-color: lightblue; padding: 10px; border: 1px solid #ccc;font-weight: bold;">';
        echo 'Record Insert succesfully';
        echo '</div>';


    }
}
