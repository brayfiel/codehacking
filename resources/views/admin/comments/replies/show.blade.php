@extends('layouts.admin');

@section('content')

  @if(count($replies))

    <div class="row">
      <h1>Replies</h1>
    </div>

    <div class="row">
      <table class="table">
        <thead>
          <tr>
            <th>Id</th>
            <th>Author</th>
            <th>Email</th>
            <th>Reply</th>
            <th>Post</th>
            <th>Status</th>
            <th>Created</th>
            <th>Updated</th>
          </tr>
        </thead>
        <tbody>
          @foreach($replies as $reply)
            <tr>
              <td>{{ $reply->id }}</td>
              <td>{{ $reply->author }}</td>
              <td>{{ $reply->email }}</td>
              <td>{{ $reply->body }}</td>
              <td><a href="{{ route('home.post', $reply->comment->post->id) }}">{{ $reply->comment->post->title }}</a></td>
              <td>
                {!! Form::open(['method'=>'PATCH', 'action'=>['CommentRepliesController@update', $reply->id]]) !!}
                  @if($reply->is_active == 1)
                    <input type="hidden" name="is_active" value="0">
                    <div class="form-group">
                      {!! Form::submit('Unapprove', ['class'=>'btn btn-success']) !!}
                    </div>
                  @else
                    <input type="hidden" name="is_active" value="1">
                    <div class="form-group">
                      {!! Form::submit('Approve', ['class'=>'btn btn-info']) !!}
                    </div>
                  @endif
                {!! Form::close() !!}
              </td>
              <td>
                {!! Form::open(['method'=>'DELETE', 'action'=>['CommentRepliesController@destroy', $reply->id]]) !!}
                  <div class="form-group">
                    {!! Form::submit('Delete', ['class'=>'btn btn-danger']) !!}
                  </div>
                {!! Form::close() !!}
              </td>
              <td>{{ $reply->created_at }}</td>
              <td>{{ $reply->updated_at }}</td>
            </tr>
          @endforeach
        </tbody>
      </table>
    </div>

  @else

    <div class="row">
      <h1 class="text-center">No Replies</h1>
    </div>

  @endif

@endsection
