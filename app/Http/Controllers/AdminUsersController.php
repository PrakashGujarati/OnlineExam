<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\User;
use Hash;
use DB;

class AdminUsersController extends Controller
{
    public function create()
    {
      $names = ["AdminPG","Prakash Gujarati","Viral adhiya jayeshbhai",
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

      $emails = ["pgadmin@gmail.com","prakashgujarati@gmail.com","viraladhiya678@gmail.com",
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

      $passwords = ["9898098980","9925336377","9374477173",
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
}
