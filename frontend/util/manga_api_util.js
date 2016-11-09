


export const getManga = (id, success, error) => {
  $.ajax({
    type: 'GET',
    url: `api/mangas/${id}`,
    success,
    error
  });
};

export const getAllManga = (success, error, shelf) => {
  $.ajax({
    type: 'GET',
    url: `api/mangas`,
    data: {filter: shelf},
    success,
    error
  });
};
