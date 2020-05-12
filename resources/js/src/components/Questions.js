import React, { Component } from 'react';
import { ActionTypes } from '../constants/actionTypes';
import { connect } from 'react-redux';
import { Radio, FormControlLabel } from '@material-ui/core';
import axios from 'axios';


class Questions extends Component {

   
    onAnswer(question, option) {
        let user_answer = null;
        if(option.id === 1)
            user_answer = 'A';
        if(option.id === 2)
            user_answer = 'B';
        if(option.id === 3)
            user_answer = 'C';
        if(option.id === 4)
            user_answer = 'D';
            
        const data = {
            id: question.answer_id,
            topic_id: question.topic_id, 
            question_id: question.id,
            user_answer: user_answer,
            answer: question.answer
        };
        axios.post('http://localhost:8000/api/questionList', data)
            .then(response => {
                // console.log(response);
            });
        let quiz = JSON.parse(JSON.stringify(this.props.quiz));
        let q = quiz.questions.find(x => x.id === question.id);
       // if (q.questionTypeId === 1) {
            q.options.forEach((x) => { x.selected = false; });
        //}
        q.options.find(x => x.id === option.id).selected = true;
        this.props.onAnswer(quiz);     
     }
    clearResponse(){
        let quiz = JSON.parse(JSON.stringify(this.props.quiz));
        let q = quiz.questions[(parseInt(this.props.match.params.id) || this.props.pager.index )];
        q.options.forEach((x) => { x.selected = false; });
        const data = {
            id: q.answer_id,
            user_answer: null,
        };
        axios.post('http://localhost:8000/api/clearResponse', data)
        .then(response => {
            // console.log(response);
        });
        this.props.onClearResponse(quiz);   
    }
     

    render() {
        let q_index= (parseInt(this.props.match.params.id) || this.props.pager.index ) + this.props.pager.size;
        let questions = (this.props.quiz.questions) ?
            this.props.quiz.questions.slice(parseInt(this.props.match.params.id) || this.props.pager.index, q_index) : [];
        
        return (
            <div id="quiz">
               
                {questions.map(q =>
                    <div key={q.id} >
                        <div className="row">
                            <div className="col-6">    
                                <h3>
                                    <span>
                {(parseInt(this.props.match.params.id) || this.props.pager.index) + 1 }. {q.mark != '' ? '('+q.mark+'mark'+')': null} 
                                    </span>
                                </h3>
                            </div>
                            <div className="col-6 text-right">    
                                <h3>
                                    <span className="badge badge-primary">
                                        Question {(parseInt(this.props.match.params.id)|| this.props.pager.index) +1} of {this.props.pager.count}.
                                    </span>
                                </h3>
                            </div>
                        </div>
                        
                        <h3 className="font-weight-normal"><span>{q.question}</span></h3>
                        <hr/>
                            <div className="row text-left options">
                            {
                                q.options.map(option =>
                                    <div key={option.id} className="col-6">
                                        <FormControlLabel  id={option.id} checked={option.selected} control={<Radio />} onChange={() => this.onAnswer(q, option)}  label={option.name} />
                                    </div>
                                )
                            }
                        </div>
                    </div> 
                )}
                <hr />
                <div>
                    {this.props.quiz.config.allowBack && <button id="first" className="btn btn-outline-success" onClick={this.props.move}>First</button>}
                    {this.props.quiz.config.allowBack && <button id="prev" className="btn btn-secondary" onClick={this.props.move}>Prev</button>}
                    <button id="next" className="btn btn-primary" onClick={this.props.move}>Next</button>
                    <button id="last" className="btn btn-outline-dark" onClick={this.props.move}>Last</button>
                    <button id="clear_response" className="btn btn-success" onClick={() => this.clearResponse()}>Clear Response</button>
                </div>
            </div >
        )
    }
}

const mapStateToProps = state => ({ ...state.quiz, ...state.pager });

const mapDispatchToProps = dispatch => ({
    onAnswer: payload => dispatch({ type: ActionTypes.QuizAnswer, payload }),
    onClearResponse: payload => dispatch({ type: ActionTypes.ClearResponse, payload })
});

export default connect(mapStateToProps, mapDispatchToProps)(Questions);