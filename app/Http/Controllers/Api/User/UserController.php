<?php

namespace App\Http\Controllers\Api\User;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use App\Http\Resources\User\UserResources;
use Auth;

class UserController extends Controller
{
    public function index()
    {
        return UserResources::collection(User::latest()->get());
    }

    public function store(Request $request)
    {
        $user = User::create($request->all());
        if ($user){
            return response()->json([
                'status'=> 'sukses'
            ]);
        }
    }

    public function show($android_id)
    {
        $user=User::where('android_id',$android_id)->first();
        return new UserResources($user);
    }

    public function update(Request $request, $android_id)
    {
        $user=User::where('android_id',$android_id)->first();
        $user->update($android_id->all());
        return response(new UserResources($user), Response::HTTP_CREATED);
    }
    public function destroy(User $user)
    {
       $user->delete();
       return response('Delete', Response::HTTP_OK);
    }

    public function login(Request $request)
    {
        if (!Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
            return response()->json([
                'status' => 'failed'
            ]);
        } else {
            return response()->json([
                'status' => 'success'
            ]);
        }
    }

}
