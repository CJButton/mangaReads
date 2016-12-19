

import React from 'react';
import { connect } from 'react-redux';

import { requestAllManga } from '../../actions/manga_actions';

import { changeMangaStatus,
         requestMangaStatus } from '../../actions/manga_status_actions';

import { requestAllBookshelves } from '../../actions/bookshelf_actions';
import { toggleShelf,
         requestAllShelvesWithBook }
         from '../../actions/manga_bookshelves_actions';

import MangaShow from './manga';
import values from 'lodash/values';

const mapStateToProps = ({manga, bookshelves, shelvesWithBooks, status}) => ({
  manga,
  bookshelves: values(bookshelves),
  booksonshelves: values(shelvesWithBooks),
  status: values(status)[0]
});

const mapDispatchToProps = dispatch => ({
  // requestAllManga: () => dispatch(requestAllManga()),
  requestAllBookshelves: () => dispatch(requestAllBookshelves()),
  toggleShelf: (bookshelfId, mangaId) => dispatch(toggleShelf(bookshelfId, mangaId)),
  changeMangaStatus: (readStatus, mangaId) => dispatch(changeMangaStatus(readStatus, mangaId)),
  requestMangaStatus: (mangaId) => dispatch(requestMangaStatus(mangaId)),
  requestAllShelvesWithBook: (mangaId) => dispatch(requestAllShelvesWithBook(mangaId))
});


export default connect(
  mapStateToProps,
  mapDispatchToProps
)(MangaShow);
