

import React from 'react';
import { Provider } from 'react-redux';
import App from './app';
import { Router, Route, IndexRoute, hashHistory } from 'react-router';
import SessionFormContainer from './session_form/session_form_container';

const Root = ({ store }) => (
  <Provider store={store}>
    <Router history={hashHistory}>
      <Route path ="/" component={App} />
    </Router>
  </Provider>
);

export default Root;
