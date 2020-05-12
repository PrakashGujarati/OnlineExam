import { ActionTypes } from '../constants/actionTypes';

let initialQuiz = {
    quiz: {
        config: {
            'allowBack': true,
            'allowReview': true,
            'autoMove': false,  // if true, it will move to next question automatically when answered.
            'duration': 0,  // indicates the time in which quiz needs to be completed. 0 means unlimited.
            'pageSize': 1,
            'requiredAll': false,  // indicates if you must answer all the questions before submitting.
            'richText': false,
            'shuffleQuestions': false,
            'shuffleOptions': false,
            'showClock': false,
            'showPager': true,
            'theme': 'none'
        },
        quizlist: [],
        quizID: '',
        questions: []
        
    },
    pager: {
        index: 0,
        size: 1,
        count: 1
    }
}

export default (state = { ...initialQuiz }, action) => {
    switch (action.type) {
        case ActionTypes.QuizListLoad:
            console.log("quizlistload",{...state, quiz: action.payload});
            return {
                ...state, quiz: action.payload
            } 
        case ActionTypes.PagerUpdate:
            return {
                ...state, pager: action.payload, mode: 'quiz'
            }
        case ActionTypes.QuizSelect:
            console.log("quizselect",{...state, quiz: action.payload});
            return {
                ...state, quiz: action.payload
            }    
        case ActionTypes.QuizLoad:
            console.log("quizload",{...state, quiz: action.payload});
            return {
                ...state, quiz: action.payload
            }
        case ActionTypes.QuizResultLoad:
            return {
                ...state, quiz: action.payload
            }
        // case ActionTypes.QuizSubmit:
        //     console.log('quiz.js Submitted.');
        //     return {
        //         ...state, mode: action.payload
        //     }
        case ActionTypes.QuizAnswer:
            console.log('quiz.js reducer Quiz Answer called.');
            return {
                ...state, quiz: action.payload
            }
        case ActionTypes.ClearResponse:
            console.log('quiz.js reducer Quiz Clear called.');
            return {
                ...state, quiz: action.payload
            }
        default:
            return state;
    }
};
