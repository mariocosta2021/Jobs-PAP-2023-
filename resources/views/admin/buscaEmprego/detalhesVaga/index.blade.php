@extends('layouts.merge.dashboard')
@section('titulo', 'Detalhes da Vaga')
@section('content')


<script src="assets/bootstrap-3.3.7/js/bootstrap.min.js" type="text/javascript"></script>

<div class="content-body">
    <div class="col-xl-12">
        <div class="card">
            <div class="card-body">
                <div style='background-image:url("/storage/{{ $vaga->imagemEmprego}}");background-position:center;background-size:cover; height:240px;width:auto'></div>
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

                    @if ($errors->any())
                        <div class="alert alert-danger">
                        <ul>
                        @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                        @endforeach
                        </ul>
                        </div>
                    @endif
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#basicModal">
                        Enviar Candidatura
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>


<form action="{{ route('admin.inscricoesUsuario.cadastrar') }}" method="POST">
    @csrf
    <input name="id_vaga" value=" {{ $vaga->id }}" hidden>

    <div class="modal fade" id="basicModal" tabindex="-1">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Escolha a categoria</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">

                @foreach ($categoriaVagas as $item )
                    <div class="form-check form-check-inline ">
                        <label class="form-check-label">
                            <input name="categoria[]" type="checkbox" class="form-check-input"
                                value="{{ $item->nomeCategoria }}" >{{ $item->nomeCategoria }}
                        </label>
                    </div>
                @endforeach
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Fechar</button>
              <button type="Submit" class="btn btn-primary">Enviar Candidatura</button>
            </div>
          </div>
        </div>
      </div><!-- End Basic Modal-->



    </form>

@endsection
