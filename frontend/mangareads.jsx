

import React from 'react';
import ReactDOM from 'react-dom';
import {login} from './util/session_api_util';
import configureStore from './store/store';

document.addEventListener('DOMContentLoaded', () => {
    const root = document.getElementById('root');
    ReactDOM.render(<h1>こんにちは</h1>, root);
    window.login = login;
    window.store = configureStore();
});
