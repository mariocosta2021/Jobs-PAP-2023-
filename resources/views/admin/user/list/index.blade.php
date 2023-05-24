@extends('layouts.merge.dashboard')
@section('titulo', 'Lista de Utilizadores')
@section('content')

<section class="section dashboard">
    <div class="row">
        <div class="col-lg-12">
            <div class="row">
                <div class="col-12">
                    <div class="card recent-sales overflow-auto">
                        <div class="card-body">
                            <h5 class="card-title">Lista de usuários do sistema</h5>
                            <a href="{{ route('register') }}" class="mb-3 btn btn-primary"><i class="bi bi-plus-lg"></i> Cadastrar</a>

                            <table class="table table-borderless datatable">
                                <thead>
                                <tr class="text-center">
                                    <th>#</th>
                                    <th>Nome</th>
                                    <th>Email</th>
                                    <th>Nível de Acesso</th>
                                    <th>Data De Criação</th>
                                    <th>Opções</th>
                                </tr>
                                </thead>
                                <tbody>
                                    @foreach ($users as $item)
                                        <tr >
                                            <td>{{ $item->id }}</td>
                                            <td>{{ $item->name }} </td>
                                            <td>{{ $item->email }} </td>
                                            <td>
                                                @if ($item->level == 'Administrador')
                                                    Empresa
                                                @endif
                                                @if ($item->level == 'cliente')
                                                    Usuário-Normal
                                                @endif
                                                @if($item->level != 'cliente' || $item->level != 'Administrador' )
                                                    {{ $item->level }}
                                                @endif
                                            </td>
                                            <td>{{ date('d/m/Y - H:i:s', strtotime($item->created_at)) }} </td>

                                            <td>
                                                <button type="button" class="btn btn-primary" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></button>
                                                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                                                    <li><a class="dropdown-item" href="{{ url("admin/user/show/{$item->id}") }}">Detalhes</a></li>
                                                    <li><a class="dropdown-item" href="{{ url("admin/user/edit/{$item->id}") }}">Editar</a></li>
                                                    <li><a class="dropdown-item" href="{{ url("admin/user/delete/{$item->id}") }}">Eliminar</a></li>
                                                </ul>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

@endsection
