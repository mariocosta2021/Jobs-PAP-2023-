
<!-- ======= CABEÇALHO ======= -->
<header id="header" class="header fixed-top mb-3">
  <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

    <a href="{{ route('site.home') }}" class="logo d-flex align-items-center">
      <img class="d-none" src="site/assets/img/jobs.png" alt="">
      <span >PAP - 2022/2023</span>
    </a>

    <nav id="navbar" class="navbar">
      <ul>
        <li><a class="nav-link scrollto" href="{{ route('site.home') }}">Home</a></li>
        <li><a class="nav-link scrollto" href="{{ route('site.sobre') }}">Sobre</a></li>
        <li><a class="nav-link scrollto" href="{{ route('site.vagas') }}">Vagas</a></li>


        @if(isset(Auth::user()->level))
        <li><a class="getstarted scrollto" href="{{ route('admin.home') }}">Minha Conta</a></li>
        @else
        <li><a class="nav-link scrollto" href="{{ route('site.cadastrar') }}">Criar Conta</a></li>
        <li><a class="getstarted scrollto" href="{{ route('site.login') }}">Iniciar Sessão</a></li>
        @endif

      </ul>
      <i class="bi bi-list mobile-nav-toggle"></i>
    </nav><!-- .navbar -->

  </div>
</header><!-- FIM DO CABEÇALHO -->
