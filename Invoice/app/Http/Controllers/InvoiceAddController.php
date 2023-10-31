<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Bill;
use App\Models\customer;


class InvoiceFormLoadMethods{
    public function show(){
        $bill_details = Bill::all();
        return view('invoice.app-invoice-add',compact('bill_details'));
    }
}


class InvoiceStoreMethods{
    public function store(Request $request){
        $bill = new Bill;

        $bill->items = $request->items;
        $qty=$request->qty;
        $price=$request->price;
        $tax=$request->tax;

        //String values conver to integer and double. then get a total
        $item_qty = (int) $qty;
        $item_price = (double) $price;
        $item_tax = (double) $tax;
        $total=$item_qty*$item_price;
        $total_with_tax=$total+$item_tax;

        $bill->qty   = $item_qty;
        $bill->price = $item_price;
        $bill->tax   = $item_tax;
        $bill->total = $total_with_tax;
        $bill->save();

           $customer= new customer;
           $customer->bill_id=$bill->id;
           $customer->send_to=$request->send_to;
           $customer->address=$request->address;
           $customer->save();

        return redirect()->to('/invoice-show');


    }
}

class InvoiceAddController extends Controller
{
    public function show()
    {
        $invoiceFormLoader = new InvoiceFormLoadMethods();
        return $invoiceFormLoader->show();
    }

    public function store(Request $request)
    {
         $invoiceStore = new InvoiceStoreMethods();
         return $invoiceStore->store($request);
    }

}
