


export const SUBMIT_REVIEW = "SUBMIT_REVIEW";
export const RECEIVE_REVIEW_ERRORS = "RECEIVE_REVIEW_ERRORS";
export const REQUEST_MANGA_REVIEWS = "REQUEST_MANGA_REVIEWS";
export const RECEIVE_MANGA_REVIEWS = "RECEIVE_MANGA_REVIEWS";
export const RECEIVE_REVIEW = "RECEIVE_REVIEW";
export const REQUEST_USER_REVIEW = "REQUEST_USER_REVIEW";
export const RECEIVE_USER_REVIEW = "RECEIVE_USER_REVIEW";
export const DELETE_REVIEW = "DELETE_REVIEW";
export const REMOVE_REVIEW = "REMOVE_REVIEW";
export const EDIT_REVIEW = "EDIT_REVIEW";
export const RECEIVE_EDIT = "RECEIVE_EDIT";

export const submitReview = (userId, mangaId, rating, title, description) => ({
  type: SUBMIT_REVIEW,
  userId,
  mangaId,
  rating,
  title,
  description
});

export const receiveReviewErrors = (errors) => ({
  type: RECEIVE_REVIEW_ERRORS,
  errors
});

export const requestMangaReviews = (mangaId) => ({
  type: REQUEST_MANGA_REVIEWS,
  mangaId
});

export const deleteReview = (reviewId) => ({
  type: DELETE_REVIEW,
  reviewId
});

export const removeReview = (review) => ({
  type: REMOVE_REVIEW,
  review
});

export const requestUserReview = (mangaId) => ({
  type: REQUEST_USER_REVIEW,
  mangaId
});

export const receiveUserRevew = (review) => ({
  type: RECEIVE_USER_REVIEW,
  review
});

export const receiveMangaReviews = (reviews) => ({
  type: RECEIVE_MANGA_REVIEWS,
  reviews
});

export const receiveReview = (review) => ({
  type: RECEIVE_REVIEW,
  review
});

export const editReview = (reviewId, rating, title, text) => ({
  type: EDIT_REVIEW,
  reviewId,
  rating,
  title,
  text
});

export const receiveEdit = (review) => ({
  type: RECEIVE_EDIT,
  review
});
