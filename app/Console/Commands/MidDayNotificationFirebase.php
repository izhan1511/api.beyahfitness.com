<?php

namespace App\Console\Commands;

use App\User;
use Illuminate\Console\Command;
use Log;

class MidDayNotificationFirebase extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'midday:notification';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Send notification after six hours to users';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $firebaseToken = User::whereNotNull('firebase_token')->pluck('firebase_token')->all();
        $SERVER_API_KEY = config('services.firebase.key');
        $data = [
            "registration_ids" => $firebaseToken,
            "notification" => [
                "title" => "Forget to drink ?",
                "body" => "Its time to keep your self Hydrate",
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
}
