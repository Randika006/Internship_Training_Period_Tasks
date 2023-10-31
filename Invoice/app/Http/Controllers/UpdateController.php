<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Bill;
use App\Models\customer;

class InvoiceEditMethod{
    public function edit($id){
        $bill_details = Bill::all();
        $bill=Bill::find($id);
        $customers=customer::find($id);
        return view('invoice.app-invoice-edit',compact('bill','customers','bill_details'));
    }
}

class InvoiceUpdateMethod{
    public function update(Request $request,$id){
        $bill=Bill::find($id);
        $bill->items=$request->items;

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
        $bill->update();

        $customer= new customer;
        $customer->bill_id=$bill->id;
        $customer->send_to=$request->send_to;
        $customer->address=$request->address;
        $customer->update();
        return redirect()->back();
    }
}



class UpdateController extends Controller
{
    public function edit($id)
    {
        $invoiceEditMethod = new InvoiceEditMethod();
        return $invoiceEditMethod->edit($id);
    }

    public function update(Request $request,$id){
        $invoiceUpdateMethod = new InvoiceUpdateMethod();
        return $invoiceUpdateMethod->update($request,$id);

    }


}
