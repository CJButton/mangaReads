

import {RECEIVE_CURRENT_USER, RECEIVE_ERRORS, LOGOUT} from '../actions/session_actions';
import { merge } from 'lodash';


const nullUser = Object.freeze({
  currentUser: null,
  errors: []
});

const SessionReducer = (state = nullUser, action) => {
  Object.freeze(state);

  switch(action.type) {

    case RECEIVE_CURRENT_USER:
      const currentUser = action.currentUser;
      return merge({}, state, {currentUser}, {errors});

    case LOGOUT:
      return merge({}, nullUser);

    case RECEIVE_ERRORS:
      const errors = action.errors;
      return merge({}, state, {errors});

    default:
      return state;
  }
};

export default SessionReducer;
