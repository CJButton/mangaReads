

import { RECEIVE_MANGA_REVIEWS,
         RECEIVE_REVIEW_ERRORS} from '../actions/review_actions';

import { merge } from 'lodash';

const ReviewReducer = (state = {}, action) => {

  switch(action.type) {

    case RECEIVE_MANGA_REVIEWS:
      const newReviews = merge({}, action.reviews);
        return merge(newReviews);

    default:
      return state;
  }
};

export default ReviewReducer;
