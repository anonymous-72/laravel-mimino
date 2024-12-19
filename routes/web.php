<?php

use App\Http\Controllers\AboutController;
use App\Http\Controllers\DishController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\MenuController;
use App\Http\Controllers\ReservationController;
use App\Http\Middleware\SetLocale;
use Illuminate\Support\Facades\Route;

Route::middleware([SetLocale::class])->group(function () {
    Route::get('/', [HomeController::class, 'index'])->name('home');
    Route::get('/about', [AboutController::class, 'index'])->name('about');
    Route::get('/menu', [MenuController::class, 'index'])->name('menu');
    Route::get('/reservation', [ReservationController::class, 'index'])->name('reservation');

    Route::get('/change-language/{lang}', function ($lang) {
        session(['locale' => $lang]);
        return redirect()->back();
    })->name('change-language');
});

Route::resource('dish', DishController::class);
