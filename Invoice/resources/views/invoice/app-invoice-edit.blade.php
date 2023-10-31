<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="/css/invoice.css" rel="stylesheet">
<link href="/css/table.css" rel="stylesheet">
<style>
    a:link, a:visited {
      background-color: #f44336;
      color: white;
      text-align: center;
      padding: 12px 7px;
      border-radius: 4px;

      text-decoration: none;
      display: inline-block;


    }

    a:hover, a:active {
      background-color: red;
    }
    </style>
</head>
<body>


<h2><center>Update Invoice Details</center></h2>

<div class="container">
  <form action="{{url('update-invoice/'.$bill->id)}}" id="PostForm"  method="POST" enctype="multipart/form-data">
    @csrf

    <div class="row">
      <div class="col-25">
        <label for="name">Send To:</label>
      </div>
      <div class="col-75">
        <input type="text" id="send_to" name="send_to" value="{{$customers->send_to}}" placeholder="Send To..">
      </div>
    </div>

    <div class="row">
        <div class="col-25">
          <label for="address">Address:</label>
        </div>
        <div class="col-75">
          <input type="text" id="address" name="address" value="{{$customers->address}}" placeholder="Address.....">
        </div>
      </div>

    <div class="row">
      <div class="col-25">
        <label for="items">Items</label>
      </div>
      <div class="col-75">
        <input type="text" id="items" name="items" value="{{$bill->items}}" placeholder="Items Name..">
      </div>
    </div>

    <div class="row">
        <div class="col-25">
            <label for="qty">Quantity</label>
          </div>
          <div class="col-75">
            <input type="text" id="qty" name="qty" value="{{$bill->qty}}" placeholder="Quantity..">
          </div>
    </div>


    <div class="row">
        <div class="col-25">
            <label for="price">Price LKR</label>
          </div>
          <div class="col-75">
            <input type="text" id="price" name="price" value="{{$bill->price}}" placeholder="price..">
          </div>
     </div>

     <div class="row">
        <div class="col-25">
            <label for="tax">Tax</label>
          </div>
          <div class="col-75">
            <input type="text" id="total" name="tax"  value="{{$bill->tax}}"  placeholder="Tax..">
          </div>
     </div>

    <div class="row">
      <input type="submit" value="Update">
    </div>

    <div class="row">
        <a class="fcc-btn" href="/change">Change Details</a>
    </div>

  </form>


  <table>
    <tr>
      <th>Items</th>
      <th>Quantity</th>
      <th>Price</th>
      <th>Tax</th>
      <th>Total</th>
    </tr>
    @foreach ($bill_details as $bill_detail)
    <tr>
      <td>{{$bill_detail->items}}</td>
      <td>{{$bill_detail->qty}}</td>
      <td>{{$bill_detail->price}}</td>
      <td>{{$bill_detail->tax}}%</td>
      <td>{{$bill_detail->total}}</td>
    </tr>
    @endforeach
  </table>



   <!-- Invoice Total starts -->
   <div class="card-body invoice-padding">
    <div class="row invoice-sales-total-wrapper">
      <div class="col-md-6 d-flex justify-content-end order-md-2 order-1">
        <div class="invoice-total-wrapper">
         <div class="invoice-total-item">
            <p class="invoice-total-title">Tax:</p>
            <p class="invoice-total-amount">{{$bill_detail->tax}}%</p>
          </div>
          <hr class="my-50" />
          <div class="invoice-total-item">
            <p class="invoice-total-title">Total:</p>
            <p class="invoice-total-amount">${{$bill_detail->sum('total') }}
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Invoice Total ends -->





</div>

</body>
</html>
