@extends('layouts.frontend')

@section('title')
Adi Mohammadi | Checkout
@endsection


@section('content')
<section class="page-header py-3">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="content p-2" style="background-color: #eaf3ef87;">
                    <h1 class="page-name">Contact Us</h1>
                    <ol class="breadcrumb">
                        <li><a href="{{ ('/') }}">Home</a> / </li>
                        <li class="active"> contact</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="page-wrapper">
    <div class="contact-section">
        <div class="container">
            <div class="row">
                <!-- Contact Form -->
                <div class="contact-form col-md-6 ">
                    <form id="contact-form" method="post" action="" role="form">

                        <div class="form-group">
                            <input type="text" placeholder="Your Name" class="form-control" name="name" id="name">
                        </div>

                        <div class="form-group">
                            <input type="email" placeholder="Your Email" class="form-control" name="email" id="email">
                        </div>

                        <div class="form-group">
                            <input type="text" placeholder="Subject" class="form-control" name="subject" id="subject">
                        </div>

                        <div class="form-group">
                            <textarea rows="6" placeholder="Message" class="form-control" name="message"
                                id="message"></textarea>
                        </div>


                        <div id="cf-submit">
                            <input type="submit" id="contact-submit" class="btn btn-transparent" value="Submit">
                        </div>

                    </form>
                </div>
                <!-- ./End Contact Form -->

                <!-- Contact Details -->
                <div class="contact-details col-md-6 ">
                    <ul class="contact-short-info">
                        <li>
                            <i class="fa fa-home"></i>
                            <span>Hemayatpur,Savar,Dhaka, Bangladesh</span>
                        </li>
                        <li>
                            <i class="fa fa-phone"></i>
                            <span>Phone:</span>
                        </li>
                        <li>
                            <i class="fa fa-envelope"></i>
                            <span>Email: BlueSky-team@gmail.com</span>
                        </li>
                    </ul>
                </div>
                <!-- / End Contact Details -->



            </div> <!-- end row -->
        </div> <!-- end container -->
    </div>
</section>
@endsection