

import React from 'react';
import { connect } from 'react-redux';

import { submitReview, deleteReview, editReview }
         from '../../actions/review_actions';

import values from 'lodash/values';
import Reviews from './reviews';

const mapStateToProps = ( {reviews, session, manga} ) => ({
  user: session.currentUser,
  manga,
  allReviews: values(reviews)[0],
  userReview: reviews.userReview
});

const mapDispatchToProps = dispatch => ({
  submitReview: (userId, mangaId, rating, title, description, username) =>
          dispatch(submitReview(userId, mangaId, rating, title, description, username)),
  deleteReview: (reviewId) =>
          dispatch(deleteReview(reviewId)),
  editReview: (reviewId, rating, title, text) =>
          dispatch(editReview(reviewId, rating, title, text))
});


export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Reviews);
