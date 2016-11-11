

import React from 'react';
import { connect } from 'react-redux';

import { requestAllManga } from '../../actions/manga_actions';

import { changeMangaStatus } from '../../actions/manga_status_actions';

import { requestAllBookshelves } from '../../actions/bookshelf_actions';
import { toggleShelf } from '../../actions/manga_bookshelves_actions';

import MangaShow from './manga';
import values from 'lodash/values';

const mapStateToProps = ({manga, bookshelves, shelvesWithBooks, status}) => ({
  manga,
  bookshelves: values(bookshelves),
  booksonshelves: shelvesWithBooks,
  status: values(status)
});

const mapDispatchToProps = dispatch => ({
  requestAllManga: () => dispatch(requestAllManga()),
  requestAllBookshelves: () => dispatch(requestAllBookshelves()),
  toggleShelf: (bookshelfId, mangaId) => dispatch(toggleShelf(bookshelfId, mangaId)),
  changeMangaStatus: (readStatus, mangaId) => dispatch(changeMangaStatus(readStatus, mangaId))
});


export default connect(
  mapStateToProps,
  mapDispatchToProps
)(MangaShow);
