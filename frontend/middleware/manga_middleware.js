


import {receiveManga,
        REQUEST_MANGA,
        requestManga,
        receiveErrors} from '../actions/manga_actions.js';

import {} from '../util/manga_api_util';

export default({ getState, dispatch}) => next => action => {
  const errorCallBack = xhr => dispatch(receiveErrors(xhr.responseJSON));
  let success;

  switch(action.type) {
    case REQUEST_MANGA:
    success = manga => dispatch(receiveManga(manga));
    requestManga(action.id, success, errorCallBack);
  }
};
