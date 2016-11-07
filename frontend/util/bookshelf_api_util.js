

export const updateBookshelf = (bookshelf, success, error) => {
  $.ajax({
    type: `PATCH`,
    url: `api/bookshelves/${bookshelf.id}`,
    data: {bookshelf},
    success,
    error
  });
};

export const deleteBookshelf = (bookshelf, success, error) => {
  $.ajax({
    type: `DELETE`,
    url: `api/bookshelves/${bookshelf.id}`,
    success,
    error
  });
};

export const fetchBookshelf = (id, success, error) => {
  $.ajax({
    type: `GET`,
    url: `api/bookshelves/${id}`,
    success,
    error
  });
};

export const postBookshelf = (bookshelf, success, error) => {
  $.ajax({
    type: `POST`,
    url: `api/bookshelves/`,
    data: {bookshelf},
    success,
    error
  });
};
