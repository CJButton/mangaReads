


import { postBookshelf,
         destroyBookshelf,
         updateBookshelf,
         fetchBookshelves} from '../util/bookshelf_api_util';

import { createBookshelf,
         receiveBookshelf,
         receiveBookshelfErrors,
         requestBookshelves,
         receiveBookshelves,
         CREATE_BOOKSHELF,
         DELETE_BOOKSHELF,
         UPDATE_BOOKSHELF,
         REQUEST_ALL_BOOKSHELVES} from '../actions/bookshelf_actions';


const BookshelfMiddleware = ({ getState, dispatch }) => next => action => {
  const errorCallback = xhr => dispatch(receiveBookshelfErrors(xhr.responseJSON));
  let success;

  switch(action.type) {
    case REQUEST_ALL_BOOKSHELVES:
    success = bookshelves => dispatch(receiveBookshelves);
    fetchBookshelves(success)

    case CREATE_BOOKSHELF:
    success = bookshelf => dispatch(receiveBookshelf(bookshelf));
    postBookshelf(action.bookshelf, success, errorCallback);
    next(action);

    case DELETE_BOOKSHELF:
    success = bookshelf => dispatch(removeBookshelf(bookshelf));
    destroyBookshelf(action.bookshelf, success, errorCallback);

    case UPDATE_BOOKSHELF:
    success = bookshelf => dispatch(receiveBookshelf(bookshelf));
    updateBookshelf(action.bookshelf, success, errorCallback);

      default:
        next(action);
  }
};






export default BookshelfMiddleware;
