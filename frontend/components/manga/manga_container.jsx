

import React from 'react';
import { connect } from 'react-redux';

import { requestAllManga } from '../../actions/manga_actions';

import { changeMangaStatus,
         requestMangaStatus } from '../../actions/manga_status_actions';

import { requestAllBookshelves } from '../../actions/bookshelf_actions';
import { toggleShelf,
         requestAllShelvesWithBook }
         from '../../actions/manga_bookshelves_actions';

import { submitReview, deleteReview, editReview }
         from '../../actions/review_actions';

import MangaShow from './manga';
import values from 'lodash/values';

const mapStateToProps = ({manga, bookshelves, reviews,
              shelvesWithBooks, status, session}) => ({
  user: session.currentUser,
  manga,
  bookshelves: values(bookshelves),
  booksonshelves: values(shelvesWithBooks),
  status: values(status)[0],
  reviews: values(reviews),
  userReview: reviews.userReview
});

const mapDispatchToProps = dispatch => ({
  requestAllBookshelves: () => dispatch(requestAllBookshelves()),
  toggleShelf: (bookshelfId, mangaId) =>
          dispatch(toggleShelf(bookshelfId, mangaId)),
  changeMangaStatus: (readStatus, mangaId) =>
          dispatch(changeMangaStatus(readStatus, mangaId)),
  requestMangaStatus: (mangaId) => dispatch(requestMangaStatus(mangaId)),
  submitReview: (userId, mangaId, rating, title, description, username) =>
          dispatch(submitReview(userId, mangaId, rating, title, description, username)),
  deleteReview: (reviewId) => dispatch(deleteReview(reviewId)),
  editReview: (reviewId, rating, title, text) =>
                      dispatch(editReview(reviewId, rating, title, text))
});


export default connect(
  mapStateToProps,
  mapDispatchToProps
)(MangaShow);
