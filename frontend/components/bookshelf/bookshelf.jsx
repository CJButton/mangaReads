

import React from 'react';

import ShelfBars from './shelfBars';
import ShelfGrid from './shelfGrid';

import { createBookshelf } from '../../actions/bookshelf_actions';
import ShelfControls from '../sidebar/shelfControls_Container';

import StarRatingComponent from 'react-star-rating-component';
import { Grid,
         Row,
         Col } from 'react-bootstrap';

class Bookshelf extends React.Component{
  constructor(props) {
    super(props);
    this.state = {
      shelfType: 'bars'
    }
    this.changeShelfType = this.changeShelfType.bind(this);
  }

  changeShelfType(e) {
    this.setState({
      shelfType: e
    });
  }

  render() {
    const shelfType = this.state.shelfType;
    const changeShelfType = this.changeShelfType;
    const currentManga = this.props.manga;
    return (
      <div>
        <div className='bookshelfMain'>
          <ShelfControls
            changeShelfType={changeShelfType}/>
        </div>
        {shelfType === 'grid' && <ShelfGrid manga={currentManga} />}
        {shelfType === 'bars' && <ShelfBars manga={currentManga} />}

            { /*
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
