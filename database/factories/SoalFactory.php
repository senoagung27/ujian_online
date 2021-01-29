<?php


use Faker\Generator as Faker;
use App\Soal;

$factory->define(Soal::class, function (Faker $faker) {
    return [
        'soal'      => $faker->name,
        'jawaban_a' => $faker->name,
        'jawaban_b' => $faker->name,
        'jawaban_c' => $faker->name,
        'jawaban_d' => $faker->name,
        'knc_jawaban' => 'b',
    ];
});
