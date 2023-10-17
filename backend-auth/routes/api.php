<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::middleware('auth:sanctum')->group(function () {
    
    Route::get('/check-auth', [AuthCheckerController::class, 'checkAuth']);
    
    Route::post('/user-logout', [ApiAuthController::class, 'logout']);
    
    // Route::get('/confirm', [ApiController::class, 'getConfirm']);

});

Route::post('/user-login', [ApiAuthController::class, 'login']);


Route::get('/users', [ApiController::class, 'getUsers']);