
import React from 'react';

import { Grid,
         Row,
         Col } from 'react-bootstrap';
import StarRatingComponent from 'react-star-rating-component';


class shelfBars extends React.Component{
  constructor(props) {
    super(props);
  }

  render() {
    const manga = this.props.manga;
    return(
      <div>
        <Grid>
        {manga.map((comic, i) => (
          <Row key={i}>
            <div className='bars-shelf-row-md'>
              <Col md={2}>
                <a href={`#/manga/${comic.id}`}>
                  <img className="bookshelfPicture" src={comic.img_url}/>
                </a>
              </Col>

              <Col md={3}>
                <div className='bars-md-left'>
                  <Col md={12}>
                    <a href={`#/manga/${comic.id}`}>
                      <div className='bars-comicTitle'>
                        {comic.title}
                      </div>
                    </a>
                  </Col>
                  <br />
                  <br />
                  <Col md={12}>
                    <div>
                      Release Date:
                      <div>
                        {comic.release_date}
                      </div>
                    </div>
                  </Col>
                </div>
              </Col>

              <Col md={2}>
                {comic.genre !== undefined ?
                  <ul className="genres">Genres:
                    <li>{comic.genre[0]}</li>
                    <li>{comic.genre[1]}</li>
                    <li>{comic.genre[2]}</li>
                  </ul> : null
                }
              </Col>

              <Col md={2}>
                <div className='bars-md-left'>
                  <Col md={12}>
                    <div className="author">
                      Author:
                      <div>
                        {comic.author}
                      </div>
                    </div>
                  </Col>
                  <br />
                  <Col md={12}>
                    <div className="userShelfRating">
                      Average rating:
                      <div>
                        <StarRatingComponent
                          className="shelfStarRating"
                          name="rater"
                          editing={false}
                          starCount={5}
                          value={comic.avg}/>
                      </div>
                    </div>
                  </Col>
                </div>
              </Col>

            </div>
            <div className='line' />
          </Row>
        ))}
      </Grid>
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
    )
  }
}
export default shelfBars;
