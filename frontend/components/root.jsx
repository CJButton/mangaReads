

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
import BookshelfContainer from './bookshelf/bookshelf_container';

// actions
import { requestAllManga, requestManga } from '../actions/manga_actions';
import { requestAllBookshelves } from '../actions/bookshelf_actions';
import { requestMangaStatus } from '../actions/manga_status_actions';
import { requestAllShelvesWithBook } from '../actions/manga_bookshelves_actions';

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

  const loadAllShelves = () => {
    store.dispatch(requestAllManga("all"));
    store.dispatch(requestAllBookshelves());
  };

  const loadSingleManga = (nextState) => {
    store.dispatch(requestAllShelvesWithBook(nextState.params.id));
    store.dispatch(requestManga(nextState.params.id));
    store.dispatch(requestMangaStatus(nextState.params.id));
    store.dispatch(requestAllBookshelves());
  };

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
          <IndexRoute component={HomeContainer} onEnter={loadAllManga}/>
          <Route path="/my-Manga" component={BookshelfContainer} onEnter={loadAllShelves}/>
          <Route path="/manga/:id" component={MangaContainer} onEnter={loadSingleManga}/>
        </Route>
        <Route path="/login" component={AuthContainer} onEnter={_redirectIfLoggedIn}/>
      </Router>
    </Provider>
  );

};







export default Root;
