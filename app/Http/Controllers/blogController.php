<?php

namespace App\Http\Controllers;

use App\blog;
use Illuminate\Http\Request;

class blogController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */

    public function blogStore(request $request)
    {
        return response()->json([
            'success'=>true,
            'message'=> blog::create($request->all())
        ]);
    }

    public function blogAll(request $request){
        return response()->json([
            'success'=>true,
            'message'=> blog::all()
        ]);
    }
}
