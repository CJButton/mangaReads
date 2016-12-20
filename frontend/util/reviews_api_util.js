

export const sendReview =
      (userId, mangaId, rating, title, description, success, error) => {
  $.ajax({
    type: 'POST',
    url: `api/reviews`,
    data: {userId, mangaId, rating, title, description },
    success,
    error
  });
};

export const getReviews = (mangaId, success, errors) => {
  $.ajax({
    type: 'GET',
    url: `api/reviews/${mangaId}`,
    success,
    errors
  });
};
