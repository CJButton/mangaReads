

import { RECEIVE_MANGA_REVIEWS,
         RECEIVE_REVIEW_ERRORS,
         RECEIVE_REVIEW } from '../actions/review_actions';

import { merge } from 'lodash';


const ReviewReducer = (state = {}, action) => {
  console.log(action);

  switch(action.type) {
    case RECEIVE_MANGA_REVIEWS:
      const newReviews = merge({}, action.reviews);
        return merge(newReviews);

    case RECEIVE_REVIEW:
        return merge({}, state, action.review);

    default:
        return state;
  }
};

export default ReviewReducer;
