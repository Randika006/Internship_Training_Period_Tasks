
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">


<script src="https://cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script>

<div class="navbar-header d-xl-block d-none">
    <ul class="nav nav-tabs">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/dashboard">Blog List</a>
        </li>
     </ul>
</div>
<br/>

<br/><br/>
<br/>
<!-- Background image -->
<div class="container">
   @if(session('status'))
   <h6 class="alert alert-success">{{ session('status')}}</h6>
   @endif
</div>

<br/>


<section id="basic-horizontal-layouts" style="position:relative;left:300px;">
  <div class="row">
    <div class="col-md-6 col-12">
      <div class="card bg-primary-subtle text-emphasis-primary border border-dark">
        <div class="card-header" >
        </div>

        <br/>
        <p style="position: relative;left:200px;font-size:18px;font-weight:bold;">Upate posts for the blog</p>

      <div class="card-body">


      <form class="form form-horizontal" action="{{url('update-post/'.$blog_post->id)}}" method="POST" enctype="multipart/form-data">
                @csrf

            <div class="row">
              <div class="col-12">
                <div class="mb-1 row">
                  <div class="col-sm-3">
                    <label class="col-form-label" for="title"></label>
                  </div>
                  <div class="col-sm-9">
                    <input type="text" id="title" value ="{{$blog_post->title}}"  class="form-control" name="title" placeholder="Title" style="position:relative;right:156px;width:459px;"/>
                  </div>
                </div>
              </div>


          <div class="col-md-6 mb-1">
              <label class="form-label"  for="select2-multiple" style="position:relative;left:20px;">Categories</label>


              <select class="select2 form-select" name="category_id"  multiple="multiple" id="default-select-multi" style="position:relative;left:3px;">

                @foreach ($select_categories as $select_category)
                <option value="{{ $select_category->id }}" selected  disabled>{{ $select_category->title }}</option>
                @endforeach

               @foreach ($categories as $category)
                 <option value="{{ $category->id }}">{{ $category->title }}</option>
                @endforeach

               </select>
            </div>

              <div class="col-12">
                <div class="mb-1 row">
                  <div class="col-sm-3">
                    <label class="col-form-label" for="contact-info"></label>
                </div>
                  <div class="col-sm-9">

                    <input type="file"  name="photo"  value ="{{$blog_post->photo}}"   class="form-control" style="position:relative;right:162px;width:460px;">
                    <img class="card-img-top img-fluid" src="{{asset('storage/blog/'.$blog_post->photo)}}" alt="Blog Post pic" />

                  </div>
                </div>
              </div>

              <div class="col-12">
                <div class="mb-1 row">
                  <div class="col-sm-3">
                    <label class="col-form-label" for="summary"></label>
                  </div>
                  <div class="col-sm-9">
                    <input type="text" id="summary" value ="{{$blog_post->summary}}" class="form-control" name="summary" placeholder="summary" style="position: relative;right:162px;width:460px;" />
                  </div>
                </div>
              </div>
              <div class="col-12">
              <div class="mb-1">
                <textarea
                  class="ckeditor form-control"
                  id="exampleFormControlTextarea1"
                  rows="3"
                  placeholder="Description"
                  name="content"
                  style="position: relative;left:148px"
                >{{$blog_post->content}}</textarea>
              </div>
            </div>
            <div class="col-sm-9 offset-sm-3">
                <button type="submit" class="btn btn-primary me-1" style="position:relative;left:65px;">Update</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
<br/><br/>
<br/><br/><br/>


<div class="col-12">
<footer class="bg-light text-center text-lg-start">
    <!-- Copyright -->
    <div class="text-center p-3" style="background-color: rgb(255, 252, 252);position:relative;right:278px;width:1323px;">
      © 2020 Copyright:
      <a class="text-dark" href="#">COPYRIGHT © 2023Pixinvent, All rights Reserved</a>
    </div>
    <!-- Copyright -->
</footer>
</div>

<script>
 CKEDITOR.replace( ‘content’,{
 height:10,
 width:12,
 position: relative,
 right:45px,
 });
 </script>

</section>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
