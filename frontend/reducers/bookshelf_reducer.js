

import { RECEIVE_BOOKSHELF,
         REMOVE_BOOKSHELF,
         RECEIVE_ERRORS,
         RECEIVE_ALL_BOOKSHELVES} from '../actions/bookshelf_actions';

import { merge } from 'lodash';


const BookshelfReducer = (state = {}, action) => {
    Object.freeze(state);
    let newState;

    switch(action.type) {
      case RECEIVE_ALL_BOOKSHELVES:
      return merge({}, action.shelves);

      case RECEIVE_BOOKSHELF:
      return merge({}, state, {[action.bookshelf.id]: action.bookshelf});

      case REMOVE_BOOKSHELF:
      let deleteNewState = merge({}, state);
      delete deleteNewState[action.bookshelf.id];
      return deleteNewState;

    default:
      return state;
    }

};

export default BookshelfReducer;
