

import {addToBookshelf,
        receiveErrors,
        TOGGLE_BOOKSHELF,
        receiveToggleUpdate} from '../actions/manga_bookshelves_actions';

import { toggleMangaBookshelf } from '../util/manga_bookshelves_api_util';

const MangaBookshelvesMiddleware = ({ getState, dispatch }) => next => action => {
  const errorCallBack = xhr => dispatch(receiveErrors(xhr.responseJSON));
  let success;

  switch(action.type) {
    case TOGGLE_BOOKSHELF:

    success = (bookshelves) => dispatch(receiveToggleUpdate(bookshelves));
    toggleMangaBookshelf(action.bookshelfId, action.mangaId, success, errorCallBack);
    return next(action);

    default:
      next(action);
  }
};


export default MangaBookshelvesMiddleware;
