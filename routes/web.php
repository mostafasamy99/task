<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Frontend\FrontendController;
use App\Http\Controllers\Frontend\CartController;
use App\Http\Controllers\Frontend\CheckoutController;
use App\Http\Controllers\Frontend\UserController;
use App\Http\Controllers\Frontend\WishlistController;
use App\Http\Controllers\Frontend\RatingController;

Route::get('/','Frontend\FrontendController@index');
Route::get('category','Frontend\FrontendController@category');
Route::get('view-category/{slug}','Frontend\FrontendController@viewcategory');
Route::get('category/{cate_slug}/{prod_slug}','Frontend\FrontendController@productview');
Route::get('category/{cate_slug}/{prod_slug}','Frontend\FrontendController@productview');



Auth::routes();


Route::post('add-to-cart', 'Frontend\CartController@addProduct');


Route::middleware(['auth'])->group(function () {
Route::get('cart', 'Frontend\CartController@viewcart');
Route::get('checkout', 'Frontend\CheckoutController@index');
Route::post('place-order', 'Frontend\CheckoutController@placeorder');
Route::get('my-orders', 'Frontend\UserController@index');
Route::get('view-order/{id}','Frontend\UserController@view');

Route::get('wishlist', 'Frontend\WishlistController@index');
Route::post('/done','Frontend\CheckoutController@done');


});

