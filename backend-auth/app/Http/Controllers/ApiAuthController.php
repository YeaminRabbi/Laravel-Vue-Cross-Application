<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class ApiAuthController extends Controller
{

    const AUTH_TOKEN = 'laravel-auth-token';


    public function login(Request $request)
    {
        $credentials = [
            'email' => $request->get('email'),
            'password' => $request->get('password'),
        ];

        if (Auth::attempt($credentials)) {
            $user = Auth::user();
            $user->token = $user->createToken(self::AUTH_TOKEN)->plainTextToken;
            $user->load('roles:id,name');

            return response()->json([
                'user' => $user,
                'token' => $user->token,
            ]);

        }

        return $this->respondUnAuthorized('Invalid credentials');
    }

   

    // public function logout(Request $request)
    // {
    //     // Revoke the current user's token
    //     $request->user()->currentAccessToken()->delete();

    //     return response()->json(['message' => 'Successfully logged out']);
    // }
}
