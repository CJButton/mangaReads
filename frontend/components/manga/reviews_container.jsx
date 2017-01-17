

import React from 'react';
import { connect } from 'react-redux';

import values from 'lodash/values';
import Reviews from './reviews';

const mapStateToProps = ( {reviews, session, manga} ) => ({
  user: session.currentUser,
  manga,
  allReviews: values(reviews)[0],
  userReview: reviews.userReview
});

const mapDispatchToProps = dispatch => ({

});


export default connect(
  mapStateToProps
)(Reviews);
