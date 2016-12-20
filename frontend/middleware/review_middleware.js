

import { submitReview,
         SUBMIT_REVIEW,
         receiveReviewErrors,
         receiveMangaReviews,
         requestReviews,
         REQUEST_REVIEWS} from '../actions/review_actions';

import { sendReview, getReviews } from '../util/review_api_util';


const ReviewMiddleware = ({getState, dispatch}) => next => action => {
  const errorCallBack = xhr => dispatch(receiveReviewErrors(xhr.responseJSON));
  let success;

  switch(action.type) {
    case SUBMIT_REVIEW:
      success = reviews => dispatch(receiveMangaReviews(reviews));
      sendReview(action.userId, action.mangaId, action.rating,
              action.title, action.description, success, errorCallBack);
      return next(action);

    case REQUEST_REVIEWS:
      success = reviews => dispatch(receiveMangaReviews(reviews));
      getReviews(action.id, success, errorCallBack);
      return next(action);
  }



};
