<?php

namespace App\Http\Controllers;
use App\Models\Bill;
use App\Models\customer;
use Illuminate\Support\Facades\DB;


use Illuminate\Http\Request;

class InvoiceShow{
    public function show(){
        $bill_details = Bill::all();
        return view('invoice.app-invoice-arrange',compact('bill_details'));
    }
}

class InvoiceDelete{
    public function delete($id){
        $delete1=DB::table('customers')->where('bill_id', $id)->delete();
        $delete2=DB::table('bill')->where('id', $id)->delete();
        return redirect()->to('/change');
     }
}

class DeleteController extends Controller
{

    public function show()
    {
        $invoiceShow = new InvoiceShow();
        return $invoiceShow->show();
    }

    public function delete($id)
    {
        $invoiceDelete = new InvoiceDelete();
        return $invoiceDelete->delete($id);
    }



}
