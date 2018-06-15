@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Mis Noticias
                    <a href="{{ route('notices.create') }}" class="pull-right btn btn-sm btn-primary">
                        Crear noticia
                    </a>
                </div>

                <div class="panel-body">

                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>Nombre</th>
                                <th colspan="3">&nbsp;</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($notices as $notice)
                            <tr>
                                <td>{{ $notice->title}}</td>
                                <td width="10px">
                                    <a href="{{ route('notices.show', $notice->id) }}" class="btn btn-sm btn-default">Ver</a>
                                </td>
                                <td width="10px">
                                    <a href="{{ route('notices.edit', $notice->id) }}" class="btn btn-sm btn-default">Modificar</a>
                                </td>
                                <td width="10px">
                                {!! Form::open(['route' => ['notices.destroy', $notice->id], 'method' => 'DELETE']) !!}
                                        <button class="btn btn-sm btn-danger">
                                            Eliminar
                                        </button>                           
                                    {!! Form::close() !!}                        
                                   
                                </td>
                            </tr>
                            @endforeach
                        </tbody>   
                    </table>     	

                    {{ $notices->render() }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection