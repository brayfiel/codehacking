@extends('layouts.blog-post')

@section('content')

  <!-- Blog Post -->

  <!-- Title -->
  <div class="row">
    <h1>{{ $post->title }}</h1>
  </div>


  <!-- Author -->
  <p class="lead">
    by <a href="#">{{ $post->user->name }}</a>
  </p>

  <hr>

  <!-- Date/Time -->
  <p><span class="glyphicon glyphicon-time"></span> Posted {{ $post->created_at->diffForHumans() }}</p>

  <hr>

  <!-- Preview Image -->
  <img class="img-responsive" src="{{ $post->photo ? $post->photo->file : $post->photoPlaceholder() }}" alt="">

  <hr>

  <!-- Post Content -->
  <p class="lead">{!! $post->body !!}</p>

  <hr>

  @if(Session::has('comment_message'))
    {{ session('comment_message') }}
  @endif

  <!-- Blog Comments -->
  @if(Auth::check())

    <!-- Comments Form -->
    <div class="well">
      <h4>Leave a Comment:</h4>
      {{ Form::open(['method'=>'POST', 'action'=>'PostCommentsController@store']) }}
        {!! Form::hidden('post_id', $post->id) !!}
        <div class="form-group">
          {!! Form::label('body', 'Comment:') !!}
          {!! Form::textarea('body', null, ['class'=>'form-control', 'rows'=>3]) !!}
        </div>
        <div class="form-group">
          {!! Form::submit('Submit Comment', ['class'=>'btn btn-primary']) !!}
        </div>
      {{ Form::close() }}
    </div>
  @endif

  <hr>

  <!-- Posted Comments -->
  @if(count($comments) > 0)

    <!-- Comment -->
    @foreach($comments as $comment)

      <div class="media">
        <a class="pull-left" href="#">
          {{-- <img height="64" class="media-object" src="/codehacking/public/images/{{ $comment->photo }}" alt=""> --}}
          <img height="64" class="media-object" src="{{ Auth::user()->gravatar }}" alt="">
        </a>
        <div class="media-body">
          <h4 class="media-heading">{{ $comment->author }}
            <small>
              Created: {{ $comment->created_at->diffForHumans() }}
              Last Updated: {{ $comment->updated_at->diffForHumans() }}
            </small>
          </h4>
          <p>{{ $comment->body }}</p>

          @if(count($comment->replies) > 0)
            @foreach($comment->replies as $reply)
              @if($reply->is_active == 1)
                <!-- Nested Comment -->
                <div id="nested-comment" class="media">
                  <a class="pull-left" href="#">
                    <img height="64" class="media-object" src="/codehacking/public/images/{{ $reply->photo }}" alt="">
                  </a>
                  <div class="media-body">
                    <h4 class="media-heading">{{ $reply->author }}
                      <small>
                          Created: {{ $reply->created_at->diffForHumans() }}
                          Last Updated: {{ $reply->updated_at->diffForHumans() }}
                      </small>
                    </h4>
                    {{ $reply->body }}
                  </div>

                  <div class="comment-reply-container">
                    <button class="toggle-reply btn btn-rpimary pull-right">Reply</button>
                    <div class="comment-reply col-sm-9">
                      {{ Form::open(['method'=>'POST', 'action'=>'CommentRepliesController@createReply']) }}
                        {!! Form::hidden('comment_id', $comment->id) !!}
                        <div class="form-group">
                          {!! Form::label('body', 'Reply:') !!}
                          {!! Form::textarea('body', null, ['class'=>'form-control', 'rows'=>1]) !!}
                        </div>
                        <div class="form-group">
                          {!! Form::submit('Create Reply', ['class'=>'btn btn-primary']) !!}
                        </div>
                      {{ Form::close() }}
                    </div>
                  </div>
                </div>
                <!-- End Nested Comment -->
              @endif
            @endforeach
          @else
            <h1 class="text-center">No Replies</h1>
          @endif
        </div>
      </div>

    @endforeach

  @endif

@endsection

@section('scripts')

  <script>
    $(".comment-reply-container .toggle-reply").click(function() {
      $(this).next().slideToggle("slow");
    });
  </script>

@endsection
