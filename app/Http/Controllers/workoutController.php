<?php

namespace App\Http\Controllers;
use App\workoutvideo;
use App\workoutcategory;
use App\workoutLog;
use App\drinklog;
use Illuminate\Http\Request;

class workoutController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function index()
    {
        try{
            return workoutvideo::all();
       }
       catch(\Exception $e){
           return $e;
       }
    }

    public function show($id)
    {
        return workoutvideo::find($id);
    }

    public function showbyCat(request $request)
    {
        return workoutvideo::where('categoryId',$request->id)->get();
    }

    public function store(request $request)
    {
        workoutvideo::create($request->all());
        return workoutvideo::all();
    }

    public function update(request $request, $id)
    {
        $workoutvideo = workoutvideo::findOrFail($id);
        $workoutvideo->update($request->all());

        return workoutvideo::all();
    }

    public function delete(request $request, $id)
    {
        $workoutvideo = workoutvideo::findOrFail($id);
        $workoutvideo->delete();

        return workoutvideo::all();
    }

    public function storeCat(request $request)
    {
        workoutcategory::create($request->all());
        return workoutcategory::all();
    }

    public function showCat()
    {
        return workoutcategory::all();
    }

    public function wvUserLogs(request $request){
        workoutLog::create($request->all());
        return response()->json([
            'success'=>true,
            'message'=>'Succesfully Store Logs'
        ]);
    }

    public function wvgetlogs(request $request){
        return response()->json([
            'success'=>true,
            'message'=> workoutLog::where('userId',$request->id)->with('mv')->get()
        ]);
    }

    public function drinkLogs(request $request){

        try {
            drinklog::create($request->all());
        } catch (\Illuminate\Database\QueryException $exception) {
            // You can check get the details of the error using `errorInfo`:
            return response()->json([
                'success'=>false,
                'message'=> $exception->errorInfo
            ]);

            // Return the response to the client..
        }
    }

    public function drinkUsrLogs(request $request){
        return response()->json([
            'success'=>true,
            'message'=> drinklog::where('userId',$request->id)->get()
        ]);
    }

    //
}
