<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Character;


class CharacterController extends Controller {
    /**
     * Create a new controller instance.
     *
     * @return void
     */

     public function getAll() {
        $character = Character::select('name','description','image')
                     ->orderBy('created_at')
                     ->get();
        return response()->json($character);
    }
    


}