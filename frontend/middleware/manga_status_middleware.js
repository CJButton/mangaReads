


import { changeMangaStatus,
         CHANGE_MANGA_STATUS,
         RECEIVE_MANGA_STATUS,
         receiveMangaStatus,
         receiveMangaStatusErrors } from '../actions/manga_status_actions';

import { changeStatus } from '../util/manga_status_api_util';

const MangaStatusMiddleware = ({ getState, dispatch }) => next => action => {
  const errorCallBack = xhr => dispatch(receiveMangaStatusErrors(xhr.responseJSON));
  let success;

  switch(action.type) {
    case CHANGE_MANGA_STATUS:
      success = status => dispatch(receiveMangaStatus(status));
      changeStatus(action.readStatus, action.mangaId, success, errorCallBack);
      return next(action);

    default:
      next(action);
  }
};

export default MangaStatusMiddleware;
