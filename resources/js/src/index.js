import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';
import registerServiceWorker from './registerServiceWorker';
import { BrowserRouter } from 'react-router-dom';
import { Provider } from 'react-redux';
import { store } from './store';


const app = (
    <Provider store={store}>
         <BrowserRouter basename="home">
            <App />
        </BrowserRouter>
    </Provider>
);
 
ReactDOM.render(app,document.getElementById('root'));
registerServiceWorker();