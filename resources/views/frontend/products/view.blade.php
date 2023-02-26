@extends('layouts.front')

@section('title')
    {{$products->name}}
@endsection


@section('content')


<div class="py-3 mb-4 shadow-sm bg-warning border-top">
    <div class="container">
        <h6 class="mb-0"> 
            <a href="{{url('category')}}">
                Collections
            </a>/    
            <a href="{{url('category/'.$products->category->slug)}}">
                {{$products->category->name}}
            </a>/
            <a href="{{url('category/'.$products->category->slug.'/'.$products->slug)}}">
                {{$products->name}}
            </a>
        </h6>
    </div>
</div>
    <div class="container test">
        <div class="card shadow p-3 product_data ">
            <div class="card-body">
              <div class="row">
                <div class="col-md-4 border-right">
                    <img src="{{asset('assets/uploads/products/'.$products->image)}}" class="w-100">
                </div>
                <div class="col-md-8">
                   
                  
                    <label class="fw-bold"> Selling Price : $ {{$products->selling_price}}</label>
           
                    <hr>
                   
                    <div class="row mt-2">
                        <div class="col-md-3">
                            <input type="hidden" value="{{$products->id}}" class="prod_id">
                            <label for="Quantity">Quantity </label>
                            <div class="input-group text-center mb-3">
                                <button class="input-group-text decrement-btn">-</button>
                                <input type="text" name="quantity qty-input" value="1" class="form-control text-center qty-input">
                                <button class="input-group-text increment-btn">+</button>
                            </div>
                        </div>
                        <div class="col-md-10">
                            <br/>
                            @if($products->qty>0)
                            
                            <button type="button" class="btn btn-primary me-5 addToCartBtn float-start"> Add to Cart <i class="fa fa-shopping-cart"></i> </button>

                            @endif
                        </div>
                    </div>
                 </div>
            </div>
                <div class="col-md-12">
                    <hr>
                    <h3>Description</h3>
                    <p class="mt-3">
                        {{$products->description}}
                    </p>
                                      
                   
                </div>
            </div>
          </div>
        </div>
    </div>
@endsection
