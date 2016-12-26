

import { RECEIVE_MANGA_REVIEWS,
         RECEIVE_REVIEW_ERRORS,
         RECEIVE_REVIEW,
         RECEIVE_USER_REVIEW,
         REMOVE_REVIEW,
         RECEIVE_EDIT } from '../actions/review_actions';

import { merge } from 'lodash';

const initialState = {
  allReviews: {},
  userReview: {}
};

const ReviewReducer = (state = initialState, action) => {

  switch(action.type) {
    case RECEIVE_MANGA_REVIEWS:
      state.allReviews = action.reviews;
        return state;

      case RECEIVE_REVIEW:
        return merge({}, state, action.review);

      case RECEIVE_USER_REVIEW:
        state.userReview = action.review;
        return state;

      case RECEIVE_EDIT:
        let editedReview = merge({}, state);
        editedReview[action.review.id] = action.review;
          return editedReview;

      case REMOVE_REVIEW:
        let deleteReviewState = merge({}, state);
        delete deleteReviewState[action.review.id];
        return deleteReviewState;

    default:
        return state;
  }
};

export default ReviewReducer;

//
// case RECEIVE_USER_REVIEW:
//   return merge({}, {userReview: action.review});
