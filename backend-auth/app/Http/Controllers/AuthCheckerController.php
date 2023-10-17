<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
class AuthCheckerController extends Controller
{
    public function checkAuth(Request $request)
    {

        // Check if the user is authenticated
      
        if (auth('sanctum')->user()) {
            return response()->json(['authenticated' => true], 200);
        }

        return response()->json(['authenticated' => false], 401);
    }
}
