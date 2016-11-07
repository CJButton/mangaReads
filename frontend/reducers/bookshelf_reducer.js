

import { RECEIVE_BOOKSHELF
} from '../actions/bookshelf_actions';

import { merge } from 'lodash';


const BookshelfReducer = (state = {}, action) => {
    Object.freeze(state);

    switch(action.type) {
      case RECEIVE_BOOKSHELF:
      return merge({}, state, action.bookshelf);

    default:
      return state;
    }

};

export default BookshelfReducer;
