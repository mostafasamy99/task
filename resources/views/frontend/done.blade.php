@extends('layouts.front')

@section('content')
<h3>Finalllly Here are some information for your order</h3>
<h5>order no.:{{$order_rand_no}}</h5>
<h5>order date:{{$date}}</h5>
<h5>total price:{{$price}}</h5>
@endsection