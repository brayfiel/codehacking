@extends('layouts.admin')

@section('content')

  <div class="row">
    <h1>Media</h1>
  </div>

  <div class="row">
    @if($photos)
      {{-- <a class="btn btn-link" href="{{ url('/password/reset') }}">Forgot Your Password?</a> --}}
      {{-- <form action="/codehacking/public/delete/media" method="post" class="form-inline"> --}}
      <form action="{{ url('/admin/delete/media') }}" method="post" class="form-inline">
        {{ csrf_field() }}
        {{ method_field('delete') }}
        <div class="form-group">
          <select name="checkBoxArray" id="" class="form-control">
            <option value="">Delete</option>
          </select>
        </div>
        <div class="form-group">
          <input type="submit" name="delete_all" class="btn btn-primary">
        </div>
        <table class="table">
          <thead>
            <tr>
              <th><input type="checkbox" id="options"></th>
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
                <td><input class="checkBoxes" type="checkbox" name="checkBoxArray[]" value="{{ $photo->id }}"></td>
                <td>{{ $photo->id }}</td>
                <td>{!! $photo->file !!}</td>
                <td><img height="50" src="{{ $photo->file }}" alt="Not Available"></td>
                <td>{{ $photo->created_at ? $photo->created_at : 'Not Available' }}</td>
                <td>{!! $photo->updated_at ? $photo->updated_at : 'Not Available' !!}</td>
                <td>
                  {{-- {!! Form::open(['method'=>'DELETE', 'action'=>['AdminMediasController@destroy', $photo->id]]) !!} --}}
                  {{-- <input type="hidden" name="photo" value="{{ $photo->id }}"> --}}
                  <div class="form-group">
                    {{-- {!! Form::submit('Delete', ['class'=>'btn btn-danger']) !!} --}}
                    {{-- <input type="submit" name="delete_single" value="Delete" class="btn btn-danger"> --}}
                    <input type="submit" name="delete_single[{{ $photo->id }}]" value="Delete" class="btn btn-danger">
                  </div>
                  {{-- {!! Form::close() !!} --}}
                </td>
              </tr>
            @endforeach
          </tbody>
        </table>
      </form>
    @else
      <div class="row">
        <h1 class="text-center">No Media On File</h1>
      </div>
    @endif
  </div>
@endsection

@section('scripts')
  <script>
    $(document).ready(function() {
      $('#options').click(function() {
        if (this.checked) {
          $('.checkBoxes').each(function() {
            this.checked = true;
          });
        } else {
          $('.checkBoxes').each(function(){
            this.checked = false;
          });
        }
      });
    });
  </script>
@endsection
