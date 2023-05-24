@extends('layouts.merge.site')
@section('titulo', 'Criar Conta')
@section('content')
    <!-- Template Main CSS File -->
    <link href="/site/assets/css/style.css" rel="stylesheet">
    <link href="/site/assets/css/criar-conta.css" rel="stylesheet">
    <!-- ======= Introdução ======= -->


<main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
        <div class="container">

        <ol>
            <li><a href="{{ route('site.home') }}">Home</a></li>
            <li>Criar Conta</li>
        </ol>
        <h2>Criar Conta</h2>

        </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Blog Single Section ======= -->
    <section id="blog" class="blog">
        <div class="container" data-aos="fade-up">
        <div class="row justify-content-center">
            <div class="col-lg-4 entries">
            <div class="blog-comments">
                <div class="reply-form">
                <h4>Criar Conta</h4>
                <p>Introduza os seus dados para criação da sua conta </p>
                @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
                <form class="text-center" action="{{ route('admin.registrar.store') }}" method="post">
                    @csrf
                    <div class="row">

                    <div class="col-md-12 form-group">
                        <input name="name"
                        value="{{ isset($user->name) ? $user->name : old('name') }}"type="text" class="form-control" placeholder="Nome Completo">
                    </div>
                    <div class="col-md-12 form-group">
                        <input  name="username"
                        value="{{ isset($user->username) ? $user->username : old('username') }}" type="text" class="form-control" placeholder="Nome de Usuário" >
                    </div>
                    <div class="col-md-12 form-group">
                        <input type="email" class="form-control" name="email"
                        value="{{ isset($user->email) ? $user->email : old('email') }}" type="text" class="form-control" placeholder="Email" >
                    </div>
                    <div class="col-md-12 form-group">
                        <input type="password" class="form-control" name="password" autocomplete="new-password"
                            id="senha" placeholder="Palavra-passe" required>
                        </div>
                        <div class="col-md-12 form-group">
                                <input type="password" class="form-control" name="password_confirmation"
                                    placeholder="Confirmar Password" id="senha" placeholder="Confimar palavra-passe"
                                    required>
                        </div>
                    <div class="col-md-12 form-group">
                        <select name="level" id="level" class="form-control" required>

                            <option disabled selected>Selecione um perfil </option>
                            <option value="Administrador">Empresa</option>
                            <option value="cliente">Candidato</option>

                        </select>
                    </div>
                    </div>
                    <p>Já tem uma conta? <a href="{{ route('login') }}">Iniciar Sessão</a> </p>
                    <button type="submit" class="btn btn-primary">Criar Conta</button>
                </form>
                </div>
            </div>
            </div>

            <div class="col-lg-6 d-none">
            <div class="sidebar d-none d-md-block">
                <img src="assets/img/login.png" alt="">
            </div>
            </div>

        </div>

        </div>
    </section>
    </main>

@endsection
