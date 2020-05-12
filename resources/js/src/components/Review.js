import React, { Component } from 'react';

class Review extends Component {
    isAnswered = (q) => {
        return q.options.some(x => x.selected) ? 'Answered' : 'Not Answered';
    }
  
    render() {
        
        const style = {
            display: 'inline-block',
            margin: '2px',
            padding: '10px',
            height: '40px',
            width: '40px',
            textAlign: 'center',
        };
            
        return <div>
                <div className="row ">
                    {this.props.quiz.questions.map((q, index) =>
                        <div key={q.id} className="cursor-pointer" >
                            <div id={index} onClick={this.props.move} style={style} className={` ${this.isAnswered(q) === 'Answered' ? 'bg-success text-white' : 'bg-danger text-white'}`}>{index + 1}</div>
                        </div>
                    )}
                </div>
                <div className="row p-3 mb-16">
                    <div className="row p-3" >
                        <span className='col-2 pull-left cursor-pointer bg-success'/> 
                        &nbsp; 
                        <label className="label">Answered</label>
                    </div> &nbsp;
                    <div className="row p-3" >
                        <span className='col-2 pull-right cursor-pointer bg-danger'/> 
                        &nbsp; <label className="label">Not Answered</label>
                    </div>
                </div> 
            </div>
    }
}

export default Review;