

import React from 'react';
import ReactDOM from 'react-dom';
import Root from './components/root';
import configureStore from './store/store';

import { createBookshelf } from './actions/bookshelf_actions';
// import { requestAllManga } from './actions/manga_actions';


document.addEventListener('DOMContentLoaded', () => {

    let store;
    if (window.currentUser) {
    const preloadedState = {session: {currentUser: window.currentUser}};
    store = configureStore(preloadedState);
    } else {
    store = configureStore();
    }
    const root = document.getElementById('root');
    ReactDOM.render(<Root store={store} />, root);
    window.store = store;
    // window.requestAllManga = requestAllManga;
});
