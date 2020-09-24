<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\User;
use Hash;
use DB;

class UsersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = User::where('role', '!=', 'A')->get();
        return view('admin.users.indexx', compact('users'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
      
      $names = ["Viral adhiya jayeshbhai",
      "Borad Yash",
      "Faldu Piyuk Jitendrabhai",
      "Gajera krunal ashokbhai",
      "HUDKA DEEP NAVINBHAI",
      "190821006",
      "Kirti R. Keshwala ",
      "Keshwala Rupa Nathabhai",
      "NAGANI PRASHANT HITESHBHAI ",
      "Pansara Mirali Dineshbhai",
      "Patadiya Krunal Rajeshbhai",
      "Pethani nikhil rajeshbhai",
      "nikhil",
      "Shukla Bhavik Dushyant bhai",
      "Avkashi",
      "Vagadiya Shyam Lalitbhai",
      "VANZARA SAVAN RASIKBHAI",
      "Vasoya Nidhi Rameshchandra",
      "Vekariya Meet ",
      "Padariya Hit Kishorbhai"];

      $emails = ["viraladhiya678@gmail.com",
      "boradyash123@gmail.com",
      "piyukfaldu12@gmail.com",
      "krunalgajera3840@gmail.com",
      "deephudka510@gmail.com",
      "mscit190821006@gmail.com",
      "kirtikeshawala14@gmail.com",
      "rupakeshwala1998@gmail.com",
      "prashantnagani25@gmail.com",
      "miralipansara06@gmail.com",
      "krunalpatadiya02@gmail.com",
      "nikhilpethani05@gmail.com",
      "nikhil@gmail.com",
      "bhavikshukla17@gmail.com",
      "akitaki7888@gmail.com",
      "shyamvagadiya@gmail.com",
      "savanvanzaraa@icloud.com",
      "nidhivasoya21@gmail.com",
      "das.atmiya.1618@gmail.com",
      "heetpadariya36@gmail.com"];

      $passwords = ["9374477173",
      "7600662666",
      "9727691235",
      "9904527236",
      "6354176735",
      "190821006",
      "9725789417",
      "7984422433",
      "9016276036",
      "8128335801",
      "8866259202",
      "9737273656",
      "8999908686",
      "8238332383",
      "7574805580",
      "9824860469",
      "9924788801",
      "9638578936",
      "9104964840",
      "8200588029"];

      //$i=0;
      for($i=0;$i<count($names);$i++)
      {
        User::create([
          'name' => $names[$i],
          'username' => $names[$i],
          'email' => $emails[$i],
          'password' => bcrypt($passwords[$i]),
          'mobile' => $passwords[$i],
          'address' => "Rajkot",
          'city' => "Rajkot",
          'role' => "S",
        ]);
      }
      
      return "users created success";
      
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
          'name' => 'required|string|max:255',
          'email' => 'required|string|email|max:255|unique:users',
          'mobile' => 'unique:users',
          'password' => 'required|string|min:6',
        ]);

        $input = $request->all();

        User::create([
          'name' => $input['name'],
          'username' => $input['name'],
          'email' => $input['email'],
          'password' => bcrypt($input['password']),
          'mobile' => $input['mobile'],
          'address' => $input['address'],
          'city' => $input['city'],
          'role' => $input['role'],
        ]);

        return back()->with('added', 'User has been added');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
      //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $user = User::findOrFail($id);

        $request->validate([
          'name' => 'required|string|max:255',
          'email' => 'required|string|email',
          'password' => 'required|string|min:6',
          'mobile' => 'unique:users',
        ]);

        $input = $request->all();

         // if(isset($request->changepass))
         //    {
         //       DB::table('users')->where('id', $user->id)->update(['password' => Hash::make($request->password)]);
         //    }
         //    else
         //    {
         //      $input['password'] = $user->password;
         //    }

        if (Auth::user()->role == 'A') {
          $user->update([
            'name' => $input['name'],
            'username' => $input['name'],
            'email' => $input['email'],
            'password' => bcrypt($input['password']),
            'mobile' => $input['mobile'],
            'address' => $input['address'],
            'city' => $input['city'],
            'role' => $input['role'],
          ]);
        } else if (Auth::user()->role == 'S') {
          $user->update([
            'name' => $input['name'],
            'username' => $input['name'],
            'email' => $input['email'],
            'password' => bcrypt($input['password']),
            'mobile' => $input['mobile'],
            'address' => $input['address'],
            'city' => $input['city'],
          ]);
        }

        return back()->with('updated', 'Student has been updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $user = User::findOrFail($id);
        $user->delete();
        return back()->with('deleted', 'User has been deleted');
    }

}
