


import {RECEIVE_MANGA, RECEIVE_ERRORS} from '../actions/manga_actions';
import { merge } from 'lodash';


const MangaReducer = (state = {}, action) => {
  Object.freeze(state);

  switch(action.type) {

    case RECEIVE_MANGA:
      return merge({[action.manga.id]: action.manga});

    default:
      return state;
  }
};

export default MangaReducer;

// State Shape
 // {
 //   1: {
 //     id: 1,
 //     title: "Ruroni Kenshin",
 //     author: "Nobuhiro Watsuki",
 //     synopsis: "The story begins during the 11th year of the Meiji period in Japan and follows a former assassin from the Bakumatsu, known as Hitokiri Battosai. After his work against the bakufu, Hitokiri Battosai disappears to become Himura Kenshin: a wandering samurai who protects the people of Japan with a vow of never to take another life."
 //     img_url: "url goes here"
 //   }
 // }
