
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" />
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link href="/css/treeview.css" rel="stylesheet">

<div class="container">
    <div class="panel panel-primary">
        <div class="panel-heading">Manage Comments</div>
          <div class="panel-body">
              <div class="row">
                  <div class="col-md-6">
                      <h3>Comments</h3>
                    <ul id="tree1">
                        @foreach($comments as $comment)
                            <li>
                                {{ $comment->content }}
                                @if(count($comment->childs))
                                    @include('manageChild',['childs' => $comment->childs])
                                @endif
                            </li>
                        @endforeach
                    </ul>
                  </div>
                    <div class="col-md-6">

                        @if(session('status'))
                        <h6 class="alert alert-success">{{ session('status')}}</h6>
                        @endif

                        <div class="col-12 mt-1">
                          <h6 class="section-label mt-25">Leave a Comment</h6>
                          <div class="card">
                            <div class="card-body">
                              <form  action="/add-comment"   class="form" method="POST" enctype="multipart/form-data">
                                @csrf
                                <div class="row">
                                  <div class="col-12">
                                    <textarea type="text" class="form-control mb-2" rows="4" name="content" placeholder="Comment"></textarea>
                                  </div>
                                  <div class="col-12">
                                    <button type="submit" class="btn btn-primary">Post Comment</button>
                                  </div>
                                </div>
                              </form>
                            </div>
                          </div>
                        </div>

                  </div>
              </div>


          </div>
    </div>
</div>
<script src="/js/treeview.js"></script>







