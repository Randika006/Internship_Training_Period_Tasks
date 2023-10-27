<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

<div class="navbar-header d-xl-block d-none">
    <ul class="nav nav-tabs">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/post">Blog Post</a>
        </li>
     </ul>
</div>
<br/>

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
              <span class="text-muted ms-50 me-25">|</span>
              <small class="text-muted">{{ $category->published_at }}</small>
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
          <p class="card-text blog-content-truncate">{{ $category->content }}</p>

          <hr />
          <div class="d-flex justify-content-between align-items-center">
            <a href="{{ asset('page/blog/detail#blogComment') }}">
            </a>

            <a href="{{ url('read-more/'.$category->id)}}" class="fw-bold">Read More</a>

            <a href="delete/{{ $category->id }}" class="fw-bold">Delete</a>

            <a href="{{ url('edit-post/'.$category->id)}}" class="fw-bold">Update</a>

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
          <li class="page-item"><a class="page-link" href="#">1</a></li>
          <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item active" aria-current="page"><a class="page-link" href="#">4</a></li>
          <li class="page-item"><a class="page-link" href="#">5</a></li>
          <li class="page-item"><a class="page-link" href="#">6</a></li>
          <li class="page-item"><a class="page-link" href="#">7</a></li>
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
    <div class="text-center p-3" style="background-color: rgb(235, 217, 217);">
      © 2020 Copyright:
      <a class="text-dark" href="#">COPYRIGHT © 2023Pixinvent, All rights Reserved</a>
    </div>
    <!-- Copyright -->
  </footer>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

<!--/ Blog List -->
{{--@endsection--}}


