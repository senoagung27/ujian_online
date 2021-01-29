<?php

use Faker\Generator as Faker;
use App\Nilai;

$factory->define(Nilai::class, function (Faker $faker) {
    return [
        'id_user' => function () {
            return \App\User::all()->random();
        },
        'benar' => rand(10, 20),
        'salah' => rand(10, 20),
        'kosong' => rand(10, 20),
        'score' => rand(10, 20),
        'benar' => rand(10, 20),
        'keterangan' => $faker->word,
    ];
});
