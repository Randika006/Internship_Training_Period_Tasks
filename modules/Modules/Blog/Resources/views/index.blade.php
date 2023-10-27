@extends('blog::layouts.master')

@section('content')
    <h1>This is a testing blade</h1>

    <p>
        This view is loaded from module: {!! config('blog.name') !!}
    </p>

    @forelse ($blogs as $blog )
    <p>{{$blog->id.''.$blog->title}}</p>

    @empty
         <p>No record found</p>
    @endforelse


@endsection
