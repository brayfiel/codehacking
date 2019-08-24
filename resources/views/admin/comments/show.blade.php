@extends('layouts.admin');

@section('content')

  @if(count($comments))

    <div class="row">
      <h1>Comments</h1>
    </div>

    <div class="row">
      <table class="table">
        <thead>
          <tr>
            <th>Id</th>
            <th>Author</th>
            <th>Email</th>
            <th>Comment</th>
            <th>Post</th>
            <th>Status</th>
            <th>Created</th>
            <th>Updated</th>
          </tr>
        </thead>
        <tbody>
          @foreach($comments as $comment)
            <tr>
              <td>{{ $comment->id }}</td>
              <td>{{ $comment->author }}</td>
              <td>{{ $comment->email }}</td>
              <td>{{ $comment->body }}</td>
              <td><a href="{{ route('home.post', $comment->post->id) }}">{{ $comment->post->title }}</a></td>
              <td>
                {!! Form::open(['method'=>'PATCH', 'action'=>['PostCommentsController@update', $comment->id]]) !!}
                  @if($comment->is_active == 1)
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
                {!! Form::open(['method'=>'DELETE', 'action'=>['PostCommentsController@destroy', $comment->id]]) !!}
                  <div class="form-group">
                    {!! Form::submit('Delete', ['class'=>'btn btn-danger']) !!}
                  </div>
                {!! Form::close() !!}
              </td>
              <td>{{ $comment->created_at }}</td>
              <td>{{ $comment->updated_at }}</td>
            </tr>
          @endforeach
        </tbody>
      </table>
    </div>

  @else

    <div class="row">
      <h1 class="text-center">No Comments</h1>
    </div>

  @endif

@endsection
