

// react
import React from 'react';
import { Provider } from 'react-redux';

// react/Router
import { Router, Route, IndexRoute, hashHistory } from 'react-router';

// containers
import App from './app';
import AuthContainer from './auth_form/auth_container';
import MangaContainer from './manga/manga_container';
import HomeContainer from './home/home_container';

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
    store.dispatch(requestAllManga());
  };

  // what is nextState?
  const loadSingleManga = nextState => {
    store.dispatch(requestManga(nextState.params.id));
  };

  // will redirect the user if they are/aren't logged in
  const _redirectIfLoggedIn = (nextState, replace) => {
    const currentUser = store.getState().session.currentUser;
    if (currentUser) {
      replace('/');
    }
  };

  return (
    <Provider store={store}>
      <Router history={hashHistory}>
        <Route path ="/" component={App} onEnter={_ensureLoggedIn}>
          <IndexRoute component={HomeContainer}/>
          <Route path="/manga/:id" component={MangaContainer} onEnter={loadSingleManga}/>
        </Route>
        <Route path="/login" component={AuthContainer} onEnter={_redirectIfLoggedIn}/>
      </Router>
    </Provider>
  );

};







export default Root;
