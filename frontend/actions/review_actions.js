


export const SUBMIT_REVIEW = "SUBMIT_REVIEW";
export const RECEIVE_REVIEW_ERRORS = "RECEIVE_REVIEW_ERRORS";
export const REQUEST_MANGA_REVIEWS = "REQUEST_MANGA_REVIEWS";
export const RECEIVE_MANGA_REVIEWS = "RECEIVE_MANGA_REVIEWS";

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

export const receiveMangaReviews = (manga) => ({
  type: RECEIVE_MANGA_REVIEWS,
  manga
});
