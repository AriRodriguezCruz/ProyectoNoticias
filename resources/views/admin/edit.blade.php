@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Editar Noticia
                </div>

                <div class="panel-body">
                    {!! Form::model($notice, ['route' => ['notices.update', $notice ->id],
                    'method' => 'PUT','files' =>true  ]) !!}
                    
                    @include('admin.form')

                    {!! Form::close() !!}

                    
                </div>
            </div>
        </div>
    </div>
</div>
@endsection