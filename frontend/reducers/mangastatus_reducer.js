


import { RECEIVE_MANGA_STATUS } from '../actions/manga_status_actions';


import { merge } from 'lodash';

const MangaStatusReducer = (state = {}, action) => {

  switch(action.type) {
    case RECEIVE_MANGA_STATUS:
    const newStatus = merge({}, action.readStatus);
      return merge(newStatus);

    default:
      return state;
  }
};

export default MangaStatusReducer;
