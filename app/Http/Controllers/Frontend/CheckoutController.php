<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;

use App\Models\Order;
use App\Models\OrderItem;
use App\Models\User;
use App\Models\Product;
use App\Models\Cart;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CheckoutController extends Controller
{
   public function index()
   {
       $cartitems= Cart::where('user_id',Auth::id())->get();
       return view('frontend.checkout', compact('cartitems'));
   }




   public function done(Request $request)
   {
    $order_rand_no =rand(1111,9999);
   
   
    $final_step=Order::where('user_id',Auth::id())->first();
      $final_price= $final_step->toJson();
      $json = json_decode($final_price, true);
      $json2 = json_decode($final_price, true);
      $price=$json['total_price'];
      $date=$json2['created_at'];
      return view('frontend.done', compact('order_rand_no','price','date'));
 
   }




   public function placeorder(Request $request)
   {
    $order= new Order();
    $order->user_id=Auth::id();
    
    $order->fname =$request->input('fname');
    $order->lname =$request->input('lname');
    $order->email =$request->input('email');
    $order->phone =$request->input('phone');
    $order->address =$request->input('address');

    $total=0;
    $cartitems_total=Cart::where('user_id',Auth::id())->get();
    foreach($cartitems_total as $prod)
    {
        $total +=$prod->products->selling_price * $prod->prod_qty;
    }
    $order->total_price=$total;
    
    $order->tracking_no ='Tofy'.rand(1111,9999);
    $order->save();

    $cartitems = Cart::where('user_id',Auth::id())->get();
    foreach($cartitems as $item)
    {
        OrderItem::create([
            'order_id'=> $order->id,
            'prod_id'=> $item->prod_id,
            'qty'=> $item->prod_qty,
            'price'=> $item->products->selling_price,
        ]);
        $prod=Product::where('id',$item->prod_id)->first();
        $prod->qty=$prod->qty -$item->prod_qty;
        $prod->update();
    }
    if(Auth::user()->address ==NULL)
    {
        $user= User::where('id',Auth::id())->first();
        $user->name =$request->input('fname');
        $user->lname =$request->input('lname');
        $user->phone =$request->input('phone');
        $user->address =$request->input('address');
        $user->update();
    }
    $cartitems = Cart::where('user_id',Auth::id())->get();
    Cart::destroy($cartitems);
    return redirect('/')->with('status',"Order placed successfully");
   }
}
