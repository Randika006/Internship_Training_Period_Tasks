<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Bill;
use App\Models\customer;
use PDF;

class InvoicePreview{
    public function preview($id){
        $bill_details = Bill::all();
        $bill=Bill::find($id);
        $customers=customer::find($id);

        return view('invoice.app-invoice-print',compact('bill_details','bill','customers'));
    }
}

class InvoicePrint{
    public function print($id){
        $bill_details = Bill::all();
        $bill=Bill::find($id);
        $customers=customer::find($id);
        $data = [
         'bill_details' => $bill_details,
         'bill' => $bill,
         'customers' => $customers,
        ];
        $pdf = PDF::loadView('invoice.app-invoice-print', $data);
        return $pdf->download('Invoice.pdf');

     }

}



class PrintController extends Controller
{
    public function preview($id)
    {
        $invoicePreview = new InvoicePreview();
        return $invoicePreview->preview($id);
    }

    public function print($id){
        $invoicePrint = new InvoicePrint();
        return $invoicePrint->print($id);

    }


}
