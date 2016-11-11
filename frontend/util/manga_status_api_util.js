



export const changeStatus = (readStatus, mangaId, success, error) => {
  $.ajax({
    type: 'POST',
    url: `api/mangastatus`,
    data: {readStatus, mangaId},
    success,
    error
  });
};
