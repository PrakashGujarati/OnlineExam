<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Topic; 
use App\Question;
use App\Answer;
use  App\Http\Controllers\Controller;

class QuestionsController extends Controller
{
    /**
     * Display a listing of the resource.
     * 
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $topics = Topic::all();
        $questions = Question::all();
        return response()->json($topics);
    
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    
   /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //  $request->validate([
        //     'user_answer' => 'required'
        // ]);
        $user = auth()->user()->answers()->where('id','=',$request->id)->update(
			['topic_id' => $request->topic_id, 
            'question_id' => $request->question_id, 
            'user_answer' => $request->user_answer,
            'answer' => $request->answer]
		);
		  	
        return response()->json([$request->all()]);
    }

    public function fetchAnswer($topic_id,$id){
        $ans = auth()->user()->answers()->where([['topic_id',$topic_id],['question_id',$id]])->first();
        return $ans;    
    }
    public function fetchQuiz($topic_id){
        $user_quiz = auth()->user()->user_quizzes()->where([['topic_id', $topic_id]])->first();
        return $user_quiz;    
    }
    public function update_timer(Request $request)
    {
        //  $request->validate([
        //     'user_answer' => 'required'
        // ]);
        $user = auth()->user()->user_quizzes()->where('id','=',$request->id)->update(
			['hours' => $request->hours, 
            'minutes' => $request->minutes, 
            'seconds' => $request->seconds
            ]
		);
		  	
        return response()->json([$request->all()]);
    }
    public function update_result(Request $request)
    {
        //  $request->validate([
        //     'user_answer' => 'required'
        // ]);
        $user = auth()->user()->user_quizzes()->where('id','=',$request->id)->update(
			['hours' => $request->hours, 
            'minutes' => $request->minutes, 
            'seconds' => $request->seconds,
            'mark' => $request->mark,
            'total_mark' => $request->total_mark,
            'status' => $request->status
            ]
		);
		  	
        return response()->json([$request->all()]);
    }
    public function fetchResult(Request $request){
        $u_quiz = $this->fetchQuiz($topic->id);
        return $u_quiz;
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function clearResponse(Request $request)
    {
        //  $request->validate([
        //     'user_answer' => 'required'
        // ]);
        $user = auth()->user()->answers()->where('id','=',$request->id)->update(
			['user_answer' => $request->user_answer]
		);
		  	
        return response()->json([$request->all()]);
    }

    /**
     * Display the specified resource. 
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id) 
    { 
        $topic = Topic::findOrFail($id);
        $questions = Question::where('topic_id', $topic->id)->limit(20)->get();
        $user_quiz = $this->fetchQuiz($topic->id);
        if(!$user_quiz)
        {
            auth()->user()->user_quizzes()->create([
                'topic_id' => $topic->id,
                'status' => 'quiz',
            ]);
         }
        $u_quiz = $this->fetchQuiz($topic->id);
        $result = array(); 
        
        foreach ($questions as $q) 
        {
            $ans = $this->fetchAnswer($topic->id,$q->id);
            if(!$ans)
            {
                auth()->user()->answers()->create([
                    'topic_id' => $topic->id,
                    'question_id' => $q->id,
                    'answer' => $q->answer,
                ]);
             }
            $answers = $this->fetchAnswer($topic->id,$q->id);
            $result[] = array(
                'id' => $q->id,
                'topic_id' => $q->topic_id,
                'question' => $q->question,
                'code_snippet' => $q->code_snippet,
                'answer_exp' => $q->answer_exp,
                'question_img' => $q->question_img,
                'question_video_link' => $q->question_video_link,
                'answer' => $q->answer,
                'mark' => $q->mark,
                'answer_id' => isset($answers->id) ? $answers->id : null,
                'user_answer' => isset($answers->user_answer) ? $answers->user_answer  :  null,
                'options' => [
                    array(
                        'id' => 1,
                        'questionId' => $q->id,
                        'name' => $q->a,
                        'isAnswer'=> strtolower($q->answer) == 'a' ? true : false,
                        'selected' => isset($answers->user_answer) && $answers->user_answer == 'A' ? true : false
                    ),
                    array(
                        'id' => 2,
                        'questionId' => $q->id,
                        'name' => $q->b,
                        'isAnswer'=> strtolower($q->answer) == 'b' ? true : false,
                        'selected' => isset($answers->user_answer) && $answers->user_answer == 'B'  ? true : false
                        
                    ),
                    array(
                        'id' => 3,
                        'questionId' => $q->id,
                        'name' => $q->c,
                        'isAnswer'=> strtolower($q->answer) == 'c' ? true : false,
                        'selected' => isset($answers->user_answer) && $answers->user_answer == 'C'  ? true : false
                    ),
                    array(
                        'id' => 4,
                        'questionId' => $q->id,
                        'name' => $q->d,
                        'isAnswer'=> strtolower($q->answer) == 'd' ? true : false,
                        'selected' => isset($answers->user_answer) && $answers->user_answer == 'D'  ? true : false
                    )
                ]
                
            );
            

        }
        
        // return response()->json(['id' => $topic->id,'title' => $topic->title,'description' => $topic->description, 'per_q_mark' => $topic->per_q_mark, 'totalquestion' =>$topic->totalquestion, 'timer' => $topic->timer,'questions' => $result]);
        return response()->json(['id' => $topic->id,'title' => $topic->title,'description' => $topic->description, 'per_q_mark' => $topic->per_q_mark, 'totalquestion' =>$topic->totalquestion, 'timer' => $topic->timer ,'user_quiz_id'=>$u_quiz->id,'status' => $user_quiz->status,'mark' =>$u_quiz->mark,'total_mark' =>$u_quiz->total_mark,'hours' => $u_quiz->hours,'minutes' => $u_quiz->minutes,'seconds'=>$u_quiz->seconds,'questions' => $result]);
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

}
