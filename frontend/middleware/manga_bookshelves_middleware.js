

import {addToBookshelf,
        receiveErrors,
        TOGGLE_BOOKSHELF,
        receiveToggleUpdate,
        REQUEST_ALL_SHELVES_WITH_BOOK,
        receiveAllShelvesWithBook }
        from '../actions/manga_bookshelves_actions';

import { toggleMangaBookshelf,
         fetchAllShelvesWithBook } from '../util/manga_bookshelves_api_util';

const MangaBookshelvesMiddleware = ({ getState, dispatch }) => next => action => {
  const errorCallBack = xhr => dispatch(receiveErrors(xhr.responseJSON));
  let success;

  switch(action.type) {

    case TOGGLE_BOOKSHELF:
      success = (bookshelves) => dispatch(receiveToggleUpdate(bookshelves));
      toggleMangaBookshelf(action.bookshelfId, action.mangaId, success, errorCallBack);
      return next(action);

    case REQUEST_ALL_SHELVES_WITH_BOOK:
      success = (shelves) => dispatch(receiveAllShelvesWithBook(shelves));
      fetchAllShelvesWithBook(action.mangaId, success);
      return next(action);

    default:
      next(action);
      break;
  }
};


export default MangaBookshelvesMiddleware;
