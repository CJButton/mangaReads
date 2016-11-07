


import { postBookshelf,
         receiveBookshelf,
         receiveBookshelfErrors,
         CREATE_BOOKSHELF
} from '../actions/bookshelf_actions';

import { postBookshelf
} from '../util/bookshelf_api_util';

const BookshelfMiddleware = ({ getState, dispatch}) => next => action => {
  const errorCallback = xhr => dispatch(receiveBookshelfErrors(xhr.responseJSON));
  let success;

  switch(action.type) {
    case CREATE_BOOKSHELF:
    debugger
      success = bookshelf => dispatch(receiveBookshelf(bookshelf));
      postBookshelf(action.bookshelf, success, errorCallback);
      next(action);

      default:
        next(action);
  }
};
