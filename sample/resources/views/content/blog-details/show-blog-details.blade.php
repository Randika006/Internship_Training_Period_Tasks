{{--@extends('layouts/AdmindetachedLayoutMaster')

@section('title', 'Display Blog Detail')

@section('page-style')
<link rel="stylesheet" type="text/css" href="{{ asset('css/base/pages/page-blog.css') }}" />

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link href="/css/treeview.css" rel="stylesheet">

@endsection

@section('content-sidebar')
@include('/content/pages/page-blog-sidebar')
@endsection

@section('content')--}}

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link href="/css/treeview.css" rel="stylesheet">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">


<div class="navbar-header d-xl-block d-none">
    <ul class="nav nav-tabs">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/dashboard">Blog list</a>
        </li>
     </ul>
</div>
<br/>
<!-- Blog Detail -->
<div class="blog-detail-wrapper">
  <div class="row">
    <!-- Blog -->
    <div class="col-12">
      <div class="card">
        <img
          src="{{asset('storage/blog/'.$blog_post->photo)}}"
          class="img-fluid card-img-top"
          alt="Blog Detail Pic"
        />
        <div class="card-body">
          <h4 class="card-title">{{$blog_post->title}}</h4>
          <div class="d-flex">
            <div class="avatar me-50">
              <img src="{{asset('storage/blog/'.$blog_post->photo)}}" alt="Avatar" width="24" height="24" />
            </div>
            <div class="author-info">
              <small class="text-muted me-25"></small>
              <small><a href="#" class="text-body"></a></small>
              <span class="text-muted ms-50 me-25">Published_at|</span>
              <small class="text-muted">{{ date('m/d/Y', strtotime($blog_post->published_at))}}</small>

            </div>
          </div>
          <div class="my-1 py-25">
            <a href="#">
              <span class="badge rounded-pill badge-light-danger me-50"></span>
            </a>
            <a href="#">
              <span class="badge rounded-pill badge-light-warning"></span>
            </a>
          </div>
          <p class="card-text mb-2">
            {!!$blog_post->content!!}
          </p>
          <!--<h4 class="mb-75"></h4>
          <ul class="p-0 mb-2">
            <li class="d-block">
              <span class="me-25">-</span>
              <span></span>
            </li>
            <li class="d-block">
              <span class="me-25">-</span>
              <span></span>
            </li>
            <li class="d-block">
              <span class="me-25">-</span>
              <span></span>
            </li>
            <li class="d-block">
              <span class="me-25">-</span>
              <span></span>
            </li>
            <li class="d-block">
              <span class="me-25">-</span>
              <span></span>
            </li>
            <li class="d-block">
              <span class="me-25">-</span>
              <span></span>
            </li>
          </ul>-->
          <div class="d-flex align-items-start">
            <div class="avatar me-2">
              <img src="{{asset('storage/blog/'.$blog_post->photo)}}" width="60" height="60" alt="Avatar" />
            </div>
            <div class="author-info">
              <h6 class="fw-bolder">Summary</h6>
              <p class="card-text mb-0">
                {{$blog_post->summary}}
             </p>
            </div>
          </div>
          <hr class="my-2" />
          <div class="d-flex align-items-center justify-content-between">
            <!--<div class="d-flex align-items-center">
              <div class="d-flex align-items-center me-1">
                <a href="#" class="me-50">
                  <i data-feather="message-square" class="font-medium-5 text-body align-middle"></i>
                </a>
                <a href="#">
                  <div class="text-body align-middle">19.1K</div>
                </a>
              </div>
              <div class="d-flex align-items-center">
                <a href="#" class="me-50">
                  <i data-feather="bookmark" class="font-medium-5 text-body align-middle"></i>
                </a>
                <a href="#">
                  <div class="text-body align-middle">139</div>
                </a>
              </div>
            </div>
            <div class="dropdown blog-detail-share">
              <i
                data-feather="share-2"
                class="font-medium-5 text-body cursor-pointer"
                role="button"
                data-bs-toggle="dropdown"
                aria-haspopup="true"
                aria-expanded="false"
              ></i>
              <div class="dropdown-menu dropdown-menu-end">
                <a href="#" class="dropdown-item py-50 px-1">
                  <i data-feather="github" class="font-medium-3"></i>
                </a>
                <a href="#" class="dropdown-item py-50 px-1">
                  <i data-feather="gitlab" class="font-medium-3"></i>
                </a>
                <a href="#" class="dropdown-item py-50 px-1">
                  <i data-feather="facebook" class="font-medium-3"></i>
                </a>
                <a href="#" class="dropdown-item py-50 px-1">
                  <i data-feather="twitter" class="font-medium-3"></i>
                </a>
                <a href="#" class="dropdown-item py-50 px-1">
                  <i data-feather="linkedin" class="font-medium-3"></i>
                </a>
              </div>
            </div>-->
          </div>
        </div>
      </div>
    </div>
    <!--/ Blog -->

    <!-- Blog Comment -->
    <div class="col-12 mt-1" id="blogComment">
      <h6 class="section-label mt-25">Comment</h6>
      <div class="card">
        <div class="card-body">
          <div class="d-flex align-items-start">
            <div class="avatar me-75">
              <img src="{{asset('images/portrait/small/avatar-s-9.jpg')}}" width="38" height="38" alt="Avatar" />
            </div>
            <div class="author-info">
              <h6 class="fw-bolder mb-25">Chad Alexander</h6>
              <p class="card-text">{{changeDateFormate(date('Y-m-d'),'m/d/Y')}}</p>
              <h3>All Comments of the post</h3>
              <@foreach($comments as $comment)
              <p class="card-text">
                {{$comment->content}}
              </p>
              @endforeach
              <a href="#">
                <div class="d-inline-flex align-items-center">
                  <i data-feather="corner-up-left" class="font-medium-3 me-50"></i>
                  <span>Reply</span>
                </div>
               </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--/ Blog Comment -->
    <div class="col-12 mt-1" id="blogComment">
        <h6 class="section-label mt-25">Comment</h6>
        <div class="card">
          <div class="card-body">
            <div class="d-flex align-items-start">
              <div class="avatar me-75">
                <img src="{{asset('images/portrait/small/avatar-s-9.jpg')}}" width="38" height="38" alt="Avatar" />
              </div>
              <div class="author-info">
                <h6 class="fw-bolder mb-25">Chad Alexander</h6>
                <p class="card-text">{{changeDateFormate(date('Y-m-d'),'m/d/Y')}}</p>

                <h3>Reply Comments List</h3>
             <ul id="tree1">
               <li>
                @foreach($reply_comments as $reply_comment)
                  <img src="{{asset('images/portrait/small/avatar-s-9.jpg')}}" width="38" height="38" alt="Avatar" />
                  <h6 class="fw-bolder mb-25">Chad Alexander</h6>
                 <p class="card-text">{{$blog_post->published_at}}</p>
                 <p class="card-text">{{$reply_comment->content}}</p>

                  <p class="card-text">
                     @if(count($reply_comment->childs))
				        @include('manageChild',['childs' => $reply_comment->childs])
				     @endif
                     <button type="button" onClick="scrollPageDown()" class="btn btn-primary">Reply</button>
                 </p>
               </li>
               @endforeach
             </ul>


                <!--<a href="#down">
                  <div class="d-inline-flex align-items-center">
                    <i data-feather="corner-up-left" class="font-medium-3 me-50"></i>
                    <span>Reply</span>
                  </div>
                </a>-->

              </div>
            </div>
          </div>
        </div>
      </div>


        <!-- Leave a Blog Comment -->

    <div class="container">
          @if(session('status'))
           <h6 class="alert alert-success">{{ session('status')}}</h6>
          @endif
    </div>

   <div class="container">
        @if ($errors->any())
         <div class="alert alert-danger">
           <ul>
              @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
              @endforeach
             </ul>
          </div>
        @endif
    </div>

    <div class="col-12 mt-1">
      <h6 class="section-label mt-25">Leave a Comment</h6>
      <div class="card">
        <div class="card-body">
          <form  action="{{url('reply-comment/'.$blog_post->id)}}"   class="form" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="row">

               @foreach($reply_comments as $reply_comment)
                <div class="col-12">
                    <input type="hidden" class="form-control mb-2" value="{{$reply_comment->id}}" rows="4" name="parent_id" placeholder="Comment"></textarea>
                </div>
                @endforeach

              <div class="col-12">
                <textarea type="text" id="content" class="form-control mb-2" rows="4" name="content" placeholder="Comment"></textarea>
              </div>

              <div class="col-12">
                <button type="submit" class="btn btn-primary">Post Comment</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
    <!--/ Leave a Blog Comment -->
  </div>
</div>



<br/><br/><br/>
      <br/><br/><br/>

<!-- Footer -->
<footer class="bg-light text-center text-lg-start">
    <!-- Copyright -->
    <div class="text-center p-3" style="background-color: rgb(253, 249, 249);">
      © 2020 Copyright:
      <a class="text-dark" href="#">COPYRIGHT © 2023Pixinvent, All rights Reserved</a>
    </div>
    <!-- Copyright -->
  </footer>

<script>
    function scrollPageDown() {
        // Scroll down the page when the button is clicked
        window.scrollBy(0, window.innerHeight);
    }
</script>

<script src="/js/treeview.js"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>




<!--/ Blog Detail -->


