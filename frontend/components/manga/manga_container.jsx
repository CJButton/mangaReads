

import React from 'react';
import { connect } from 'react-redux';

import { requestAllManga } from '../../actions/manga_actions';

import { requestAllBookshelves } from '../../actions/bookshelf_actions';
import { toggleShelf } from '../../actions/manga_bookshelves_actions';

import MangaShow from './manga';
import values from 'lodash/values';

const mapStateToProps = ({manga, bookshelves, shelvesWithBooks}) => ({
  manga,
  bookshelves: values(bookshelves),
  booksonshelves: values(shelvesWithBooks)
});

const mapDispatchToProps = dispatch => ({
  requestAllManga: () => dispatch(requestAllManga()),
  requestAllBookshelves: () => dispatch(requestAllBookshelves()),
  toggleShelf: (bookshelfId, mangaId) => dispatch(toggleShelf(bookshelfId, mangaId))
});


export default connect(
  mapStateToProps,
  mapDispatchToProps
)(MangaShow);
