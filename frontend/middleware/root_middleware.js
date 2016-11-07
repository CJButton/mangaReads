

import { applyMiddleware } from 'redux';
import SessionMiddleware from './session_middleware';
import MangaMiddleware from './manga_middleware';
import BookshelfMiddleware from './bookshelf_middleware';

const RootMiddleware = applyMiddleware(
  SessionMiddleware,
  MangaMiddleware,
  BookshelfMiddleware
);

export default RootMiddleware;
