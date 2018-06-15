@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Mi noticia
                </div>

                <div class="panel-body">
                    <p><strong>{{$notice[0]->title}}</strong></p>
                    <p>Autor: <strong>{{$notice[0]->name_user}}</strong></p>
                    <img src="{{asset('image/')}}/{{$notice[0] ->image}}" class="img-responsive">

                    <label>Mi noticia</label><br>
                    {{ $notice[0]->body }}
                    
                </div>
            </div>
        </div>
    </div>
</div>
@endsection