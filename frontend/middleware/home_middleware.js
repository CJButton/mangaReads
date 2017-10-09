
import {receiveErrors,
        requestAllHome,
        receiveAllHome,
        REQUEST_ALL_HOME} from '../actions/home_actions';

import { getAllManga } from '../util/manga_api_util';

const HomeMiddleware = ({ getState, dispatch }) => next => action => {
  const errorCallBack = xhr => dispatch(receiveErrors(xhr.responseJSON));
  let success;

  switch(action.type) {
    case REQUEST_ALL_HOME:
      success = allComics => dispatch(receiveAllManga(allComics));
      getAllManga(success, errorCallBack, action.shelf);
      return next(action);

    default:
      next(action);
  }
};

export default HomeMiddleware;
