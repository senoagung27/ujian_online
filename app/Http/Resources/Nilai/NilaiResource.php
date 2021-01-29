<?php

namespace App\Http\Resources\Nilai;

use Illuminate\Http\Resources\Json\JsonResource;

class NilaiResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'android_id' => $this->user->android_id,
            'id' => $this->id,
            'Nama' => $this->user->name,
            'Kelas' => $this->user->kelas,
            'nik'  => $this->user->nik,
            'jenis_kelamin' => $this->user->jenis_kelamin,
            'Benar' => $this->benar,
            'Salah' => $this->salah,
            'Kosong' => $this->kosong,
            'Nilai' => $this->score,
            'Keterangan' => $this->keterangan,
            'tanggal' => $this->created_at
        ];
    }
}
