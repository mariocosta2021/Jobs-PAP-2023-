@extends('layouts.merge.dashboard')
@section('titulo', 'Detalhes da Vaga')
@section('content')

<link href="/dashboard/public/vendor/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet"
type="text/css" />
<link href="/dashboard/public/vendor/jquery-smartwizard/dist/css/smart_wizard.min.css" rel="stylesheet"
type="text/css" />

<link href="/dashboard/public/css/style.css" rel="stylesheet" type="text/css" />


<div class="content-body">
    <div class="col-xl-12">
        <div class="card">
            <div class="card-body">
                <div style='background-image:url("/storage/{{ $vaga->imagemEmprego}}");background-position:center;background-size:cover; height:240px;width:auto'>
                </div>
                <div class="post-details">
                    <h3 class="my-4 text-black"><b>{{ $vaga->tituloEmprego }}</b></h3>
                    <h5 class="my-2 text-black fw-bold">  Informações da Vaga</h5>
                    <ul class="mb-4 post-meta">
                        <li class="post-date">Empresa: <span class="text-black fw-bold">{{ $vaga->nomeEmresa }}</span></li>
                        <li class="post-date">Vagas disponiveis: <span class="text-black fw-bold">{{$vaga->tempoVaga}}</span></li>
                        <li class="post-date">Tipo de Emprego: <span class="text-black fw-bold">{{ $vaga->tempoEmprego}}</span></li>
                        <li class="post-date">Data de Publicação: <span class="text-black fw-bold">{{ date ('d/m/Y', strtotime($vaga->created_at)) }}</span></li>
                        <li class="post-date">Disponivel até: <span class="text-black fw-bold">{{ date ('d/m/Y', strtotime($vaga->dataVaga)) }}</span></li>
                    </ul>
                    <h5 class="my-2 text-black fw-bold">  Requisitos da Vaga</h5>
                    <ul class="mb-4 post-meta">
                        <p class="text-danger">OBS: <span class="text-black">{!! html_entity_decode(mb_substr($vaga->descricaoEmpreego, 0,1000000, 'UTF-8')) !!}</span>
                        </p>
                        @foreach ($categoriaVagas as $item )
                            <li class="post-date" name="categoria[]" ><span class="text-black fw-bold">{{ $item->nomeCategoria }}</span></li>
                        @endforeach
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>


@endsection




