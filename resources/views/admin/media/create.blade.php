@extends('layouts.admin');

@section('styles')

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.5.1/min/dropzone.min.css">

@endsection

@section('content')

  <div class="row">
    <h1>Upload Media</h1>
  </div>

  <div class="row">
    {!! Form::open(['method'=>'POST', 'action'=>'AdminMediasController@store', 'class'=>'dropzone']) !!}

      <div class="form-group">
        {!! Form::submit('Create Photo', ['class'=>'btn btn-primary']) !!}
      </div>

    {!! Form::close() !!}
  </div>
@endsection

@section('scripts')

  <script src="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.5.1/min/dropzone.min.js"></script>

@endsection
