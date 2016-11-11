

import { applyMiddleware } from 'redux';

import SessionMiddleware from './session_middleware';
import MangaMiddleware from './manga_middleware';
import BookshelfMiddleware from './bookshelf_middleware';
import MangaBookshelvesMiddleware from './manga_bookshelves_middleware';
import MangaStatusMiddleware from './manga_status_middleware';

const RootMiddleware = applyMiddleware(
  SessionMiddleware,
  MangaMiddleware,
  BookshelfMiddleware,
  MangaBookshelvesMiddleware,
  MangaStatusMiddleware
);

export default RootMiddleware;
