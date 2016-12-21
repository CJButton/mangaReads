

import { submitReview,
         SUBMIT_REVIEW,
         receiveReviewErrors,
         receiveMangaReviews,
         requestReviews,
         REQUEST_MANGA_REVIEWS} from '../actions/review_actions';

import { sendReview, getReviews } from '../util/reviews_api_util';


const ReviewMiddleware = ({ getState, dispatch }) => next => action => {
  const errorCallBack = xhr => dispatch(receiveReviewErrors(xhr.responseJSON));
  let success;
  success = (reviews) => dispatch(receiveMangaReviews(reviews));

  switch(action.type) {
    case REQUEST_MANGA_REVIEWS:
      getReviews(action.mangaId, success, errorCallBack);
    return next(action);

    case SUBMIT_REVIEW:
      sendReview(action.userId, action.mangaId, action.rating,
              action.title, action.description,
              success, errorCallBack);
      return next(action);

      default:
        next(action);
  }



};

export default ReviewMiddleware;
// success = (reviews) => dispatch(receiveMangaReviews(reviews));
