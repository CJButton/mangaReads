

import React from 'react';
import { Provider } from 'react-redux';

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
    console.log("Did we hit it?");
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
  //<IndexRoute component={HomeContainer} />
  // onEnter hook to redirect to /login if there is no current user

  // ove the loadAllManga onEnter to the homepage later
  // mangacontainer isn't really pulling anything from state right now
  // any manga/number will project the component

  // <Route path="/manga/:id" component={MangaContainer}>
  //   <Route path="/home" component={Home} />
  // </Route> THIS results in the manga/id being displayed, even at /home! Strange

  // all paths are derived from App, which is merely a div with {children}

  // the mangacontainer is passing is allowing the manga page to be show I think
  // but no props are getting passed to it; strange, as I thought it had access to
  // the state

  // today, the goal is to get the basic routes set up
  // onEnter={loadAllManga}
  return (
    <Provider store={store}>
      <Router history={hashHistory}>
        <Route path ="/" component={App} onEnter={_ensureLoggedIn}>
          <Route path="/manga/:id" component={MangaContainer} onEnter={loadSingleManga}/>
        </Route>
        <Route path="/login" component={AuthContainer} onEnter={_redirectIfLoggedIn}/>
      </Router>
    </Provider>
  );

};







export default Root;
