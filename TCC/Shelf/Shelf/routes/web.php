<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use Shelf\app\Http\Controllers\Auth\LoginController;
use Shelf\app\Http\Controllers\Auth\RegisterController;

Route::get('/', function () {
    return view('index');
});

Route::get('/about', function () {
    return view('about');
});

Route::get('/prices', function () {
    return view('prices');
});

Route::get('/home', function () {
    return view('home');
});

Route::get('/discover', function () {
    return view('discover');
});

Route::get('login', [LoginController::class, 'showLoginForm'])->name('login');
Route::post('login', [LoginController::class, 'login']);

Route::post('logout', [LoginController::class, 'logout'])->name('logout');

Route::get('register', [RegisterController::class, 'showRegistrationForm'])->name('register');
Route::post('register', [RegisterController::class, 'register']);

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
