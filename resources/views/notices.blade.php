@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">

        	<h1>Lista de noticias</h1>

        	@foreach($notices as $notice)
            <div class="panel panel-default">
                <div class="panel-heading"><h4>{{ $notice->title }}</h4> <label>Fecha: {{$notice -> created_at}}</label></div>

                <div class="panel-body">
                    @if($notice->image)
                    <img src="{{asset('image/')}}/{{$notice ->image}}" class="img-responsive">
                    @endif
                    {{ $notice->body }}
                    
                    <a align="right" href="{{ route('notice', $notice->slug) }}" class="pull-right">Leer más</a>
                </div>
            </div>
            @endforeach

            {{ $notices->render() }}
        </div>
    </div>
</div>
@endsection