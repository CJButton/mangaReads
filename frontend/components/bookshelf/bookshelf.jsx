


import React from 'react';

import { createBookshelf } from '../../actions/bookshelf_actions';
import ShelfControls from '../sidebar/shelfControls_Container';

import StarRatingComponent from 'react-star-rating-component';
import { Grid,
         Row,
         Col } from 'react-bootstrap';

class Bookshelf extends React.Component{
  constructor(props) {
    super(props);
  }

  render() {
    // window.scrollTo(0,0);
    return (
      <div>
        <div className='bookshelfMain'>
          <ShelfControls />
        </div>
        {/*
              {this.props.manga.map((comic, i) => (
                <div key={i} className="comicShelfContainer">
                  <a href={`#/manga/${comic.id}`}>
                    <img className="bookshelfPicture" src={comic.img_url}/>
                  </a>
                  <div className="userShelfLeft">
                      <a href={`#/manga/${comic.id}`}
                        className="userShelfTitle-link">
                        <h3>{comic.title}</h3>
                      </a>
                    <div className="mangaContent">
                      <div className="releaseDate">Release Date:<div>
                        {comic.release_date}</div></div>

                      {comic.genre !== undefined ?
                      <ul className="genres">Genres:
                        <li>{comic.genre[0]}</li>
                        <li>{comic.genre[1]}</li>
                        <li>{comic.genre[2]}</li>
                      </ul> : null
                    }

                      <div className="author">Author:
                        <div>{comic.author}</div></div>
                      <div className="userShelfRating">Your rating:
                      <div><StarRatingComponent
                        className="shelfStarRating"
                        name="rater"
                        editing={false}
                        starCount={5}
                        value={comic.avg}/></div></div>
                    </div>
                  </div>
                </div>
              ))}
              */}
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
