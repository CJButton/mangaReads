
import {RECEIVE_ERRORS,
        RECEIVE_ALL_HOME} from '../actions/home_actions';

import { merge } from 'lodash';

const HomeReducer = (state = {}, action) => {
  switch(action.type) {

    case RECEIVE_ALL_HOME:
      return merge({}, action.allComics);

    default:
      return state;
  }
};

export default HomeReducer;
