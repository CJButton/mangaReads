

import { applyMiddleware } from 'redux';
import SessionMiddleware from './session_middleware';
import MangaMiddleware from './manga_middleware';

const RootMiddleware = applyMiddleware(
  SessionMiddleware,
  MangaMiddleware
);

export default RootMiddleware;
