<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Hash;

class ProfilesController extends Controller
{
    //
    public function show(User $user){
        return view('profiles.show',[
            'user'=>$user,
            'tweets'=>$user->tweets()
            ->withLikes()
            ->paginate(50),
        ]);
    
}

public function edit(User $user)
{
       
    return view('profiles.edit',compact('user'));
}

public function update(User $user){
     $attributes=  request()->validate([
           'username'=> ['string','required','max:255',Rule::unique('users')->ignore($user)],
           'name' =>['string','required','max:255'],
           'avatar'=> ['file'],
           'email'=> ['string','required','email','max:255',Rule::unique('users')->ignore($user)],
           'password'=>['string','required','min:8','max:255','confirmed']
       ]);
    
            if(request('avatar')){
                $attributes['avatar']= request('avatar')->store('avatars');

            }
            $attributes['password'] = Hash::make(request('password'));


       $user->update($attributes);
            return redirect($user->path());
           }
}
