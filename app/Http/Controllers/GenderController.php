<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Gender;
use App\Http\Resources\GenderResource;

class GenderController extends Controller
{
    public function select()
    {
        $genders = Gender::all();

        return response()->json([
          'data' => GenderResource::collection($genders)
        ]);
    }
}
