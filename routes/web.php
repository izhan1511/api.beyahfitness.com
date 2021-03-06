<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
 */
// To generate App Key.
// $router->get('/key', function() {
//     return \Illuminate\Support\Str::random(32);
// });

$router->get('/', function () use ($router) {
    return $router->app->version();
});
$router->get('/test', 'ExampleController@test');

$router->post('/login', 'LoginController@login');
$router->post('/register', 'UserController@register');
$router->get('/user', ['middleware' => 'auth', 'uses' => 'UserController@get_user']);

$router->get('/forget', 'LoginController@forget');

$router->group(['middleware' => 'auth', 'uses' => 'UserController@get_user'], function () use ($router) {
    //blog post
    $router->post('blog', 'blogController@blogStore');
    $router->get('blogall', 'blogController@blogAll');

    //Workout Category
    $router->post('/workoutcategory', 'workoutController@storeCat');
    $router->get('/getworkoutcategory', 'workoutController@showCat');

    //Workout Videos
    $router->post('/workoutvideos', 'workoutController@store');
    $router->get('wvcat', 'workoutController@showbyCat');
    $router->get('wvall', 'workoutController@index');

    //Workout Logs
    $router->post('wvlogs', 'workoutController@wvUserLogs');
    $router->get('wvgetlogs', 'workoutController@wvgetlogs');

    // Drink Logs
    $router->post('drinkLogs', 'workoutController@drinkLogs');
    $router->get('drinkUsrLogs', 'workoutController@drinkUsrLogs');

    $router->get('logout', 'UserController@logout');
});
