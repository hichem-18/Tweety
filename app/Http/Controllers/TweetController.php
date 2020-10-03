<?php

namespace App\Http\Controllers;
use App\Tweet;

class TweetController extends Controller
{
    //
    public function store(){
       $attributes =  request()->validate(['body' => 'required|max:255']);
        Tweet::create([
            'user_id'=> auth()->id(),
           'body'=> $attributes['body']
        ]);
        return redirect()->route('home');
    }
    public function index()
    {

        return view('tweets.index',[
            'tweets' =>auth()->user()->timeline()
        ]);
    }
}
