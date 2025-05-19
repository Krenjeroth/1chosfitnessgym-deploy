<?php

use Illuminate\Http\Request;
use App\Http\Middleware\AuthGates;
use App\Http\Resources\UserResource;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PlanController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\GenderController;
use App\Http\Controllers\MemberController;
use App\Http\Controllers\MembershipController;

Route::post('/login', function (Request $request) {
    $credentials = $request->validate([
        'email' => ['required', 'email'],
        'password' => ['required'],
    ]);

    if (!Auth::attempt($credentials)) {
        return response()->json(['message' => 'Invalid credentials'], 401);
    }

    $request->session()->regenerate();

    return response()->json([
        'user' => new \App\Http\Resources\UserResource(Auth::user())
    ]);
});

Route::post('/logout', function (Request $request) {
    Auth::logout();
    $request->session()->invalidate();
    $request->session()->regenerateToken();

    return response()->json(['message' => 'Logged out']);
});

Route::group(['middleware' => ['auth:sanctum', AuthGates::class]], function () {
  Route::get('user', function (Request $request) {
      return UserResource::make($request->user());
  });

  Route::apiResource('users', UserController::class);
  
  Route::apiResource('members', MemberController::class);
  
  Route::apiResource('memberships', MembershipController::class);

  Route::apiResource('genders', GenderController::class);
  
  Route::apiResource('plans', PlanController::class);
  
  Route::get('gender-select', [GenderController::class, 'select']);
  Route::get('plan-select', [PlanController::class, 'select']);
  Route::get('member-select', [MemberController::class, 'select']);
  Route::get('member-no-membership-select', [MemberController::class, 'memberNoMembership']);
});