

import React from 'react';
import { connect } from 'react-redux';

import Home from './home';

import { changeMangaStatus,
         requestMangaStatus } from '../../actions/manga_status_actions';

import { requestAllBookshelves } from '../../actions/bookshelf_actions';

import { toggleShelf,
         requestAllShelvesWithBook }
         from '../../actions/manga_bookshelves_actions';

import values from 'lodash/values';

const mapStateToProps = ({home, bookshelves, shelvesWithBooks, status}) => ({
  home,
  bookshelves: values(bookshelves),
  shelvesWithBooks: values(shelvesWithBooks),
  status: values(status)[0]
});

const mapDispatchToProps = dispatch => ({
  requestAllBookshelves: () =>
          dispatch(requestAllBookshelves()),
  toggleShelf: (bookshelfId, mangaId) =>
          dispatch(toggleShelf(bookshelfId, mangaId)),
  changeMangaStatus: (readStatus, mangaId) =>
          dispatch(changeMangaStatus(readStatus, mangaId)),
  requestMangaStatus: (mangaId) =>
          dispatch(requestMangaStatus(mangaId))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Home);
