

export const sendReview =
      (userId, mangaId, rating, title, description, username, success, error) => {
  $.ajax({
    type: 'POST',
    url: `api/reviews`,
    data: {userId, mangaId, rating, title, description, username},
    success,
    error
  });
};

export const getReviews = (id, success, errors) => {
  $.ajax({
    type: 'GET',
    url: `api/reviews/${id}`,
    success,
    errors
  });
};
