import React, { Component } from 'react';
import { connect } from 'react-redux';

class Result extends Component {
 
    componentDidMount() {

        // let questions = this.props.questions;
        // questions.forEach(q => { q.isCorrect = q.options.every(x => x.selected === x.isAnswer); });
        // let result = 0;
        // let total = 0;
        // questions.forEach(q => {
        //     if(q.isCorrect){
        //         result += parseInt(q.mark);
        //     }
        //     total += parseInt(q.mark);
        // })
        const data = {
            id: this.props.quiz.user_quiz_id,
            hours: this.props.quiz.hours,
            minutes: this.props.quiz.minutes,
            seconds: this.props.quiz.seconds,
            mark: this.props.quiz.mark,
            total_mark: this.props.quiz.total_mark,
            status:  this.props.quiz.status,
        };
        axios.post('http://localhost:8000/api/updateResult', data)
            .then(response => {
                console.log("0000",response);
        });
        
       
                
    }
    
   render() {
    
        return (
            <div className="result">
                <h2 className="text-center font-weight-normal">Quiz Result</h2>
                    <div  className='mb-2'>
                        <div className="result-question">
                            <table className="table table-bordered result-table">
                                <thead>
                                    <tr>
                                        <th>Total Questions</th>
                                        <th>My Marks</th>
                                        <th>Total Marks</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th>{this.props.questions.length}</th>
                                        <th>{this.props.quiz.mark}</th>
                                        <th>{this.props.quiz.total_mark}</th>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
            </div>
        )
   }
  
}

export default Result;
