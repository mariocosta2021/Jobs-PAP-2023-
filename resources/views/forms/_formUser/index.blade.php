@csrf

<div class="form-row">
    <div class="form-group col-md-6">
        <label for="name">Nome</label>
        <input type="text" class="form-control" placeholder="Nome" id="name" name="name"
            value="{{ isset($user->name) ? $user->name : old('name') }}" required autofocus />
    </div>
    <div class="form-group col-md-6">
        <label for="email">Email</label>
        <input type="email" class="form-control" placeholder="Email" id="email" name="email"
            value="{{ isset($user->email) ? $user->email : old('email') }}" required />
    </div>
    <div class="form-group col-md-6">
        <label for="email">Nome de Usuário</label>
        <input type="text" class="form-control" placeholder="Nome de usuário" id="username" name="username"
            value="{{ isset($user->username) ? $user->username : old('username') }}" required />
    </div>

    <div class="form-group col-md-4">
        <label for="level">Nível de Acesso</label>
        <select name="level" id="level" class="form-control" required>
            @if (isset($user->level))
                <option value="{{ $user->level }}" class="text-primary h6" selected>

                    @if ($user->level == 'Administrador')
                        Empresa
                    @endif
                    @if ($user->level == 'cliente')
                        Candidato
                    @endif
                    @if ($user->level == 'Administrador-Master')
                        Administrador-Master
                @endif
                </option>
            @else
                <option disabled selected>Selecione o nível de acesso</option>
            @endif

            @if (Auth::user()->level == 'Administrador-Master')
            <option value="Administrador-Master">Administrador-Master</option>
            <option value="Administrador">Empresa</option>
                <option value="cliente">Candidato</option>
            @endif

        </select>
    </div>

</div>
<hr class="my-4">
<div class="row mb-4">
    <div class="col-md-6">
        <div class="form-group">
            <label for="password">Palavra-passe</label>
            <input type="password" class="form-control" id="password" class="form-control" name="password"
                autocomplete="new-password" placeholder="Palavra-passe" required />
        </div>
        <div class="form-group">
            <label for="password_confirmation">Confirmar Palavra-passe</label>
            <input type="password" class="form-control" id="password_confirmation" name="password_confirmation"
                placeholder="Confirmar Palavra-passe" required />
        </div>
    </div>
    <div class="col-md-6">
        <b class="mb-2 text-dark">Requisitos de senhas</b>
        <p class="small text-dark mb-2"> Para criar uma nova senha, você deve atender a todos os seguintes requisitos:
        </p>
        <ul class="small text-dark pl-4 mb-0">
            <li>Mínimo 8 caracteres</li>
        </ul>
    </div>
</div>
