

import React from 'react';
import { connect } from 'react-redux';

import { requestAllManga } from '../../actions/manga_actions';

import { requestAllBookshelves } from '../../actions/bookshelf_actions';

import MangaShow from './manga';

const mapStateToProps = ({manga, bookshelves}) => ({
  manga, bookshelves
});

const mapDispatchToProps = dispatch => ({
  requestAllManga: () => dispatch(requestAllManga()),
  requestAllBookshelves: () => dispatch(requestAllBookshelves())
});


export default connect(
  mapStateToProps,
  mapDispatchToProps
)(MangaShow);
