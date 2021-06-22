<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    function register(Request $requ)
    {
        $user=new User;
        $user->name=$requ->input('name');
        $user->email=$requ->input('email');
        $user->password=Hash::make($requ->input('password'));
        $user->save();
        
        return $user;
    }

    function login(Request $requ)
    {
        $user=User::where('email',$requ->email)->first();
        if(!$user||!Hash::check($requ->password,$user->password))
        {
            return response([
                'error'=>["Email or Password is not Matched"]
            ]);
        }
        return $user;
    }
}
