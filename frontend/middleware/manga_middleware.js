


import {receiveManga,
        REQUEST_MANGA,
        requestManga,
        receiveErrors,
        receiveAllManga,
        requestAllManga,
        REQUEST_ALL_MANGA} from '../actions/manga_actions.js';

import { getAllManga, getManga } from '../util/manga_api_util';

const MangaMiddleware = ({ getState, dispatch }) => next => action => {
  const errorCallBack = xhr => dispatch(receiveErrors(xhr.responseJSON));
  let success;

  switch(action.type) {
    case REQUEST_ALL_MANGA:
    success = manga => dispatch(receiveAllManga(manga));
    getAllManga(success, errorCallBack);
    return next(action);

    case REQUEST_MANGA:
    success = manga => dispatch(receiveManga(manga));
    getManga(action.id, success);
    return next(action);

    default:
      next(action);
  }
};

export default MangaMiddleware;
