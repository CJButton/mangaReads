
import React from 'react';

import { Grid,
         Row,
         Col,
         Image } from 'react-bootstrap';
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
              <Col xs={10} xsOffset={1} sm={2} smOffset={1}>
                <a href={`#/manga/${comic.id}`}>
                  <Image responsive className="bookshelfPicture" src={comic.img_url}/>
                </a>
              </Col>

              <Col xs={11} xsOffset={1} sm={3} smOffset={0} md={3}>
                <div className='bars-md-left'>
                  <Col>
                    <a href={`#/manga/${comic.id}`}>
                      <div className='bars-comicTitle'>
                        {comic.title}
                      </div>
                    </a>
                  </Col>
                  <br />
                  <br />
                  <div className='bars-releaseDate'>
                    <Col xsHidden>
                      <div>
                        Release Date:
                        <div>
                          {comic.release_date}
                        </div>
                      </div>
                    </Col>
                  </div>
                </div>
              </Col>

              <Col xsHidden sm={0} md={2}>
                {comic.genre !== undefined ?
                  <ul className="genres">Genres:
                    <li>{comic.genre[0]}</li>
                    <li>{comic.genre[1]}</li>
                    <li>{comic.genre[2]}</li>
                  </ul> : null
                }
              </Col>

              <Col xsHidden sm={3}>
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
      </div>
    )
  }
}
export default shelfBars;
