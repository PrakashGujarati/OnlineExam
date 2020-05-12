import React from 'react';
import { Radio, FormControlLabel  } from '@material-ui/core';

function Result(props) {
    let questions = props.questions;
    questions.forEach(q => { q.isCorrect = q.options.every(x => x.selected === x.isAnswer); });
   // console.log(questions);
   function examResult(){
      let result = 0;
      let total = 0;
      questions.forEach(q => {
        if(q.isCorrect){
            result += parseInt(q.mark);
          }
          total += parseInt(q.mark);
      })
      return (
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
                    <th>{questions.length}</th>
                    <th>{result}</th>
                    <th>{total}</th>
                </tr>
            </tbody>
        </table>
      );
   }
  
   
    return (
        <div className="result">
            <h2 className="text-center font-weight-normal">Quiz Result</h2>
                <div  className='mb-2'>
                    <div className="result-question">
                        {examResult()}
                    </div>
                </div>
        </div>
    )
}

export default Result;