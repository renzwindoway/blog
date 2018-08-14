@extends('layouts.app')
@section('title', $category->name)
@section('content') 

@include('partials.navbar')

<div class="container shadow" id="main-wrapper">
    <div class="row">
        <div class="col-sm-8 pt-3">
            <div id="postSection" class="light-bold">
                @if(count($posts) < 1) 
                    No post to show
                @else
                    @foreach($posts as $post)
                    <div class="postContent{{$post->id}} mb-2">
                            <h2 class="font-weight-bold post-title break-word">{{$post->title}}</h2>
                            <span>{{$post->created_at->format('F d, Y')}}</span>
                            <p class="post-desc break-word mt-2 text-justify">{{ str_limit($post->description, 150)}}
                            <a href="{{route('post',['pid' => Crypt::encrypt($post->id)])}}" class="blue-text">See more</a></p>
                            <div class="text-center">
                                <a href="{{route('post',['pid' => Crypt::encrypt($post->id)])}}" class="blue-text">
                                    <img src="{{asset($post->image)}}" alt="{{$post->image}}" class="post-media img-fluid">
                                </a>
                                <p class="font-italic post-caption break-word">{{$post->caption}}</p>
                            </div>
                        <p class="post-sDesc break-word text-justify">{{$post->shortDesc}}</p>
                            <div id="social-links">
                                <ul class="list-inline">
                                    <li class="list-inline-item h5 post-desc m-0">Share: </li>
                                    <li class="list-inline-item m-0"><a href="https://www.facebook.com/sharer/sharer.php?u={{route('post',['pid' => Crypt::encrypt($post->id)])}}" class="social-button"><span class="fa fa-facebook"></span></a></li>
                                    <li class="list-inline-item m-0"><a href="https://twitter.com/intent/tweet?url={{route('post',['pid' => Crypt::encrypt($post->id)])}}" class="social-button"><span class="fa fa-twitter"></span></a></li>
                                    <li class="list-inline-item m-0"><a href="https://plus.google.com/share?url={{route('post',['pid' => Crypt::encrypt($post->id)])}}" class="social-button"><span class="fa fa-google-plus"></span></a></li>
                                    <li class="list-inline-item m-0"><a href="http://www.linkedin.com/shareArticle?mini=true&amp;url={{route('post',['pid' => Crypt::encrypt($post->id)])}}" class="social-button"><span class="fa fa-linkedin"></span></a></li>
                                    <li class="list-inline-item pull-right post-author break-word">Posted by: {{$post->author}}</li>
                                </ul>
                            </div>
                        </div>
                    <hr>
                    @endforeach
                @endif
            </div>
        </div>
        <div class="col-sm-4 light-bold pt-3">
                <iframe id="fb-page" src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FOfficialWindowayTrading%2F&tabs=timeline&width=340&height=500&small_header=false&adapt_container_width=false&hide_cover=false&show_facepile=true&appId"  scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe>       
                <div class="mt-3">
                    <h2 class="text-transform-upper font-weight-bold text-center">Recent Posts</h2>
                   @if(count($recentPosts) < 1)
                    <p class="text-center">Stay tuned!</p>
                    @else
                    @foreach($recentPosts as $post)
                    <ul class="list-unstyled mb-3">
                        <li class="media">
                            
                            <div class="media-body small-text">
                                <a class="d-block black-text " href="{{route('post',['pid' => Crypt::encrypt($post->id)])}}">{{$post->title}}</a>
                                <span class="d-block font-italic">{{$post->created_at->format('F d, Y')}}</span>
                            </div>
                            <a class="d-block black-text" href="{{route('post',['pid' => Crypt::encrypt($post->id)])}}">
                                <img src="{{asset($post->image)}}" class="d-flex mr-3" alt="" height="30" width="30">
                            </a>
                        </li>
                    </ul>
                    @endforeach
                    @endif
                </div>
                <div class="mt-3 mb-3">
                    <h2 class="text-transform-upper font-weight-bold text-center">Categories</h2>
                    <div class="list-group ">
                        @foreach($categories as $category)
                        <a class="list-group-item d-flex justify-content-between align-items-center small-text" href="{{route('category',[$category->category,'cid' => Crypt::encrypt($category->id)])}}">
                            {{$category->category}}
                            <span class="badge badge-primary badge-pill">{{count($category->posts)}}</span>
                        </a>
                        @endforeach
                      </div>
                </div>
            </div>
        </div>
    </div>
</div>
@include('partials.footer') 
@endsection
