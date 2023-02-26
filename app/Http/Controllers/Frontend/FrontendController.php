<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use App\Models\Rating;
use Illuminate\Http\Request;

class FrontendController extends Controller
{
    public function index()
    {
      
        return view('frontend.index');
    }
    public function category()
    {
        $category =Category::where('status','1')->get();
        return view('frontend.category',compact('category'));

    }
    
     public function viewcategory($slug)
     {
         if(Category::where('slug',$slug)->exists())
         {
            $category=Category::where('slug',$slug)->first();
            $products=Product::where('cate_id', $category->id)->where('status','0')->get();
            return view('frontend.products.index',compact('category','products'));
         }
         else
         {
             return redirect('/')->with('status',"Slug dosen't exists");
         }
     }
     public function productview($cate_slug,$prod_slug)
     {
        if(Category::where('slug',$cate_slug)->exists())
        {
            if(Product::where('slug',$prod_slug)->exists())
            {
                $products=Product::where('slug',$prod_slug)->first();
            }
            else{
                return redirect('/')->with('status',"The link is broken");

            }
        }
        else{
            return redirect('/')->with('status',"No such category found");

        }
     }

    
}
