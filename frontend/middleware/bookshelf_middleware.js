


import { postBookshelf,
         fetchAllBookshelves} from '../util/bookshelf_api_util';

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
  let receiveBookshelfSuccess = bookshelf => dispatch(receiveBookshelf(bookshelf));
  let success;

  switch(action.type) {
    case REQUEST_ALL_BOOKSHELVES:
    success = bookshelves => dispatch(receiveAllBookshelves(bookshelves));
    return fetchAllBookshelves(success);

    case CREATE_BOOKSHELF:
    return postBookshelf(action.bookshelf, receiveBookshelfSuccess);

    default:
      next(action);
  }
};






export default BookshelfMiddleware;
