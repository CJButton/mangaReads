

import { RECEIVE_TOGGLE_UPDATE } from '../actions/manga_bookshelves_actions';

import {merge} from 'lodash';


const MangaBookshelvesReducer = (state = {}, action) => {
  switch(action.type) {

    case RECEIVE_TOGGLE_UPDATE:
      return merge({}, action.bookshelves);

      default:
        return state;
  }
};


export default MangaBookshelvesReducer;
