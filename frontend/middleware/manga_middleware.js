


import {receiveManga,
        REQUEST_MANGA,
        requestManga,
        receiveErrors,
        receiveAllManga,
        requestAllManga,
        REQUEST_ALL_MANGA} from '../actions/manga_actions.js';

import { getAllManga } from '../util/manga_api_util';

const MangaMiddleware = ({ getState, dispatch}) => next => action => {
  const errorCallBack = xhr => dispatch(receiveErrors(xhr.responseJSON));
  let success;

  console.log("Did we the middleware?");

  switch(action.type) {
    case REQUEST_ALL_MANGA:
    success = manga => dispatch(receiveAllManga(manga));
    getAllManga(success, errorCallBack);
    next(action);

    case REQUEST_MANGA:
    success = manga => dispatch(receiveManga(manga));
    requestManga(action.id, success, errorCallBack);
    next(action);

    default:
      next(action);
  }
};

export default MangaMiddleware;
