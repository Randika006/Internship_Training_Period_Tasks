<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<link href="/css/menu.css" rel="stylesheet">

<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}

            <a href="/notify" class="notify">show notifications</a>

            <a href="/blog" class="view_blog">blog</a>

        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-light-subtle text-emphasis-light">
                <div class="p-6 text-gray-900 bg-primary text-white">
                     @foreach (auth()->user()->unreadNotifications as $notification )
                        <div class="bg-blue-300 p-3 m-2">
                        </b>{{$notification->data['name']}}<b> started following you !!!

                           <a href="{{ route('markasred',$notification->id) }}" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">Marks and Read</a>

                        </div>

                     @endforeach
                </div>
               <p><b>A blog is a type of website that is updated regularly with new content. Most blogs contain short, informal articles called blog posts.</b></p>

            </div>
        </div>
    </div>

</x-app-layout>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>





