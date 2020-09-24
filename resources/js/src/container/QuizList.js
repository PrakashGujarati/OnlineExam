import React, { Component } from "react";
import { connect } from "react-redux";
import { ActionTypes } from "../constants/actionTypes";
import API_URL from "../../api_config";

import axios from "axios";

class QuizList extends Component {
    // state = {
    //   // quizes: [
    //   //   { id: 'data/javascript.json', name: 'Javascript' },
    //   //   { id: 'data/aspnet.json', name: 'Asp.Net' },
    //   //   { id: 'data/csharp.json', name: 'C Sharp' },
    //   //   { id: 'data/designPatterns.json', name: 'Design Patterns' }
    //   // ],
    // // quizId: 'data/javascript.json'
    // };

    // pager = {
    //   index: 0,
    //   size: 1,
    //   count: 1
    // }

    componentDidMount() {
        this.quizListLoad(this.props.quiz);
    }

    quizListLoad() {
        axios
            .get(`${API_URL}/questionList`)
            .then(response => {
                const quizlist = response.data;

                let quiz = JSON.parse(JSON.stringify(this.props.quiz));
                quiz.quizlist = Object.assign(
                    this.props.quiz.quizlist || {},
                    quizlist
                );
                this.props.onQuizListLoad(quiz);
            })
            .catch(error => {
                console.log(error);
                // this.setState({error: true});
            });
    }

    quizSelectHandler(topic_id) {
        let quiz = JSON.parse(JSON.stringify(this.props.quiz));
        quiz.quizID = topic_id;
        this.props.onQuizSelect(quiz);
        // this.load(topic_id);
        this.props.history.replace("/quiz/" + topic_id);
    }
    render() {
        let quizList = <p style={{ textAlign: "center" }}>Quiz Not Found!</p>;

        if (this.props.quiz.quizlist != null) {
            quizList = this.props.quiz.quizlist.map(list => {
                return (
                    <div key={list.id} className="col-sm-4">
                        <div className="card">
                            <div className="card-body">
                                <h5 className="card-title">{list.title}</h5>
                                <p className="card-text">
                                    Description : {list.description}
                                </p>
                                <p className="card-text">
                                    Total Question : {list.totalquestion}
                                </p>
                                <p className="card-text">
                                    Time : {list.totalquestion}
                                </p>
                                <button
                                    className="btn btn-primary"
                                    onClick={() =>
                                        this.quizSelectHandler(list.id)
                                    }
                                >
                                    Start Quiz
                                </button>
                            </div>
                        </div>
                    </div>
                );
            });
        }
        return (
            <div className="p-2">
                <div className="row">{quizList}</div>
            </div>
        );
    }
}

const mapStateToProps = state => {
    return { ...state.quiz };
};

const mapDispatchToProps = dispatch => ({
    onQuizListLoad: payload =>
        dispatch({ type: ActionTypes.QuizListLoad, payload }),
    onQuizSelect: payload => dispatch({ type: ActionTypes.QuizSelect, payload })
});

export default connect(mapStateToProps, mapDispatchToProps)(QuizList);
