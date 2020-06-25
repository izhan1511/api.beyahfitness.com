<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;
use App\User;

class UserController extends Controller
{
    public function register(Request $request)
    {
        $rules = [
            'username' => 'required',
            'email' => 'required',
            'password' => 'required',
            'gender' => 'required',
            'dateOfbirth' => 'required',
         ];

        $customMessages = [
             'required' => 'Username / email / password not found'
        ];
        // $this->validate($request, $rules, $customMessages);

        try {
            $hasher = app()->make('hash');
            $username = $request->input('username');
            $email = $request->input('email');
            $password = $hasher->make($request->input('password'));
            $gender = $request->input('gender');
            $dateOfbirth = $request->input('dateOfbirth');
            if (User::where('email', '=', $email)->count() > 0) {
                $res['status'] = true;
                $res['message'] = 'Error : User email exists';
                return response($res, 500);
             }
            $save = User::create([
                'username'=> $username,
                'email'=> $email,
                'password'=> $password,
                'api_token'=> '',
                'gender'=> $gender,
                'dateOfbirth'=> $dateOfbirth
            ]);
            $res['status'] = true;
            $res['message'] = 'Registration success!';
            return response($res, 200);

        } catch (\Illuminate\Database\QueryException $ex) {
            $res['status'] = false;
            $res['message'] = $ex->getMessage();
            return response($res, 500);
        }
    }

    public function get_user()
    {
        $user = User::all();
        if ($user) {
              $res['status'] = true;
              $res['message'] = $user;

              return response($res);
        }else{
          $res['status'] = false;
          $res['message'] = 'Cannot find user!';

          return response($res);
        }
    }

    public function logout(Request $request) {
		// remove the api_token, when logging out
        $user = User::where('api_token',$request->api_token)->first();
        if($user){
            $user->api_token = '';
            $user->save();

            return [
                'status' => 'success',
                'message' => 'Logout successfully.'
            ];
        }

		return [
			'status' => 'Error',
			'message' => 'Token not exist.'
		];

	}
}
