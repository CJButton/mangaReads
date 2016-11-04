


import { combineReducers } from 'redux';

import SessionReducer from './session_reducer';
import MangaReducer from './manga_reducer';

const RootReducer = combineReducers({
  session: SessionReducer,
  manga: MangaReducer
});

export default RootReducer;
