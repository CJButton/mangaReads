


import React from 'react';

import { createBookshelf } from '../../actions/bookshelf_actions';
import BookshelfSidebar from '../sidebar/sidebar_container';

import StarRatingComponent from 'react-star-rating-component';


class Bookshelf extends React.Component{
  constructor(props) {
    super(props);

  }

  render() {
    return (
      <div className="bookshelfMain">
        <BookshelfSidebar className="bookshelfLeft"/>


              {this.props.manga.map((comic, i) => (
                <div key={i} className="comicShelfContainer">
                  <a href={`#/manga/${comic.id}`}>
                    <img className="bookshelfPicture" src={comic.img_url}/>
                  </a>
                  <div className="userShelfLeft">
                    <h2>{comic.title}</h2>
                    <h3>{comic.author}</h3>
                    <div className="userShelfRating">Your rating:
                    <div><StarRatingComponent
                      className="shelfStarRating"
                      name="rater"
                      editing={false}
                      starCount={5}
                      value={comic.avg}/></div></div>
                  </div>
                </div>
              ))}
      </div>
    );
  }
}


export default Bookshelf;
// <div className="bookshelfComicText">
//   <div className="bookshelfTitle">{comic.title}</div>
//     <div>by {comic.author}</div>
// </div>

// (
//   <div className="bookshelfMain">
//     <BookshelfSidebar className="bookshelfLeft"/>
//
//
//       <div className="bookshelfContainer">
//           <div className="bookshelfComicShow">
//
//           {this.props.manga.map((comic, i) => (
//             <div key={i} className="comicDisplayWrapper">
//               <div className="comicInfoDisplay">
//
//                 <div>
//                   <a href={`#/manga/${comic.id}`}>
//                     <img className="bookshelfPicture" src={comic.img_url}/>
//                   </a>
//                 </div>
//
//               </div>
//             </div>
//               ))}
//         </div>
//       </div>
// </div>
// );
