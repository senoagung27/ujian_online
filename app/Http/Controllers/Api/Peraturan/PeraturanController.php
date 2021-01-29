<?php

namespace App\Http\Controllers\Api\Peraturan;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Pengaturan;
use App\Soal;
use App\Http\Resources\Peraturan\PeraturanResource;
use Illuminate\Http\Response;

class PeraturanController extends Controller
{
    public function index()
    {
        return new PeraturanResource(Pengaturan::find(1));
    }

    public function update(Request $request)
    {
        $id = 1;
        $peraturan = Pengaturan::find($id);
        $peraturan->update($request->all());
        return response(new PeraturanResource($peraturan), Response::HTTP_CREATED);
    }
}
