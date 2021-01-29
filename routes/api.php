<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::resource('soal', 'Api\Soal\SoalController')->except([
    'create', 'edit']);

Route::resource('user', 'Api\User\UserController')->except([
        'create', 'edit']);


Route::post('user/login', 'Api\User\UserController@login');
    //pengaturan
Route::get('peraturan', 'Api\Peraturan\PeraturanController@index');
Route::put('peraturan', 'Api\Peraturan\PeraturanController@update');

Route::get('nilai', 'Api\Nilai\NilaiController@index');
Route::get('nilai/{android_id}', 'Api\Nilai\NilaiController@show');


Route::get('dashboard', 'Api\Nilai\NilaiController@dashboard');