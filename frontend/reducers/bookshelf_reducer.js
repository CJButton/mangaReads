

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
      return action.bookshelves;

      case RECEIVE_ERRORS:
      alert(action.error);

    default:
      return state;
    }

};

export default BookshelfReducer;
