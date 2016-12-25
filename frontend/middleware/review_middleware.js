

import { submitReview,
         SUBMIT_REVIEW,
         receiveReviewErrors,
         receiveMangaReviews,
         requestReviews,
         REQUEST_MANGA_REVIEWS,
         RECEIVE_REVIEW,
         receiveReview ,
         REQUEST_USER_REVIEW,
         receiveUserReview,
         DELETE_REVIEW,
         removeReview,
         EDIT_REVIEW,
         receiveEdit} from '../actions/review_actions';

import { sendReview, getReviews, getUserReview,
         deleteReviewAPI, editReviewAPI } from '../util/reviews_api_util';

const ReviewMiddleware = ({ getState, dispatch }) => next => action => {
  console.log(action);


  const errorCallBack = xhr => dispatch(receiveReviewErrors(xhr.responseJSON));
  let success;

  switch(action.type) {
    case DELETE_REVIEW:
      success = (review) => dispatch(removeReview(review));
      deleteReviewAPI(action.reviewId, success, errorCallBack);
    return next(action);

    case REQUEST_MANGA_REVIEWS:
      success = (reviews) => dispatch(receiveMangaReviews(reviews));
      getReviews(success, errorCallBack, action.mangaId);
    return next(action);

    case REQUEST_USER_REVIEW:
      success = (review) => dispatch(receiveUserReview(review));
      getUserReview(action.mangaId, success, errorCallBack);
    return next(action);

    case SUBMIT_REVIEW:
      success = (review) => dispatch(receiveReview(review));
      sendReview(action.userId, action.mangaId, action.rating,
              action.title, action.description, action.username, success, errorCallBack);
      return next(action);

    case EDIT_REVIEW:
      success = (review) => dispatch(receiveEdit(review));
      editReviewAPI(action.reviewId, action.rating, action.title, action.text,
                  success, errorCallBack);
      return next(action);

    default:
      next(action);
  }



};

export default ReviewMiddleware;
