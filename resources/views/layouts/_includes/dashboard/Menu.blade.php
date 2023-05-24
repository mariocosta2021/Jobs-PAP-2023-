<!-- ======= MENU ======= -->
<aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

        <li class="nav-item">
            <a class="nav-link collapsed" href="{{ route('admin.home') }}">
                <i class="bi bi-grid"></i>
                <span>Dashboard</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link collapsed" target="_blank" href="{{ route('site.home') }}">
                <i class="bi bi-reply-all-fill"></i>
                <span>Ir ao Site</span>
            </a>
        </li>

        @if (Auth::user()->level == 'cliente')
            <li class="nav-item">
                <a class="nav-link collapsed " href="{{ route('admin.buscar.index') }}">
                    <i class="bi bi-search"></i>
                    <span>Procurar Trabalho</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link collapsed " href="{{ route('admin.empresas.index') }}">
                    <i class="bi bi-building"></i>
                    <span>Empresas</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link collapsed " href="{{ route('admin.perfil.create') }}">
                    <i class="bi bi-journal-bookmark"></i>
                    <span>Criar Curriculo</span>
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link collapsed " href="{{ route('admin.inscricoesUsuario.index') }}">
                    <i class="bi bi-bullseye"></i>
                    <span>Inscrição</span>
                </a>
            </li>
        @endif
        @if (Auth::user()->level != 'cliente')
            @if (Auth::user()->level == 'Administrador-Master')
                <li class="nav-item">
                    <a class="nav-link collapsed" data-bs-target="#categoria" data-bs-toggle="collapse" href="#">
                        <i class="bi bi-list-task"></i><span>Categoria</span><i class="bi bi-chevron-down ms-auto"></i>
                    </a>
                    <ul id="categoria" class="nav-content collapse " data-bs-parent="#sidebar-nav">

                        <li>
                            <a href="{{ route('admin.categorias.index') }}">
                                <i class="bi bi-circle"></i><span>Listar</span>
                            </a>
                        </li>

                        <li>
                            <a href="{{ route('admin.categorias.create') }}">
                                <i class="bi bi-circle"></i><span>Cadastrar</span>
                            </a>
                        </li>
                    </ul>
                </li><!-- Categorias -->

                <li class="nav-item">
                    <a class="nav-link collapsed" data-bs-target="#usuarios" data-bs-toggle="collapse" href="#">
                        <i class="bi bi-people-fill"></i><span>Usuários</span><i class="bi bi-chevron-down ms-auto"></i>
                    </a>
                    <ul id="usuarios" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                        <li>
                            <a href="{{ route('admin.user.index') }}">
                                <i class="bi bi-circle"></i><span>Listar</span>
                            </a>
                        </li>
                        <li>
                            <a href="{{ route('register') }}">
                                <i class="bi bi-circle"></i><span>Cadastrar</span>
                            </a>
                        </li>
                    </ul>
                </li><!-- Usuários -->
                <li class="nav-item">
                    <a class="nav-link collapsed" data-bs-target="#empresas" data-bs-toggle="collapse" href="#">
                        <i class="bi bi-bell-fill"></i><span>Solicitação de Empresas</span><i
                            class="bi bi-chevron-down ms-auto"></i>
                    </a>
                    <ul id="empresas" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                        <li>
                            <a href="{{ route('admin.registro.index') }}">
                                <i class="bi bi-circle"></i><span>Listar</span>
                            </a>
                        </li>

                    </ul>
                </li><!-- Empresas -->

                <li class="nav-item">
                    <a class="nav-link collapsed" data-bs-target="#vagasPublicadas" data-bs-toggle="collapse"
                        href="#">
                        <i class="bi bi-megaphone-fill"></i><span class="">Vagas Publicadas</span><i
                            class="bi bi-chevron-down ms-auto"></i>
                    </a>
                    <ul id="vagasPublicadas" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                        <li>
                            <a href="{{ route('admin.vagasPublicadas.index') }}">
                                <i class="bi bi-circle"></i><span>Listar</span>
                            </a>
                        </li>

                    </ul>
                </li><!-- Empresas -->
            @endif

            @if (Auth::user()->level == 'Administrador')
                <li class="nav-item">
                    <a class="nav-link collapsed" data-bs-target="#perfilEmpresa" data-bs-toggle="collapse"
                        href="#">
                        <i class="bi bi-building"></i><span>Empresas</span><i class="bi bi-chevron-down ms-auto"></i>
                    </a>
                    <ul id="perfilEmpresa" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                        <li><a href="{{ route('admin.perfilEmpresa.index') }}">Listar </a></li>
                        <li><a href="{{ route('admin.perfilEmpresa.create') }}">Cadastrar</a></li>

                    </ul>
                </li><!-- Empresas -->

                <li class="nav-item">
                    <a class="nav-link collapsed" data-bs-target="#publicarVagas" data-bs-toggle="collapse" href="#">
                        <i class="bi bi-door-open-fill"></i><span>Vagas</span><i class="bi bi-chevron-down ms-auto"></i>
                    </a>
                    <ul id="publicarVagas" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                        <li><a href="{{ route('admin.publicarVagas.index') }}">Listar</a></li>
                        <li><a href="{{ route('admin.publicarVagas.create') }}">Cadastrar</a></li>

                    </ul>
                </li><!-- Empresas -->
            @endif

            <li class="nav-item">
                <a class="nav-link collapsed" data-bs-target="#inscritos" data-bs-toggle="collapse" href="#">
                    <i class="bi bi-bullseye"></i><span>Inscritos à Vagas</span><i
                        class="bi bi-chevron-down ms-auto"></i>
                </a>
                <ul id="inscritos" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                    <li><a href="{{ route('admin.inscritos.index') }}">Listar Inscritos</a></li>

                </ul>
            </li><!-- Empresas -->

            <li class="nav-item">
                <a class="nav-link collapsed" data-bs-target="#relatorio" data-bs-toggle="collapse" href="#">
                    <i class="bi bi-file-pdf-fill"></i><span>Relátorio</span><i class="bi bi-chevron-down ms-auto"></i>
                </a>
                <ul id="relatorio" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                    <li><a href="{{ route('admin.relatorio.vagas') }}">Vagas Publicadas</a></li>
                    <li><a href="{{ route('admin.relatorio.inscritos') }}">Inscrições a vagas</a></li>
                    @if(Auth::user()->level == 'Administrador-Master')
                        <li><a href="#">Empresas mais Procuradas</a></li>
                        <li><a href="#">Categoria mais Procurada</a></li>
                    @endif
                </ul>
            </li><!-- Empresas -->


            @endif
            <li class="nav-item">
                <a class="nav-link collapsed" href="{{ route('admin.registroActividades.detalhes', Auth::user()->id) }}">
                    <i class="bi bi-calendar-check-fill"></i>
                    <span>Registro de Actividades</span>
                </a>
            </li><!-- Actividades -->
        </ul>
</aside><!-- End Sidebar-->

<main id="main" class="main">
