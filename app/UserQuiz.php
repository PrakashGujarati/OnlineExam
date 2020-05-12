<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserQuiz extends Model
{
    protected $fillable = [
        'user_id', 'topic_id', 'hours', 'minutes', 'seconds','mark','total_mark','status',
      ];

    public function user(){
      return $this->belongsTo('App\User');
    }
    public function topic() {
        return $this->belongsTo('App\Topic');
      }
}
