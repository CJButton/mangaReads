

import { RECEIVE_MANGA_REVIEWS,
         RECEIVE_REVIEW_ERRORS,
         RECEIVE_REVIEW } from '../actions/review_actions';

import { merge } from 'lodash';

const ReviewReducer = (state = {}, action) => {
  Object.freeze(state);

  switch(action.type) {
    case RECEIVE_MANGA_REVIEWS:
      const newReviews = merge({}, action.reviews);
        return newReviews;

    case RECEIVE_REVIEW:
      const reviewObject = merge({}, state, {[action.review.id]: action.review});
      console.log(reviewObject);
        return merge({}, state, action.review);
    default:
        return state;
  }
};

export default ReviewReducer;
