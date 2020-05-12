import React,{ Component } from "react";
import Quiz from './../components/Quiz';
import { Route, NavLink, Switch, Redirect } from 'react-router-dom';
// import { connect } from 'react-redux';
// import { ActionTypes } from './../constants/actionTypes';
// import axios from 'axios';
import QuizList from "./QuizList";
import Result from "./../components/Result";

class QuizApp extends Component{

      render() {
       
        return (
        <div>
           <header className="p-2">
              <div className="row">
                <div className="col-12">
                {/*<NavLink 
                    to="/quiz"
                    exact 
                    activeClassName="my-active" 
                    activeStyle={{
                        color: '#fa923f',
                        textDecoration: 'underline'
                    }}>Quiz</NavLink> */}
                </div>
              
              
              </div> 
            </header>
         
        <Switch>
          <Route path="/" exact render={props => <QuizList {...props}/>} /> 
          <Route path="/quiz/:topic_id" exact render={props => <Quiz {...props} />}/> 
          <Route path="/quiz/:topic_id/:id"  exact render={props => <Quiz {...props} />}/> 
        
          {/* <Route path="/quiz/:topic"  exact render={props => <Quiz quiz={this.state.quiz} quizId={this.state.quiz.quizID} mode={this.state.mode} {...props} />}/>
          <Route path="/quiz/:topic/:id"  render={props => <Quiz quiz={this.state.quiz} quizId={this.state.quizId} mode={this.state.mode} {...props} />}/> */}
          <Route render={() => <h1>Not found!</h1>}/>
        </Switch>
      </div>
        );
      }
} 

// const mapStateToProps = state => { return { ...state.quiz } };

// const mapDispatchToProps = dispatch => ({
//   onQuizLoad: payload => dispatch({ type: ActionTypes.QuizLoad, payload }),
//   onPagerUpdate: payload => dispatch({ type: ActionTypes.PagerUpdate, payload })
// });

export default QuizApp;