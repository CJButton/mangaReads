


import {RECEIVE_MANGA,
        RECEIVE_ERRORS,
        RECEIVE_ALL_MANGA} from '../actions/manga_actions';

import { merge } from 'lodash';

const MangaReducer = (state = {}, action) => {
  switch(action.type) {

    case RECEIVE_MANGA:
    const newManga = merge({}, action.manga);
      return merge(newManga);

    case RECEIVE_ALL_MANGA:
      return merge({}, action.manga);

    default:
      return state;
  }
};

export default MangaReducer;
