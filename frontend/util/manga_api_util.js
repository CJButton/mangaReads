


export const requestManga = (id, success, error) => {
  $.ajax({
    type: 'GET',
    url: `api/mangas/${id}`,
    success,
    error
  });
};

export const getAllManga = (success, error) => {
  $.ajax({
    type: 'GET',
    url: `api/mangas`,
    success,
    error
  });
};
