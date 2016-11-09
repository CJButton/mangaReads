


export const REQUEST_BOOKSHELF = "REQUEST_BOOKSHELF";
export const RECEIVE_BOOKSHELF = "REQUEST_BOOKSHELF";
export const REQUEST_ALL_BOOKSHELVES = "REQUEST_ALL_BOOKSHELVES";
export const RECEIVE_ALL_BOOKSHELVES = "RECEIVE_ALL_BOOKSHELVES";
export const DELETE_BOOKSHELF = "DELETE_BOOKSHELF";
export const CREATE_BOOKSHELF = "CREATE_BOOKSHELF";
export const UPDATE_BOOKSHELF = "UPDATE_BOOKSHELF";
export const REMOVE_BOOKSHELF = "REMOVE_BOOKSHELF";
export const RECEIVE_ERRORS = "RECEIVE_ERRORS";

export const requestAllBookshelves = () => ({
  type: REQUEST_ALL_BOOKSHELVES
});

export const receiveAllBookshelves = (shelves) => ({
  type: RECEIVE_ALL_BOOKSHELVES,
  shelves
});

export const receiveBookshelfErrors = (errors) => ({
  type: RECEIVE_ERRORS,
  errors
});

export const updateBookshelf = (bookshelf) => ({
  type: UPDATE_BOOKSHELF,
  bookshelf
});

export const removeBookshelf = (bookshelf) => ({
  type: REMOVE_BOOKSHELF,
  bookshelf
});

export const deleteBookshelf = (id) => ({
  type: DELETE_BOOKSHELF,
  id
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
