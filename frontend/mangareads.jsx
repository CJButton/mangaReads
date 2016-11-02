

import React from 'react';
import ReactDOM from 'react-dom';
import {login} from 'util/session_api_util.js';

document.addEventListener('DOMContentLoaded', () => {
    const root = document.getElementById('root');
    ReactDOM.render(<h1>こんにちは</h1>, root);
    window.login = login;
});
