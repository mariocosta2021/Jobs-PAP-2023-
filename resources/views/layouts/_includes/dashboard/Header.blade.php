<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Dashboard - Sistema de Gestão de Candidaturas</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="{{ asset('dashboard/img/jobs.png') }}" rel="icon">
    <link href="{{ asset('dashboard/img/jobs.png') }}" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.gstatic.com" rel="preconnect">
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
        rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="{{ asset('dashboard/vendor/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('dashboard/vendor/bootstrap-icons/bootstrap-icons.css') }}   " rel="stylesheet">
    <link href="{{ asset('dashboard/vendor/boxicons/css/boxicons.min.css') }} " rel="stylesheet">
    <link href="{{ asset('dashboard/vendor/quill/quill.snow.css') }}" rel="stylesheet">
    <link href="{{ asset('dashboard/vendor/quill/quill.bubble.css') }}" rel="stylesheet">
    <link href="{{ asset('dashboard/vendor/remixicon/remixicon.css') }} " rel="stylesheet">
    <link href=" {{ asset('dashboard/vendor/simple-datatables/style.css') }} " rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="{{ asset('dashboard/css/style.css') }}" rel="stylesheet">
    {{-- sweetalert --}}
    <link rel="stylesheet" href="/css/sweetalert2.css">
    <script src="/js/sweetalert2.all.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!-- =======================================================
  * Template Name: NiceAdmin - v2.2.2
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

    <!-- ======= Header ======= -->
    <header id="header" class="header fixed-top d-flex align-items-center">

        <div class="d-flex align-items-center justify-content-between">
            <a href="{{ route('admin.home') }}" class="logo d-flex align-items-center">
                <img src=" {{ asset('dashboard/img/jobs.png') }}" style="display:flex; margin-left:10%; with:auto; height:auto" alt="" class="image-fluid ">
            </a>
            <i class="bi bi-list toggle-sidebar-btn"></i>
        </div><!-- End Logo -->

        <div class="search-bar">
            <form class="search-form d-flex align-items-center" method="POST" action="#">
                <input type="text" name="query" placeholder="Pesquisar" title="Enter search keyword">
                <button type="submit" title="Search"><i class="bi bi-search"></i></button>
            </form>
        </div><!-- End Search Bar -->

        <nav class="header-nav ms-auto">
            <ul class="d-flex align-items-center">

                <li class="nav-item d-block d-lg-none">
                    <a class="nav-link nav-icon search-bar-toggle " href="#">
                        <i class="bi bi-search"></i>
                    </a>
                </li><!-- End Search Icon-->

                @if (Auth::user()->level == 'cliente' && isset($smsTotal))
                    <li class="nav-item dropdown">

                        <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
                            <i class="bi bi-bell"></i>
                            <span class="badge bg-primary badge-number">{{ $smsTotal }}</span>
                        </a><!-- End Notification Icon -->

                        <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications">
                            <li class="dropdown-header">
                                Você tem {{ $smsTotal }} notificações novas
                                <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">Ver
                                        todas</span></a>
                            </li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            @foreach ($sms as $item)
                                <li class="notification-item">
                                    <i class="bi bi-check-circle text-success"></i>
                                    <div>
                                        <h4>Candidatura automática</h4>
                                        <p>Candidatura automática realizada com sucesso para a vaga de {{ $item->tituloEmprego }} na empresa {{ $item->nomeEmresa }} na categoria de {{ $item->nomeCategoria }}  </p>
                                        <p>{{ $item->created_at }}</p>
                                    </div>
                                </li>
                            @endforeach

                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li class="dropdown-footer">
                                <a href="#">Ver Todas as Notificações</a>
                            </li>

                        </ul><!-- End Notification Dropdown Items -->

                    </li><!-- End Notification Nav -->
                @endif
                <li class="nav-item dropdown pe-3">

                    <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#"
                        data-bs-toggle="dropdown">
                        <img src="{{ asset('dashboard/img/profile-img1.PNG ') }}" alt="Profile"
                            class="rounded-circle">
                        <span class="d-none d-md-block dropdown-toggle ps-2">{{ Auth()->user()->name }}</span>
                    </a><!-- End Profile Iamge Icon -->

                    <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                        <li class="dropdown-header">
                            <h6>{{ Auth()->user()->name }}</h6>
                            <span>
                                @if (Auth()->user()->level == 'Administrador')
                                    Empresa
                                @endif
                                @if (Auth()->user()->level == 'cliente')
                                    Usuário-Normal
                                @endif
                                @if (Auth()->user()->level != 'cliente' || Auth()->user()->level != 'Administrador')
                                    {{ Auth()->user()->level }}
                                @endif
                            </span>
                        </li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>

                        <li>
                            <a class="dropdown-item d-flex align-items-center"
                                href="{{ route('admin.user.show', Auth::User()->id) }}">
                                <i class="bi bi-eye-fill"></i>
                                <span>Ver Perfil</span>
                            </a>
                        </li>

                        <li>
                            <a class="dropdown-item d-flex align-items-center"
                                href="{{ route('admin.user.edit', Auth::User()->id) }}">
                                <i class="bi bi-pencil-fill"></i>
                                <span>Editar Perfil</span>
                            </a>
                        </li>

                        @if (Auth()->user()->level == 'cliente')
                            <li>
                                <a class="dropdown-item d-flex align-items-center" target="_blank"
                                    href="{{ route('admin.inscritos.curriculo', Auth::User()->id) }}">
                                    <i class="bi bi-journal-bookmark-fill"></i>
                                    <span>Meu curriculo</span>
                                </a>
                            </li>
                        @endif
                        <li>
                            <hr class="dropdown-divider">
                        </li>


                        <li>
                            <hr class="dropdown-divider">
                        </li>

                        <li>
                            <hr class="dropdown-divider">
                        </li>

                        <li>
                            <a class="dropdown-item d-flex align-items-center" href="{{ route('logout') }}"
                                onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                                <i class="bi bi-power text-danger"></i>
                                <span>Terminar Sessão</span>
                            </a>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST">
                                @csrf
                            </form>
                        </li>

                    </ul><!-- End Profile Dropdown Items -->
                </li><!-- End Profile Nav -->

            </ul>
        </nav><!-- End Icons Navigation -->

    </header><!-- End Header -->
