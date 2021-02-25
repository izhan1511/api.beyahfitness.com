<?php
namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;

class LoginController extends Controller
{
    public function login(Request $request)
    {

        $rules = [
            'email' => 'required',
            'password' => 'required',
        ];

        $customMessages = [
            'required' => ':attribute tidak boleh kosong',
        ];
        $this->validate($request, $rules, $customMessages);
        $email = $request->input('email');
        try {
            $login = User::where('email', $email)->first();
            if ($login) {
                if ($login->count() > 0) {
                    if (Hash::check($request->input('password'), $login->password)) {
                        try {
                            $login->firebase_token = $request->input('firebase_token');
                            $api_token = sha1($login->id_user . time());
                            User::where('id', $login->id)->update(['api_token' => $api_token,'firebase_token'=>$request->input('firebase_token')]);
                            $res['status'] = true;
                            $res['message'] = 'Success login';
                            $res['data'] = $login;
                            $res['api_token'] = $api_token;
                            return response($res, 200);

                        } catch (\Illuminate\Database\QueryException $ex) {
                            $res['status'] = false;
                            $res['message'] = $ex->getMessage();
                            return response($res, 500);
                        }
                    } else {
                        $res['success'] = false;
                        $res['message'] = 'Username / email / password not found';
                        return response($res, 401);
                    }
                } else {
                    $res['success'] = false;
                    $res['message'] = 'Username / email / password  not found';
                    return response($res, 401);
                }
            } else {
                $res['success'] = false;
                $res['message'] = 'Username / email / password not found';
                return response($res, 401);
            }
        } catch (\Illuminate\Database\QueryException $ex) {
            $res['success'] = false;
            $res['message'] = $ex->getMessage();
            return response($res, 500);
        }
    }

    public function forget(Request $request)
    {

        $data = $request->all();
        $userDetails = User::where('email', $data['email'])->first();
        if ($userDetails == null) {
            $res['status'] = false;
            $res['message'] = "Email doesn't Exist";
            return response($res, 500);
        }
        $hasher = app()->make('hash');
        $random_password = $this->randomPassword(6);
        $new_pass = $hasher->make($random_password);
        User::where('email', $data['email'])->update(['password' => $new_pass]);
        $data = array(
            'email' => $userDetails->email,
            'name' => $userDetails->name,
            'password' => $random_password,
        );
        // dd($data);
        Mail::send('auth.emails.forget', $data, function ($message) use ($data) {
            $message->to($data['email']);
            $message->from('info@beyahfitness.com');
            $message->subject('Forget Password Request');
        });

        $res['status'] = true;
        $res['message'] = "Email has been send to your provided email with new password";
        $res['code'] = $random_password;
        return response($res, 500);
    }

    public function randomPassword($length)
    {
        $chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        return substr(str_shuffle($chars), 0, $length);
    }
}
