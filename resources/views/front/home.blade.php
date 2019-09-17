@extends('layouts.blog-home')

@section('content')
<div class="row">

    <!-- Blog Entries Column -->
    <div class="col-md-8">

        @if($posts)
            @foreach ($posts as $post)

                <!-- First Blog Post -->
                <h2>
                    <a href="#">{{ $post->title }}</a>
                </h2>
                <p class="lead">
                    by {{ $post->user->name }}
                </p>
                <p><span class="glyphicon glyphicon-time"></span> Posted on {{ $post->created_at->diffForHumans() }}</p>
                <hr>
                <img class="img-responsive" src="http://placehold.it/900x300" alt="">
                <hr>
                <p>{{ str_limit($post->body,300) }}</p>
                <a class="btn btn-primary" href="/codehacking/public/post/{{ $post->slug }}">Read More <span class="glyphicon glyphicon-chevron-right"></span></a>

                <hr>

                <!-- Pagination -->

            @endforeach

        @else

        @endif
    </div>

    <!-- Blog Sidebar Widgets Column -->
    @include('includes.front_sidebar')

    <div class="row">
        <div class="col-sm-6 col-sm-offset-5">
          {{ $posts->render() }}
        </div>
    </div>

</div>
<!-- /.row -->

<hr>

@endsection
