<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
//use Redirect,Response,File;

class ProductController extends Controller
{
    function addProduct(Request $requ)
    {
      
        $product =new Product;
        $product->name=$requ->input('name');
        $product->price=$requ->input('price');
        $product->description=$requ->input('description');
        $product->file_path=$requ->file('file')->store('products');
        $product->save();
        return $product;
        
    }

    function list()
    {
        return product::all();
    }

    function delete($id)
    {
        $result=Product::where('id',$id)->delete();
        if($result)
        {
            return["result"=>"Product has been deleted"];
        }
        else{
            return["result"=>"operation failed"];
        }
    }

    function getProduct($id)
    {
        return Product::find($id);
    }

    function updateProduct(Request $requ)
    {
        $id=$requ->id;
        $product =Product::find($id);
        $product->name=$requ->input('name');
        $product->price=$requ->input('price');
        $product->description=$requ->input('description');
        if($requ->file(file))
        {
             $product->file_path=$requ->file('file')->store('products');
        }
        $product->save();
        return $product;
    }

    function search($data)
    {
        return Product::where('name','LIKE',"%$data%")->get();
    }
}
