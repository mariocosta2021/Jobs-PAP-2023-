<!DOCTYPE html>
<html lang="pt-pt">

<head>
    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Relatório de Vagas Publicadas </title>
</head>

<body style='height:auto; width:100%;  no-repeat center;'>
    <header class="col-12 mt-2 mb-5">
        <img src="site/assets/img/jobs.png" alt="" width="200px">
        <p><h2 class="text-center">Relatório de Vagas Publicadas</h2> <b>Data:</b> {{ date('d-m-Y') }}<br></p>
    </header>
    <section class="col-12">
        <table class="table table-striped">
            <thead>
                <tr class="text-center">
                    <th>#</th>
                    <th>Nome da empresa </th>
                    <th>Titulo do Emprego</th>
                    <th>Data de Publicação</th>
                    <th>Disponível até</th>
                    <th>Vagas Diponíveis</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($vagaPublocadas as $item)
                    <tr class="text-center text-dark">
                        <td>{{ $item->id }}</td>
                        <td>{{ $item->nomeEmresa }} </td>
                        <td>{{ $item->tituloEmprego }} </td>
                        <td>{{ date('d/m/Y' , strtotime($item->created_at)) }} </td>
                        <td>{{ date('d/m/Y' , strtotime($item->dataVaga ))}} </td>
                        <td>{{ $item->tempoVaga }} </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </section>
    <p>TOTAL: {{$vaga_total}}</p>
</body>
</html>
