<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Topic extends Model
{
    protected $fillable = [
      'title', 'per_q_mark', 'description', 'timer', 'totalquestion','show_ans','amount',
    ];

    public function question(){
      return $this->hasOne('App\Question');
    }

    public function user_quiz() {
      return $this->hasOne('App\UserQuiz');
    }

    public function answer(){
      return $this->hasOne('App\Answer');
    }
    
    public function user() {
      return $this->belongsToMany('App\User','topic_user')
         ->withPivot('amount','transaction_id', 'status')
        ->withTimestamps();
    }
}
