@extends('layouts/AdmincontentLayoutMaster')

@section('title', 'Input')

@section('vendor-style')
  <!-- vendor css files -->
  <link rel="stylesheet" href="{{ asset(mix('vendors/css/forms/select/select2.min.css')) }}">
@endsection

@section('content')
<!-- Basic Horizontal form layout section start -->
<script src="https://cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script>
<section id="basic-horizontal-layouts">
  <div class="row">
    <div class="col-md-6 col-12">
      <div class="card">
        <div class="card-header">
        </div>

         @if(session('status'))
          <h6 class="alert alert-success">{{ session('status')}}</h6>
          @endif
        <br/>
        <p style="position: relative;left:120px;font-size:18px;font-weight:bold;">Upload posts for the blog</p>

      <div class="card-body">


      <form class="form form-horizontal" action="/add-post" method="POST" enctype="multipart/form-data">
                @csrf

            <div class="row">
              <div class="col-12">
                <div class="mb-1 row">
                  <div class="col-sm-3">
                    <label class="col-form-label" for="title"></label>
                  </div>
                  <div class="col-sm-9">
                    <input type="text" id="title"  class="form-control" name="title" placeholder="Title" style="position:relative;right:122px;width:459px;"/>
                  </div>
                </div>
              </div>


          <div class="col-md-6 mb-1">
              <label class="form-label" for="select2-multiple" style="position:relative;left:6px;">Categories</label>

              <select class="select2 form-select"  name="category_id" multiple="multiple" id="default-select-multi">
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
                    <input type="file"  name="photo" class="form-control" style="position:relative;right:122px;width:460px;">
                  </div>
                </div>
              </div>

              <div class="col-12">
                <div class="mb-1 row">
                  <div class="col-sm-3">
                    <label class="col-form-label" for="summary"></label>
                  </div>
                  <div class="col-sm-9">
                    <input type="text" id="summary" class="form-control" name="summary" placeholder="summary" style="position: relative;right:122px;width:460px;" />
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
                  style="position: relative;left:145px"
                ></textarea>
              </div>
            </div>
            <div class="col-sm-9 offset-sm-3">
                <button type="submit" class="btn btn-primary me-1" style="position:relative;left:65px;">Upload</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
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


@endsection

@section('vendor-script')
  <!-- vendor files -->
  <script src="{{ asset(mix('vendors/js/forms/select/select2.full.min.js')) }}"></script>
@endsection
@section('page-script')
  <!-- Page js files -->
  <script src="{{ asset(mix('js/scripts/forms/form-select2.js')) }}"></script>

  <script src="{{ asset(mix('js/scripts/forms/form-tooltip-valid.js'))}}"></script>

@endsection
