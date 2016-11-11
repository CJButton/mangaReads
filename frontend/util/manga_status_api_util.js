



export const changeStatus = (readStatus, mangaId, success, error) => {
  $.ajax({
    type: 'POST',
    url: `api/mangastatus`,
    data: {readStatus, mangaId},
    success,
    error
  });
};

export const updateStatus = (mangaId, success, error) => {
  $.ajax({
    type: 'GET',
    url: `api/mangastatus/${mangaId}`,
    data: {mangaId},
    success,
    error
  });
};
