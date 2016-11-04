

import React from 'react';
import { Provider } from 'react-redux';

import { Router, Route, IndexRoute, hashHistory } from 'react-router';

// containers
import App from './app';
import AuthContainer from './auth_form/auth_container';
import MangaContainer from './manga/manga_container';

// actions
// import {requestAllManga} from './actions/manga_actions';
import { requestAllManga, requestManga } from '../actions/manga_actions';

const Root = ({store}) => {

  const _ensureLoggedIn = (nextState, replace) => {
  const currentUser = store.getState().session.currentUser;
  if (!currentUser) {
    replace('/login');
  }
};



  const loadAllManga = () => {
    console.log("Did we hit it?");
    store.dispatch(requestAllManga());
  };



  // will redirect the user if they are/aren't logged in
  const _redirectIfLoggedIn = (nextState, replace) => {
    const currentUser = store.getState().session.currentUser;
    if (currentUser) {
      replace('/');
    }
  };

  const loadSingleManga = nextState => {
		store.dispatch(requestManga(nextState.params.id));
	};


  //<IndexRoute component={HomeContainer} />
  // onEnter hook to redirect to /login if there is no current user

  // ove the loadAllManga onEnter to the homepage later
  return (
    <Provider store={store}>
      <Router history={hashHistory}>
        <Route path ="/" component={App} onEnter={loadAllManga}>
          <Route path="/login" component={AuthContainer} onEnter={loadAllManga}>
          </Route>
          <Route path="/manga/:id" component={MangaContainer} onEnter={loadSingleManga}>
          </Route>
        </Route>
      </Router>
    </Provider>
  );

};


export default Root;
