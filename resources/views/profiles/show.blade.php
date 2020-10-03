@component('components/app')

<header class="mb-6 relative"> 
  <div class="mb-6 relative">
    <img src="/images/default-profile-banner.jpg" alt="" class="mb-2">
    <img  src="{{ $user->avatar}}"
             alt=""
             class="rounded-full mr-2 absolute bottom-0 transform -tanslate-x-1/2 translate-y-1/2"
             style="width:150px; left:39%">
             </div>
          
    <div class="flex justify-between items-center mb-6">
        <div style="max-width:270px; ">
            <h2 class="font-bold text-2xl mb-0">{{$user->name}}</h2>
            <p class="text-sm">Joined {{$user->created_at->diffForHumans() }}</p>
        </div>
            <div class="flex">
           
           
                     @can('edit',$user) 

                <a href="{{$user->path('edit')}}" 
        class=" rounded-full border border-gray-300 py-2 px-2 text-black text-xs mr-2"
                >Edit Profile</a>
                @endcan
                @unless(current_user()->is($user))
                <form method="POST" action="/profiles/{{$user->username}}/follow">
                @csrf
                     <button
                type="submit" 
        class="bg-blue-500 rounded-full shadow py-2 px-4 text-white text-xs"
                >{{current_user()->following($user) ? 'Unfollow Me' : 'Follow Me'}}</button> 
            </form>
            @endunless
        </div>
    </div>
    <p class="text-sm">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Minima expedita labore, commodi magni quae asperiores, rerum est, excepturi ipsum nobis voluptatem ipsa illum laboriosam id neque consequuntur similique quaerat nemo.</p>

       

</header>




@include('_timeline',[
    'tweets'=> $tweets
    ])

@endcomponent
