

import { submitReview,
         SUBMIT_REVIEW,
         receiveReviewErrors,
         receiveMangaReviews,
         requestReviews,
         REQUEST_MANGA_REVIEWS,
         RECEIVE_REVIEW,
         receiveReview } from '../actions/review_actions';

import { sendReview, getReviews } from '../util/reviews_api_util';


const ReviewMiddleware = ({ getState, dispatch }) => next => action => {
  const errorCallBack = xhr => dispatch(receiveReviewErrors(xhr.responseJSON));
  let success;

  switch(action.type) {
    case REQUEST_MANGA_REVIEWS:
      success = (reviews) => dispatch(receiveMangaReviews(reviews));
      getReviews(action.mangaId, success, errorCallBack);
    return next(action);

    case SUBMIT_REVIEW:
      success = (review) => dispatch(receiveReview(review));
      sendReview(action.userId, action.mangaId, action.rating,
              action.title, action.description, success);
      return next(action);

    default:
      next(action);
  }



};

export default ReviewMiddleware;
