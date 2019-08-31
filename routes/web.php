<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/
Auth::routes();

Route::get('/logout', 'Auth\LoginController@logout');

Route::get('/', function () {
    return view('welcome');
});

Route::get('/home', 'HomeController@index');

Route::get('/post/{id}', ['as'=>'home.post', 'uses'=>'AdminPostsController@post']);

Route::group(['middleware'=>'admin'], function () {
    Route::get('/admin', function () {
        return view('admin.index');
    });
    Route::resource('admin/users', 'AdminUsersController', ['names'=>[
        'index'=>'admin.users.index',
        'create'=>'admin.users.create',
        'store'=>'admin.users.store',
        'edit'=>'admin.users.edit'
    ]]);
    Route::resource('admin/posts', 'AdminPostsController', ['names'=>[
        'index'=>'admin.posts.index',
        'create'=>'admin.posts.create',
        'store'=>'admin.posts.store',
        'edit'=>'admin.posts.edit'
    ]]);
    Route::resource('admin/categories', 'AdminCategoriesController', ['names'=>[
        'index'=>'admin.categories.index',
        'create'=>'admin.categories.create',
        'store'=>'admin.categories.store',
        'edit'=>'admin.categories.edit'
    ]]);
    Route::resource('admin/media', 'AdminMediasController', ['names'=>[
        'index'=>'admin.media.index',
        'create'=>'admin.media.create',
        'store'=>'admin.media.store',
        'edit'=>'admin.media.edit'
    ]]);
    Route::resource('admin/comments', 'PostCommentsController', ['names'=>[
        'index'=>'admin.comments.index',
        'create'=>'admin.comments.create',
        'store'=>'admin.comments.store',
        'edit'=>'admin.comments.edit',
        'show'=>'admin.comments.show'
    ]]);
    Route::resource('admin/comment/replies', 'CommentRepliesController', ['names'=>[
        'index'=>'admin.comment.replies.index',
        'create'=>'admin.comment.replies.create',
        'store'=>'admin.comment.replies.store',
        'edit'=>'admin.comment.replies.edit'
    ]]);
});

/*
 | Give access to a regular user and not an admin
 */
Route::group(['middleware'=>'auth'], function () {
    Route::post('comment/reply', 'CommentRepliesController@createReply');
});

// Route::group(
//     ['as' => 'admin.', // the trailing dot makes me think this is unintended
//     'prefix' => 'admin',
//     'middleware' => 'admin'],
//     function () {
//         Route::resource('categories', 'AdminCategoriesController');
//         Route::resource('jobtitles', 'AdminJobtitlesController');
//         Route::resource('skills', 'AdminSkillsController');
//         Route::resource('users', 'AdminUsersController');
//         Route::resource('packages', 'AdminPackagesController');
//     }
// );

// Route::group(
//     // ['prefix' => 'admin', 'middleware' => 'admin'],
//     ['as' => 'admin.', 'middleware' => 'admin'],
//     function () {
//         Route::get('/admin', function () {
//             return view('admin.index');
//         });
//         Route::resource('admin/users', 'AdminUsersController');
//         Route::resource('admin/posts', 'AdminPostsController');
//         Route::resource('admin/categories', 'AdminCategoriesController');
//         Route::resource('admin/media', 'AdminMediasController');
//         Route::resource('admin/comments', 'PostCommentsController');
//         Route::resource('admin/comment/replies', 'CommentRepliesController');
//     }
// );
