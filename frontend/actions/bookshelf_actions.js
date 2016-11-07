


export const REQUEST_BOOKSHELF = "REQUEST_BOOKSHELF";
export const RECEIVE_BOOKSHELF = "REQUEST_BOOKSHELF";
export const DELETE_BOOKSHELF = "DELETE_BOOKSHELF";
export const CREATE_BOOKSHELF = "CREATE_BOOKSHELF";
export const UPDATE_BOOKSHELF = "UPDATE_BOOKSHELF";
export const RECEIVE_ERRORS = "RECEIVE_ERRORS";

export const receiveBookshelfErrors = (errors) => ({
  type: RECEIVE_ERRORS,
  errors
});

// need to rethink this one; how exactly do I update
export const updateBookshelf = (bookshelf) => ({
  type: UPDATE_BOOKSHELF,
  bookshelf
});


export const deleteBookshelf = (bookshelf) => ({
  type: DELETE_BOOKSHELF,
  bookshelf
});

export const createBookshelf = (bookshelf) => ({
  type: CREATE_BOOKSHELF,
  bookshelf
});

export const requestBookshelf = (id) => ({
  type: REQUEST_BOOKSHELF,
  id
});

export const receiveBookshelf = (bookshelf) => ({
  type: RECEIVE_BOOKSHELF,
  bookshelf
});
