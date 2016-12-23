


import { postBookshelf,
         fetchAllBookshelves,
         deleteBookshelf} from '../util/bookshelf_api_util';

import { createBookshelf,
         receiveBookshelf,
         receiveBookshelfErrors,
         requestBookshelves,
         receiveAllBookshelves,
         removeBookshelf,
         CREATE_BOOKSHELF,
         DELETE_BOOKSHELF,
         UPDATE_BOOKSHELF,
         REQUEST_ALL_BOOKSHELVES} from '../actions/bookshelf_actions';


const BookshelfMiddleware = ({ getState, dispatch }) => next => action => {
  const errorCallback = xhr => dispatch(receiveBookshelfErrors(xhr.responseJSON));
  let success;

  switch(action.type) {
    case REQUEST_ALL_BOOKSHELVES:
    success = shelves => dispatch(receiveAllBookshelves(shelves));
    fetchAllBookshelves(success);
    return next(action);

    case CREATE_BOOKSHELF:
    success = shelf => dispatch(receiveBookshelf(shelf));
    postBookshelf(action.bookshelf, success);
    return next(action);

    case DELETE_BOOKSHELF:
    success = bookshelf => dispatch(removeBookshelf(bookshelf));
    deleteBookshelf(action.id, success);
    return next(action);


    default:
      next(action);
  }
};

export default BookshelfMiddleware;
