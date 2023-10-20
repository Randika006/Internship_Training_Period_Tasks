<style>
    .disable-link{
        display: none;
    }

    .w-5{
        display: none;
    }

 </style>

<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>

    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    {{ __("You're logged in!") }}
                </div>
            </div>
        </div>
    </div>
</x-app-layout>

{{--@dd(Auth::user()->id);--}}

<div class="navbar-header d-xl-block d-none">
    <ul class="nav nav-tabs">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/post">Blog Post</a>
        </li>

          <li class="nav-item">
            <a class="nav-link" href="/about">About Us</a>
          </li>

     </ul>
</div>
<br/>

{{--@dd($role);--}}
{{--@dd(Auth::user()->hasRole('user'))--}}



<div class="blog-list-wrapper">
  <!-- Blog List Items -->
  <div class="row">
  @foreach ($categories as $category)
    <div class="col-md-6 col-12">
      <div class="card">
        <a href="/post">
          <img class="card-img-top img-fluid" src="{{asset('storage/blog/'.$category->photo)}}" alt="Blog Post pic" />
        </a>
        <div class="card-body">
          <h4 class="card-title">
            <a href="#" class="blog-title-truncate text-body-heading">{{ $category->title }}</a
            >
          </h4>
          <div class="d-flex">
            <div class="avatar me-50">
              <img src="{{asset('storage/blog/'.$category->photo)}}" alt="Avatar" width="24" height="24" />
            </div>
            <div class="author-info">
              <small class="text-muted me-25"></small>
              <small><a href="#" class="text-body"></a></small>
              <span class="text-muted ms-50 me-25">Current Date|</span>
              {{--<small class="text-muted">{{ date('m/d/Y', strtotime($category->published_at))}}</small>--}}

              <small class="text-muted">{{changeDateFormate(date('Y-m-d'),'m/d/Y')}}</small>
            </div>
          </div>
          <div class="my-1 py-25">
            <a href="#">
              <span class="badge rounded-pill badge-light-info me-50">Quote</span>
            </a>
            <a href="#">
              <span class="badge rounded-pill badge-light-primary">Education</span>
            </a>
          </div>
          <p class="card-text blog-content-truncate">{!!$category->content!!}</p>
          <hr />
          <div class="d-flex justify-content-between align-items-center">
            <a href="{{ asset('page/blog/detail#blogComment') }}">
            </a>

            <a href="{{ url('read-more/'.$category->id)}}" class="fw-bold">Read More</a>

            @if (Auth::user()->hasRole('user'))

              <a href="delete/{{ $category->id }}" class="fw-bold disable-link">Delete</a>
              <a href="{{ url('edit-post/'.$category->id)}}" class="fw-bold disable-link">Update</a>
            @else
              <a href="delete/{{ $category->id }}" class="fw-bold">Delete</a>
              <a href="{{ url('edit-post/'.$category->id)}}" class="fw-bold">Update</a>

            @endif


            </div>
        </div>
      </div>
    </div>

@endforeach
    </div>


  <!--/ Blog List Items -->

  <!-- Pagination -->
  <div class="row">
    <div class="col-12">
      <nav aria-label="Page navigation">
        <ul class="pagination justify-content-center mt-2">
          <li class="page-item prev-item"><a class="page-link" href="#"></a></li>
          <li class="page-item"><a class="page-link" href="#">{{$categories->links()}}</a></li>
          <li class="page-item next-item"><a class="page-link" href="#"></a></li>
        </ul>
      </nav>
    </div>
  </div>
  <!--/ Pagination -->

</div>
<!-- Footer -->
<footer class="bg-light text-center text-lg-start">
    <!-- Copyright -->
    <div class="text-center p-3" style="background-color: rgb(233, 223, 223);">
      © 2020 Copyright:
      <a class="text-dark" href="#">COPYRIGHT © 2023Pixinvent, All rights Reserved</a>
    </div>
    <!-- Copyright -->
  </footer>

<!--/ Blog List -->
{{--@endsection--}}








