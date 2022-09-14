@extends('layouts.admin')

@section('title')
Adi Mohammadi | Edit-Product
@endsection

@section('content')

<div class="card">
    <div class="card-header">
        <h2>Edit Product</h2>
    </div>
    <div class="card-body">
        <form action="{{ url('update-product/'.$products->id) }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="row">

                <div class="col-md-12 mb-3">
                    <select class="form-select">
                        <option value="">{{ $products->category->name }}</option>
                    </select>
                </div>

                <div class="col-md-6 mb-3">
                    <label for="">Name</label>
                    <input type="text" class="form-control" value="{{ $products->name }}" name="name">
                </div>

                <div class="col-md-6 mb-3">
                    <label for="">Slug</label>
                    <input type="text" class="form-control" value="{{ $products->slug }}" name="slug">
                </div>

                <div class="col-md-12 mb-3">
                    <label for="">Small Description</label>
                    <textarea name="small_description" rows="2"
                        class="form-control">{{ $products->small_description }}</textarea>
                </div>
                <div class="col-md-12 mb-3">
                    <label for="">Description</label>
                    <textarea name="description" rows="2" class="form-control">{{ $products->description }}</textarea>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="">Original Price</label>
                    <input type="number" value="{{ $products->original_price }}" name="original_price"
                        class="form-control">
                </div>
                <div class="col-md-6 mb-3">
                    <label for="">Selling Price</label>
                    <input type="number" value="{{ $products->selling_price }}" name="selling_price"
                        class="form-control">
                </div>
                <div class="col-md-6 mb-3">
                    <label for="">Tax</label>
                    <input type="number" value="{{ $products->tax }}" name="tax" class="form-control">
                </div>
                <div class="col-md-6 mb-3">
                    <label for="">Quantity</label>
                    <input type="number" value="{{ $products->qty }}" name="qty" class="form-control">
                </div>
                <div class="col-md-6 mb-3">
                    <label for="">Status</label>
                    <input type="checkbox" {{ $products->status == '1' ? 'checked':'' }} name="status">
                </div>
                <div class="col-md-6 mb-3">
                    <label for="">Trending</label>
                    <input type="checkbox" {{ $products->trending == '1' ? 'checked':'' }} name="trending">
                </div>
                <div class="col-md-12 mb-3">
                    <label for="">Meta Title</label>
                    <textarea type="text" name="meta_title" class="form-control">{{ $products->meta_title }}</textarea>
                </div>
                <div class="col-md-12 mb-3">
                    <label for="">Meta Keywords</label>
                    <textarea name="meta_keywords" rows="2"
                        class="form-control">{{ $products->meta_keywords }}</textarea>
                </div>
                <div class="col-md-12 mb-3">
                    <label for="">Meta Description</label>
                    <textarea name="meta_description" rows="2"
                        class="form-control">{{ $products->meta_description }}</textarea>
                </div>
                @if ($products->image)
                <img src="{{ asset('assets/uploads/products/'.$products->image) }}" alt="">
                @endif
                <div class="col-md-12">
                    <input type="file" class="form-control" name="image">
                </div>
                <div class="col-md-12">
                    <button type="submit" class="btn btn-primary">Update</button>
                </div>

            </div>
        </form>
    </div>
</div>

@endsection