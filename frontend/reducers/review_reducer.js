

import { RECEIVE_MANGA_REVIEWS,
         RECEIVE_REVIEW_ERRORS,
         RECEIVE_REVIEW,
         RECEIVE_USER_REVIEW,
         REMOVE_REVIEW,
         RECEIVE_EDIT } from '../actions/review_actions';

import { merge } from 'lodash';
import values from 'lodash/values';


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
      let newState = merge({}, state);
      merge(newState.allReviews, action.review);
      merge(newState.userReview, values(action.review)[0]);
      return newState;

    case RECEIVE_USER_REVIEW:
      let receiveUserRev = merge({}, state);
      receiveUserRev.userReview = action.review;
      return receiveUserRev;

    case RECEIVE_EDIT:
      let editedReview = merge({}, state);
      editedReview.allReviews[action.review.id] = action.review;
      editedReview.userReview = action.review;
        return editedReview;

    case REMOVE_REVIEW:
      let deleteReviewState = merge({}, state);
      delete deleteReviewState.allReviews[action.review.id];
      deleteReviewState.userReview = {};
      return deleteReviewState;

    default:
        return state;
  }
};

export default ReviewReducer;

//
// case RECEIVE_USER_REVIEW:
//   return merge({}, {userReview: action.review});
