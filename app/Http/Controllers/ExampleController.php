<?php

namespace App\Http\Controllers;
use App\User;
use Log;
class ExampleController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    public function test()
    {
        $firebaseToken = User::whereNotNull('firebase_token')->pluck('firebase_token')->all();
        $SERVER_API_KEY = config('services.firebase.key');
        // dd($SERVER_API_KEY);
        $data = [
            "registration_ids" => $firebaseToken,
            "notification" => [
                "title" => "Set Drink Target",
                "body" => "Its time to set your daily water drink target.",
                "screen" => "dashboard",
            ],
        ];
        $dataString = json_encode($data);
        $headers = [
            'Authorization: key=' . $SERVER_API_KEY,
            'Content-Type: application/json',
        ];
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send');
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $dataString);
        $response = curl_exec($ch);
        Log::error($response);
    }

    //
}
