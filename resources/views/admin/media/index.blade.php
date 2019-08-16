@extends('layouts.admin');

@section('content')

  <div class="row">
    <h1>Media</h1>
  </div>

  <div class="row">
    <table class="table">
      <thead>
        <tr>
          <th>Id</th>
          <th>Name</th>
          <th>Image</th>
          <th>Created</th>
          <th>Updated</th>
        </tr>
      </thead>
      <tbody>
        @foreach ($photos as $photo)
          <tr>
              <td>{!! $photo->id !!}</td>
              <td>{!! $photo->file !!}</td>
              <td><img height="50" src="{!! $photo->file !!}" alt="Not Available"></td>
              <td>{!! $photo->created_at ? $photo->created_at : 'Not Available' !!}</td>
              <td>{!! $photo->updated_at ? $photo->updated_at : 'Not Available' !!}</td>
              <td>
                {!! Form::open(['method'=>'DELETE', 'action'=>['AdminMediasController@destroy', $photo->id]]) !!}
                  <div class="form-group">
                    {!! Form::submit('Delete', ['class'=>'btn btn-danger']) !!}
                  </div>
                {!! Form::close() !!}
              </td>
            </tr>
        @endforeach
      </tbody>
    </table>
  </div>
@endsection

