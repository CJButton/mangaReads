

import { RECEIVE_MANGA_REVIEWS,
         RECEIVE_REVIEW_ERRORS,
         RECEIVE_REVIEW,
         RECEIVE_USER_REVIEW,
         REMOVE_REVIEW } from '../actions/review_actions';

import { merge } from 'lodash';

const ReviewReducer = (state = {}, action) => {
  Object.freeze(state);

  switch(action.type) {
    case RECEIVE_MANGA_REVIEWS:
      const newReviews = merge({}, action.reviews);
        return newReviews;

      case RECEIVE_REVIEW:
        return merge({}, state, action.review);

      case RECEIVE_USER_REVIEW:
        return merge({}, {userReview: action.review});

      case REMOVE_REVIEW:
        let deleteReviewState = merge({}, state);
        delete deleteReviewState[action.review.id];
        return deleteReviewState;

    default:
        return state;
  }
};

export default ReviewReducer;
