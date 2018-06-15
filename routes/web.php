<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::redirect('/','blog');

Auth::routes();

Route::get('blog', 'Web\PageController@home')->name('home');

Route::get('blog/{slug}', 'Web\PageController@notice')->name('notice');


Route::resource('notices', 'Admin\NoticeController');

