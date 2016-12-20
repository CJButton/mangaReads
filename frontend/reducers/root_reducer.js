


import { combineReducers } from 'redux';

import SessionReducer from './session_reducer';
import MangaReducer from './manga_reducer';
import BookshelfReducer from './bookshelf_reducer';
import MangaBookshelvesReducer from './mangabookshelf_reducer';
import MangaStatusReducer from './mangastatus_reducer';
import ReviewReducer from '.reviews_reducer';


const RootReducer = combineReducers({
  session: SessionReducer,
  manga: MangaReducer,
  bookshelves: BookshelfReducer,
  shelvesWithBooks: MangaBookshelvesReducer,
  status: MangaStatusReducer,
  reviews: ReviewReducer
});

export default RootReducer;
