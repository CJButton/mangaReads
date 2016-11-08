

export const fetchAllBookshelves = (success) => {
  $.ajax({
    type: 'GET',
    url: `api/bookshelves`,
    success
  });
};

export const fetchBookshelf = (id, success, error) => {
  $.ajax({
    type: 'GET',
    url: `api/bookshelves/${id}`,
    success,
    error
  });
};

export const postBookshelf = (bookshelf, success, error) => {
  $.ajax({
    type: 'POST',
    url: `api/bookshelves`,
    data: bookshelf,
    success,
    error
  });






};
