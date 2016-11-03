

import React from 'react';
import { Provider } from 'react-redux';

import { Router, Route, IndexRoute, hashHistory } from 'react-router';

import App from './app';
import AuthContainer from './auth_form/auth_container';

const Root = ({store}) => {

  const _ensureLoggedIn = (nextState, replace) => {
  const currentUser = store.getState().session.currentUser;
  if (!currentUser) {
    replace('/login');
  }
};

  // will redirect the user if they are/aren't logged in
  const _redirectIfLoggedIn = (nextState, replace) => {
    const currentUser = store.getState().session.currentUser;
    if (currentUser) {
      replace('/');
    }
  };
  //<IndexRoute component={HomeContainer} />
  // onEnter hook to redirect to /login if there is no current user

  return (
    <Provider store={store}>
      <Router history={hashHistory}>
        <Route path ="/" component={App}>
          <Route path="/login" component={AuthContainer}>

          </Route>
        </Route>
      </Router>
    </Provider>
  );

};


export default Root;
