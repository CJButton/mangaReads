


export const requestManga = (id, success, error) => {
  $.ajax({
    method: 'GET',
    url: `api/manga/${id}`,
    success,
    error
  });
};
