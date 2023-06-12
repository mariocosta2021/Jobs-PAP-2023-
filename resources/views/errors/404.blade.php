@extends('layouts.merge.site')
@section('titulo', '404 - Página não encontrada')
@section('content')

<!-- ======= APRESENTAÇÃO ======= -->
<section id="hero" class="hero d-flex align-items-center">

    <div class="container">
        <div class="row">
            <div class="col-lg-6 d-flex flex-column justify-content-center">
                <h1 data-aos="fade-up">Erro 404</h1>
                <h2 data-aos="fade-up" data-aos-delay="400">A página que está tentando acessar não foi encontrada.</h2>
                <div data-aos="fade-up" data-aos-delay="600">
                    <div class="text-center text-lg-start">
                        <a href="{{route('site.home')}}"
                            class="btn-get-started scrollto d-inline-flex align-items-center justify-content-center align-self-center">
                            <span>Voltar ao site</span>
                            <i class="bi bi-arrow-right"></i>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 hero-img" data-aos="zoom-out" data-aos-delay="200">
                <img src="{{ asset('dashboard/img/404.png') }}" class="img-fluid" alt="">
            </div>
        </div>
    </div>

</section><!-- FIM DA APRESENTAÇÃO -->


@endsection
