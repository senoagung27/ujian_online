<?php

namespace App\Http\Controllers\Api\Nilai;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Nilai;
use App\User;
use App\Soal;
use App\Http\Resources\Nilai\NilaiResource;
use DB;

class NilaiController extends Controller
{
    public function index()
    {
       return NilaiResource::collection(Nilai::latest()->get());
    }

    public function show($android_id)
    {
        $users = DB::table('table_nilais')
            ->join('users', 'users.id', '=', 'table_nilais.id_user')
            ->where('android_id', $android_id)
            ->select('table_nilais.benar', 'table_nilais.salah', 'table_nilais.kosong', 'table_nilais.score', 'users.android_id', 'users.name', 'users.jenis_kelamin', 'users.kelas', 'users.email', 'users.nik')->get();
        return response()->json([
            'data' => $users
        ]);
    }
    public function dashboard()
    {
        $lulus = Nilai::where('keterangan', 'LULUS')->count();
        $Tidak = Nilai::where('keterangan', 'TIDAK LULUS')->count();
        $user = User::all()->count();
        $soal = Soal::all()->count();
        return  response()->json([

            'lulus' => $lulus,
            'Tidak_Lulus' => $Tidak,
            'user' => $user,
            'total_soal' => $soal

        ], 202);
    }

}
