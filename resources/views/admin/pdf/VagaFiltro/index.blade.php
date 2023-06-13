@extends('layouts.merge.dashboard')
@section('titulo', 'Relatório Personalizado')
@section('content')


<form action="{{route('admin.relatorio.vagas_empresa')}}" class="my-5" >

    <div class="form-group col-md-3 d-inline-block">
        <label for="filter" class="form-label">Filtro</label>
        <select name="filter" id="filter" onchange="mudar()" class="form-control">
            <option value="All">Todos</option>
            <option value="day">Hoje</option>
            <option value="date">Data específica</option>
            <option value="month">Mês</option>
            <option value="year">Ano</option>
            <option value="intervalo">Intervalo</option>

        </select>

    </div>
    <div class="form-group col-md-3 d-inline-block mx-4">
        <label for="periodo" class="form-label">Periodo</label>
        <input type="date" class="form-control" name="date" id="date"hidden>
        <input type="month" class="form-control" name="month" id="month"hidden>
        <input type="number" class="form-control" name="year" id="year"hidden>
        <input type="date" class="form-control" name="intervalo1" id="intervalo1"hidden>
        <input type="date" class="form-control" name="intervalo2" id="intervalo2"hidden>

    </div>
    <div class="form-group col-md-3 d-inline-block mx-4">
        <button class="btn btn-primary" type="submit">Emitir Relatório</button>
    </div>
</form>



<script>

var date = new Date().toISOString().split('T')[0];
document.getElementsByName("date")[0].setAttribute('max', date);

var range = new Date().toISOString().split('T')[0];
document.getElementsByName("intervalo1")[0].setAttribute('max', range);

var range2 = new Date().toISOString().split('T')[0];
document.getElementsByName("intervalo2")[0].setAttribute('max', range2);


function mudar() {
var estado = $('#filter').val();
if (estado == "date") {
document.getElementById("date").removeAttribute('hidden');
document.getElementById("date").setAttribute('required', 'required');
document.getElementById("month").setAttribute('hidden', 'hidden');
document.getElementById("year").setAttribute('hidden', 'hidden');
document.getElementById("month").removeAttribute('required');
document.getElementById("year").removeAttribute('required');

document.getElementById("intervalo1").setAttribute('hidden', 'hidden');
document.getElementById("intervalo2").setAttribute('hidden', 'hidden');

document.getElementById("intervalo1").removeAttribute('required');
document.getElementById("intervalo2").removeAttribute('required');
} else if (estado == "month") {
document.getElementById("month").removeAttribute('hidden');
document.getElementById("month").setAttribute('required', 'required');
document.getElementById("date").setAttribute('hidden', 'hidden');
document.getElementById("year").setAttribute('hidden', 'hidden');
document.getElementById("date").removeAttribute('required');
document.getElementById("year").removeAttribute('required');

document.getElementById("intervalo1").setAttribute('hidden', 'hidden');
document.getElementById("intervalo2").setAttribute('hidden', 'hidden');

document.getElementById("intervalo1").removeAttribute('required');
document.getElementById("intervalo2").removeAttribute('required');
} else if (estado == "year") {
document.getElementById("year").removeAttribute('hidden');
document.getElementById("year").setAttribute('required', 'required');
document.getElementById("date").setAttribute('hidden', 'hidden');
document.getElementById("month").setAttribute('hidden', 'hidden');
document.getElementById("date").removeAttribute('required');
document.getElementById("month").removeAttribute('required');

document.getElementById("intervalo1").setAttribute('hidden', 'hidden');
document.getElementById("intervalo2").setAttribute('hidden', 'hidden');

document.getElementById("intervalo1").removeAttribute('required');
document.getElementById("intervalo2").removeAttribute('required');
} else if (estado == "intervalo") {
document.getElementById("intervalo1").removeAttribute('hidden');
document.getElementById("intervalo1").setAttribute('required', 'required');
document.getElementById("intervalo2").removeAttribute('hidden');
document.getElementById("intervalo2").setAttribute('required', 'required');

document.getElementById("date").setAttribute('hidden', 'hidden');
document.getElementById("month").setAttribute('hidden', 'hidden');
document.getElementById("year").setAttribute('hidden', 'hidden');



document.getElementById("date").removeAttribute('required');
document.getElementById("month").removeAttribute('required');
document.getElementById("year").removeAttribute('required');


}
}
</script>
@endsection
