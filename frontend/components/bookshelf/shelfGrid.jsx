
import React from 'react';

import { Grid,
         Row,
         Col,
         Image } from 'react-bootstrap';
import StarRatingComponent from 'react-star-rating-component';


class shelfGrid extends React.Component{
  constructor(props) {
    super(props);
  }

  render() {
    const manga = this.props.manga;
    return(
      <div>
          <div className='grid-shelf'>

          {manga.map((comic, i) => (
              <Col xs={6} sm={3} md={2}>
                <a href={`#/manga/${comic.id}`}>
                  <Image responsive className="bookshelfPicture" src={comic.img_url}/>
                </a>
              </Col>
          ))}
          </div>
      </div>
    )
  }
}


export default shelfGrid;
