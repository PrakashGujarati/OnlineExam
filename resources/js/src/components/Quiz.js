import React, { Component } from 'react';
import { ActionTypes } from '../constants/actionTypes';
import Review from './Review';
import Questions from './Questions';
import { Route, Redirect } from 'react-router-dom';
import Result from './Result';
import { connect } from 'react-redux';
import Countdown from 'react-countdown-now';


class Quiz extends Component {

    // constructor(props){
    //     super(props) 
    // }
    state = {
        // quizes: [
        //   { id: 'data/javascript.json', name: 'Javascript' },
        //   { id: 'data/aspnet.json', name: 'Asp.Net' },
        //   { id: 'data/csharp.json', name: 'C Sharp' },
        //   { id: 'data/designPatterns.json', name: 'Design Patterns' }
        // ],
      // quizId: 'data/javascript.json'
      };

    pager = {
        index: 0,
        size: 1,
        count: 1
    }

    componentDidMount(){
        this.load();
        
    }
    // componentWillUpdate(){
       
    // }

    load() {
        let topic_id = this.props.match.params.topic_id;
          let url = 'http://localhost:8000/api/questionList/'+topic_id;
            fetch(url)
            .then(res => res.json())
            .then(res => {
                let quiz = res;
                quiz.config = Object.assign(this.props.quiz.config || {}, quiz.config);
                quiz.quizID = topic_id;
                this.pager.count = quiz.questions.length / this.pager.size;
                this.props.onQuizLoad(quiz);
                this.props.onPagerUpdate(this.pager);
              });
     }
    
    
    move = (e) => {
        let id = e.target.id;
        let index = 0;
        this.props.history.replace('/quiz/'+ this.props.match.params.topic_id+'/'+ index );
        switch (id) {
            case 'first':
                index = 0;
                this.props.history.replace('/quiz/'+ this.props.match.params.topic_id+'/'+ index);
                break;
            case 'prev':
                index = parseInt(this.props.match.params.id) - 1 || this.props.pager.index - 1;
                if(index >= 0){
                     this.props.history.replace('/quiz/'+this.props.match.params.topic_id+'/'+ index);
                }
                break;
            case 'next':
                index = parseInt(this.props.match.params.id) + 1 || this.props.pager.index + 1;
                if(index <= this.props.pager.count-1){
                    this.props.history.replace('/quiz/'+this.props.match.params.topic_id+'/'+ index);
                }
                break;
            case 'last':
                index = this.props.pager.count - 1;
                this.props.history.replace('/quiz/'+this.props.match.params.topic_id+'/'+ index);
                break;
            default:
                index = parseInt(e.target.id, 10);
                this.props.history.replace('/quiz/'+this.props.match.params.topic_id+'/'+ index);
                break;
        }
      
        if (index >= 0 && index < this.props.pager.count) {
            let pager = {
                index: index,
                size: 1,
                count: this.props.pager.count
            };
            this.props.onPagerUpdate(pager);
        }
        
    }
    
    setMode = (e) => {
        let questions = this.props.quiz.questions;
        questions.forEach(q => { q.isCorrect = q.options.every(x => x.selected === x.isAnswer); });
        let result = 0;
        let total = 0;
        questions.forEach(q => {
            if(q.isCorrect){
                result += parseInt(q.mark);
            }
            total += parseInt(q.mark);
        })
        let quiz = JSON.parse(JSON.stringify(this.props.quiz));
        quiz.status = e.target.id;
        quiz.mark = result;
        quiz.total_mark = total;
        this.props.onQuizResultLoad(quiz);

    }
    renderMode() {
         
         
         const renderer =  ({hours, minutes, seconds, completed }) => {
            if(completed){
                let questions = this.props.quiz.questions;
                questions.forEach(q => { q.isCorrect = q.options.every(x => x.selected === x.isAnswer); });
                let result = 0;
                let total = 0;
                questions.forEach(q => {
                    if(q.isCorrect){
                        result += parseInt(q.mark);
                    }
                    total += parseInt(q.mark);
                });
                let quiz = JSON.parse(JSON.stringify(this.props.quiz));
                quiz.status = "submit";
                quiz.hours = hours,
                quiz.minutes = minutes,
                quiz.seconds = seconds,
                quiz.mark = result;
                quiz.total_mark = total;
                
                this.props.onQuizResultLoad(quiz);

                return (
                  <Result quiz={this.props.quiz}  questions={this.props.quiz.questions || []}  />
                );
            } else {
                const data = {
                    id: this.props.quiz.user_quiz_id,
                    hours: hours,
                    minutes: minutes,
                    seconds: seconds,
                };
                // axios.post('http://localhost:8000/api/updateCountdown', data)
                // .then(response => {
                //     console.log(response);
                // });
                axios.post('http://localhost:8000/api/updateCountdown', data)
                    .then(response => {
                        console.log(response);
                })
                return <div className="text-center"><h1>{hours}:{minutes}:{seconds}</h1><hr/></div>;
            }
        };
        let timer = null;
        if(this.props.quiz.status === 'quiz'){
            if( this.props.quiz.hours === '0' && this.props.quiz.minutes === '0' && this.props.quiz.seconds === '0' ){
                timer =(
                    <Countdown
                    date={Date.now() + parseInt(this.props.quiz.timer)*60*1000}
                    //date={Date.now() + 10000}
                    renderer={renderer}
                    />
                ); 
                
            }else{
                //hours,minutes,seconds convert milisecond
                let h = parseInt(this.props.quiz.hours) * 3600000;
                let m = parseInt(this.props.quiz.minutes) * 60000;
                let s = parseInt(this.props.quiz.seconds) * 1000;
                timer =(
                    <Countdown
                    date={Date.now() + h+m+s}
                    //date={Date.now() + 10000}
                    renderer={renderer}
                    />
            ); 

            }
         
           return (
                
                <div className="row">
                    <div className="col-12">
                        {timer}
                    </div>
                    <div className="col-8">
                        <Questions move={this.move} {...this.props} />
                    </div>
                    <div className="col-4">
                      
                        <div className="card bg-light">
                            <div className="card-body">
                                <h4 className="text-center font-weight-small">Review Quiz</h4>
                                <hr />
                                <Review quiz={this.props.quiz} move={this.move} {...this.props}/>
                                {(this.props.quiz.status !== 'submit') &&
                                <div className="text-center">
                                    <br />
                                    <button id="submit" className="btn btn-primary" onClick={this.setMode}>Submit Quiz</button >
                                </div >}
                            </div> 
                        </div>
                      
                    </div>

                </div>
                )
         }
         if(this.props.quiz.status === "submit") {
            return (  
                <Result quiz={this.props.quiz}  questions={this.props.quiz.questions || []} />            
            ) 
         }
        
    }

    render() {
         
       return (
            <div id="quiz">
                {this.renderMode()}
            </div>
        )
    }
}

const mapStateToProps = state => { return { ...state.quiz, ...state.pager } };

const mapDispatchToProps = dispatch => ({
    onQuizLoad: payload => dispatch({ type: ActionTypes.QuizLoad, payload }),
    onQuizResultLoad: payload => dispatch({ type: ActionTypes.QuizResultLoad, payload }),
    onPagerUpdate: payload => dispatch({ type: ActionTypes.PagerUpdate, payload })
});

export default connect(mapStateToProps, mapDispatchToProps)(Quiz);

