

import { RECEIVE_BOOKSHELF,
         REMOVE_BOOKSHELF,
         RECEIVE_ERRORS } from '../actions/bookshelf_actions';

import { merge } from 'lodash';


const BookshelfReducer = (state = {}, action) => {
    Object.freeze(state);
    let newState;

    switch(action.type) {
      case RECEIVE_BOOKSHELF:
      return merge({}, state, action.bookshelf);

      case REMOVE_BOOKSHELF:
      newState = Object.assign({}, state);
      delete newState[action.bookshelf.id];
      return newState;

      case RECEIVE_ERRORS:
      alert(action.error);

    default:
      return state;
    }

};

export default BookshelfReducer;
