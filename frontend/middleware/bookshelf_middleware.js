


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
  let success;
  console.log(action.type);
  switch(action.type) {
    case REQUEST_ALL_BOOKSHELVES:
    success = shelves => dispatch(receiveAllBookshelves(shelves));
    fetchAllBookshelves(success);
    return next(action);

    default:
      next(action);
  }
};






export default BookshelfMiddleware;
