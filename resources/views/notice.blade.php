@extends('layouts.app')

@section('content')
<div class="container">
   <div class="row">
       <div class="col-md-8 col-md-offset-2">
       <h1>{{ $notice[0]->title }}</h1>
       <p>Autor: <strong>{{$notice[0]->name_user}}</strong></p>
         <div class="panel panel-default">

               <div class="panel-body">

                   @if($notice[0]->image)
                   <img src="{{asset('image/')}}/{{$notice[0]->image}}" class="img-responsive">
                   @endif
                   {{ $notice[0]->body }}
                   <hr>
                   {{ $notice[0]->created_at }}
                   
               </div>
           </div>

         
       </div>
   </div>
</div>
@endsection