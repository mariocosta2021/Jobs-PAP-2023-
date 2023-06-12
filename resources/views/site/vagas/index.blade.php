@extends('layouts.merge.site')
@section('titulo', 'Vagas')
@section('content')
    <!-- Template Main CSS File -->
    <link href="/site/assets/css/style.css" rel="stylesheet">
    <link href="/site/assets/css/vagas.css" rel="stylesheet">
    <link href="/site/assets/css/variables-vagas.css" rel="stylesheet">
    <link href="/site/assets/js/main.js" rel="stylesheet">
    <!-- ======= Introdução ======= -->

    <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
        <div class="container">
            <ol>
                <li><a href="{{ route('site.home') }}">Home</a></li>
                <li>Vagas</li>
            </ol>
            <h2>Vagas Disponíveis</h2>
        </div>
    </section><!-- End Breadcrumbs -->

<main id="main">
    <!-- ======= Nossas Vagas ======= -->
    <section id="services" class="services section-bg">
        <div class="container" data-aos="fade-up">

            <header class="section-header">
                <h2>Lista de vagas publicadas diponiveis</h2>
                @if ($vagas ->count()== 0)
                    <p>Sem vagas disponíveis</p>
                @else
                    <p>Vagas Disponíveis</p>
                @endif
            </header>

            <div class="row g-5">

                @foreach ($vagas as $item)
                        <div class="col-md-6 col-lg-3" data-aos="zoom-in" data-aos-delay="200">
                            <div class="box">
                                <h3>{{ $item->tituloEmprego }} </h3>
                                <p class="description">Empresa: <b>{{$item->nomeEmresa}}</b></p>
                                <p class="description">Email: <b>{{$item->emailEmprego}}</b></p>
                                <p class="description">Vagas: <b>{{$item->tempoVaga}}</b></p>
                                <p class="description">Publicada: <b>{{date('d/m/Y', strtotime($item->created_at))}}</b></p>
                                <p class="description"> Disponível até: <b>{{date('d/m/Y', strtotime($item->dataVaga)) }}</b></p>
                                <a href="{{ route('admin.buscar.detalhes', $item->id) }}" class="btn btn-primary my-3 w-100" id="btn-inscricao">Inscreva-se</a>
                            </div>
                        </div>
                @endforeach
            </div>

        </div>
    </section>

</main><!-- Fim do main -->

@endsection
