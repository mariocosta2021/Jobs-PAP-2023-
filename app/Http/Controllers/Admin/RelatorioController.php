<?php

namespace App\Http\Controllers\Admin;

use App\Classes\Logger;
use App\Http\Controllers\Controller;
use App\Models\Candidaturas;
use App\Models\Vaga;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use PDF;

class RelatorioController extends Controller
{
    private $Logger;

    public function __construct()
    {
        $this->Logger = new Logger;
    }

    //GERANDO RELATORIO GERAL DE VAGAS
    public function vaga()
    {
        //Relatorio do Adiminstrador
        if (Auth::user()->level == "Administrador-Master"){
            $response['vagaPublocadas'] = Vaga::get();
            $response['vaga_total'] = Vaga::count();
            $pdf = PDF::loadview('admin.pdf.vaga.index', $response);

            //Logger
            $this->Logger->log('info', 'Imprimiu uma lista de vagas ');
            return $pdf->setPaper('A4', 'landscape')->stream('pdf');
            }

        //Relatorio da Empresa
        if (Auth::user()->level == "Administrador"){
        $response['vagaPublocadas'] = Vaga::where('fk_user', Auth::user()->id)->get();
        $pdf = PDF::loadview('admin.pdf.vaga.index', $response);

        //Logger
        $this->Logger->log('info', 'Imprimiu uma lista de vagas ');
        return $pdf->setPaper('A4', 'landscape')->stream('pdf');
        }
    }


    //GERANDO RELATORIO DE VAGAS POR EMPRESA
    public function vaga_empresa()
    {
        //Relatorio do Administrador
        if (Auth::user()->level == "Administrador-Master"){
        //$response['canditados'] = Candidaturas::with('canditados')->where('fk_publicador', Auth::user()->id)->paginate(10);
        //$response['vaga_empresa'] = Vaga::where('fk_user', Auth::user()->id)->get();
        $response['vaga_empresa'] = Vaga::get();
        $response['vaga_empresaTotal'] = Vaga::count();
        $pdf = PDF::loadview('admin.pdf.vaga.vaga_empresa', $response);

        //Logger
        $this->Logger->log('info', 'Imprimiu uma lista de Vagas por empresa ');
        return $pdf->setPaper('A4', 'landscape')->stream('pdf');
        }

        //Relatorio da Empresa
        if (Auth::user()->level == "Administrador"){
            $response['vaga_empresa'] = Vaga::with('')->where('fk_user', 'nomeEmresa', Auth::user()->id);
            $response['vaga_empresaTotal'] = Vaga::count();
            $pdf = PDF::loadview('admin.pdf.vaga.vaga_empresa', $response);

            //Logger
            $this->Logger->log('info', 'Imprimiu uma lista de Vagas por empresa');
            return $pdf->setPaper('A4', 'landscape')->stream('pdf');
            }
    }

    //GERANDO RELATORIO DE INSCRITOS ÀS VAGAS
    public function inscritos()
    {
        //Relatorio do Administrador
        if (Auth::user()->level == "Administrador-Master"){
        //$response['canditados'] = Candidaturas::with('canditados')->where('fk_publicador', Auth::user()->id)->paginate(10);
        $response['canditados'] = Candidaturas::get();
        $response['candidados'] = Candidaturas::count();

        $pdf = PDF::loadview('admin.pdf.inscritos.index', $response);

        //Logger
        $this->Logger->log('info', 'Imprimiu uma lista de inscritos ');
        return $pdf->setPaper('A4', 'landscape')->stream('pdf');
        }

        //Relatorio da Empresa
        if (Auth::user()->level == "Administrador"){
            $response['canditados'] = Candidaturas::with('canditados')->where('fk_publicador', Auth::user()->id)->paginate(10);
            $pdf = PDF::loadview('admin.pdf.inscritos.index', $response);

            //Logger
            $this->Logger->log('info', 'Imprimiu uma lista de inscritos ');
            return $pdf->setPaper('A4', 'landscape')->stream('pdf');
            }
    }



        //GERANDO RELATORIO DE INSCRITOS ÀS VAGAS
        public function vaga_filtro()
        {
            //Relatorio do Administrador
            if (Auth::user()->level == "Administrador-Master"){
            //$response['canditados'] = Candidaturas::with('canditados')->where('fk_publicador', Auth::user()->id)->paginate(10);
            $response['canditados'] = Candidaturas::get();
            $response['candidados'] = Candidaturas::count();

            //$pdf = PDF::loadview('admin.pdf.inscritos.index', $response);

            //Logger
            $this->Logger->log('info', 'Imprimiu uma lista de inscritos ');
            return view('admin.pdf.VagaFiltro.index', $response);
        }

        }

}
