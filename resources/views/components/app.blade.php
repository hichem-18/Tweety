@component('components.master')






<section class="px-8">
             @if (auth()->check())
         <main class="container mx-auto">
         <div class="flex justify-between">
    <div class="w-32">
        @include('_sidebar-links')
    </div>
    @endif
        <div class="flex-1 mx-10" style="max-width:700px">
        {{$slot}}

    </div>
    @if (auth()->check())

    <div class="w-1/6  rounded-lg p-4">
    @include('_friends-list')

    </div>
    @endif
</div>

        </main>
         </section>
@endcomponent