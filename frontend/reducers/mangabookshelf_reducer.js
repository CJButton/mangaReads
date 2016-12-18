

import { RECEIVE_TOGGLE_UPDATE,
         RECEIVE_ALL_SHELVES_WITH_BOOK}
         from '../actions/manga_bookshelves_actions';

import {merge} from 'lodash';


const MangaBookshelvesReducer = (state = {}, action) => {
  switch(action.type) {

    case RECEIVE_TOGGLE_UPDATE:
      return merge({}, action.bookshelves);

    case RECEIVE_ALL_SHELVES_WITH_BOOK:
      return merge({}, action.shelves);

    default:
      return state;
  }
};


export default MangaBookshelvesReducer;
