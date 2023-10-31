<!DOCTYPE html>
<html>
<head>
    <link href="/css/changes-table.css" rel="stylesheet">
    <style>
        a:link, a:visited {
          background-color: #f44336;
          color: white;
          padding: 14px 25px;
          text-align: center;
          text-decoration: none;
          display: inline-block;
        }

        a:hover, a:active {
          background-color: red;
        }
        </style>
</head>
<body>

<h1>Invoice details Table</h1>
<a class="fcc-btn" href="/invoice-show">Add Details</a>
<br/>
<table id="arrange">
    <tr>
      <th>Items</th>
      <th>Quantity</th>
      <th>Price</th>
      <th>tax</th>
      <th>Total(LKR)</th>
      <th>Delete</th>
      <th>Edit</th>
      <th>Print</th>
      <th>Preview</th>

    </tr>
    @foreach ($bill_details as $bill_detail)
    <tr>
      <td>{{$bill_detail->items}}</td>
      <td>{{$bill_detail->qty}}</td>
      <td>{{$bill_detail->price}}</td>
      <td>{{$bill_detail->tax}}%</td>
      <td>{{$bill_detail->total}}</td>
      <td><a href = 'delete/{{ $bill_detail->id }}'>Delete</a></td>
      <td><a href = 'edit/{{ $bill_detail->id }}'>Edit</a></td>
      <td><a href = 'print/{{$bill_detail->id}}'>Print</a></td>
      <td><a href = 'preview/{{$bill_detail->id}}'>Preview</a></td>

    </tr>
    @endforeach
  </table>

</body>
</html>


