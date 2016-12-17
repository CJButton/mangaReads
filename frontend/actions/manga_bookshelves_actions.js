

export const TOGGLE_BOOKSHELF = "TOGGLE_BOOKSHELF";
export const RECEIVE_TOGGLE_UPDATE = "RECEIVE_TOGGLE_UPDATE";
export const REQUEST_ALL_SHELVES_WITH_BOOK = "REQUEST_ALL_SHELVES_WITH_BOOK";


export const toggleShelf = (bookshelfId, mangaId) => ({
  type: TOGGLE_BOOKSHELF,
  bookshelfId,
  mangaId
});

export const receiveToggleUpdate = (bookshelves) => ({
  type: RECEIVE_TOGGLE_UPDATE,
  bookshelves
});

export const requestAllShelvesWithBook = (mangaId) => ({
  type: REQUEST_ALL_SHELVES_WITH_BOOK,
  mangaId
});
