

export const fetchAllBookshelves = (success) => {
  $.ajax({
    type: 'GET',
    url: `/api/bookshelves`,
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

export const postBookshelf = (shelf, success, error) => {
  $.ajax({
    type: 'POST',
    url: `api/bookshelves`,
    data: {shelf},
    success,
    error
  });
};


export const deleteBookshelf = (id, success, error) => {
  $.ajax({
    type: 'DELETE',
    url: `/api/bookshelves/${id}`,
    success,
    error
  })
}
