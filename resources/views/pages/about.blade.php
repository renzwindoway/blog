@extends('layouts.app')
@section('title', 'About')
@section('content')
@include('partials.navbar')

<div class="container shadow" id="main-wrapper">
    <div id="about-page-container" class="light-bold">
        <h1 class="pt-5 playfair">About Us</h1>
        <div class="mt-5">
            <h2 class="font-weight-bold">Windoway Trading Inc.</h2>
            <p class="text-justify">
                Windoway Trading Inc. is an interior furnishing company in the Philippines that provides high-quality Korean products specialized on office furniture, window treatments, such as window blinds and shades, curtains, window film, and other window coverings, as well as artificial grass for sports and landscaping applications, and other interior related products.
            </p>
        </div>
        <div class="row">
            <div class="col-sm-6">
                <img src="{{asset('img/purpose-logo.png')}}" alt="Our Purpose" class="mx-auto d-block about-icons">
                <h2 class="text-center font-weight-bold">Purpose</h2>
                <p class="text-center">
                    Windoway aims and envisions to be a leader and an influence in the competitive industry of interior furnishing by providing enhanced services, promoting harmonious client and employee relationship, and to have a stable profitability.
                </p>
            </div>
            <div class="col-sm-6">
                <img src="{{asset('img/vision-logo.png')}}" alt="Our Vision" class="mx-auto d-block about-icons">
                <h2 class="text-center font-weight-bold">Vision</h2>
                <p class="text-center">
                    Our vision is to distribute and provide high-quality products and services that exceed the expectations of our esteemed customers and this industry.
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6">
                <img src="{{asset('img/mission-logo.png')}}" alt="Our Mission" class="mx-auto d-block about-icons">
                <h2 class="text-center font-weight-bold">Mission</h2>
                <p class="text-center">
                     Our mission is to establish a long-term relationship with our clients and offer exceptional customer service by anchoring our business to innovation and advanced technology.
                </p>
            </div>
            <div class="col-sm-6">
                <img src="{{asset('img/core-value-logo.png')}}" alt="Core Values" class="mx-auto d-block about-icons">
                <h2 class="text-center font-weight-bold">Core Values</h2>
                <p class="text-center">
                    We strongly believe in treating our customers with respect and honesty, as well as promoting the growth of our employees through creativity, camaraderie, and innovation. We integrate values, integrity and corporate ethics in all aspects of our business functions.
                </p>
            </div>
        </div>
    </div>
</div>
@include('partials.footer')
@endsection
