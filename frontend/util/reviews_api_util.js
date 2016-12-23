

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

export const deleteReviewAPI = (reviewId, success, errors) => {
  $.ajax({
    type: 'DELETE',
    url: `api/reviews/${reviewId}`,
    success,
    errors
  });
};

export const getReviews = (success, errors, id) => {
  $.ajax({
    type: 'GET',
    url: `api/reviews/`,
    data: {manga: id},
    success,
    errors
  });
};

export const getUserReview = (mangaId, success, error) => {
  $.ajax({
    type: 'GET',
    url: `api/reviews/${mangaId}`,
    mangaId,
    success,
    error
  });
};

export const editReviewAPI = (reviewId, rating, title, text, success, error) => {
  debugger
  $.ajax({
    type: 'PUT',
    url: `api/reviews/${reviewId}`,
    data: {rating, title, text},
    success,
    error
  });
};
