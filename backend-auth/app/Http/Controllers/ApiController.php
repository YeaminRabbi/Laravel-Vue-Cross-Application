<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;


class ApiController extends Controller
{
    public function getUsers(Request $request) {
        $users = User::with('image')
            ->get()
            ->map(function($user) {
                return [
                    'id' => $user->id,
                    'name' => $user->name,
                    'email' => $user->email,
                    'image' => $user->image ? asset($user->image->url) : null,
                    'role' => $user->getRoleNames()[0] ?? 'user' 
                ];
            });
    
        return response()->json([
            "success" => true,
            "users" => $users,
        ]);
    }
    


}
