@extends('layouts.admin');

@section('content')

@if(Session::has('deleted_user'))
  <p class="bg-danger text-center">{{session('deleted_user')}}</p>
@endif

<h1>Posts</h1>

<table class="table">
  <thead>
    <tr>
      <th>Id</th>
      <th>Photo</th>
      <th>Title</th>
      <th>Owner</th>
      <th>Category</th>
      <th></th>
      <th></th>
      <th>Created</th>
      <th>Updated</th>
    </tr>
  </thead>
  <tbody>
    @if($posts)
      @foreach($posts as $post)
        <tr>
          <td>{{$post->id}}</td>
          <td><img height="50" src="{{$post->Photo ? $post->Photo->file : 'https://via.placeholder.com/50'}}" alt="Not Avail."></td>
          <td>{{$post->title}}</td>
          <td>{{$post->user->name}}</td>
          <td>{{$post->category ? $post->category->name : "Uncategorized" }}</td>
          <td><a href="{{ route('home.post', $post->slug) }}">View Post</a></td>
          <td><a href="{{ route('admin.comments.show', $post->id) }}">View Comments</a></td>
          <td>{{$post->created_at->diffForHumans()}}</td>
          <td>{{$post->updated_at->diffForHumans()}}</td>
        </tr>
      @endforeach
    @endif
  </tbody>
</table>

<div class="row">
  <div class="col-sm-6 col-sm-offset-5">
    {{ $posts->render() }}
  </div>
</div>

@endsection

