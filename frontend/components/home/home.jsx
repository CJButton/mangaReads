

import React from 'react';
import Slider from 'react-image-slider';
import { Link } from 'react-router';

import { Grid,
         Row,
         Col,
         Image } from 'react-bootstrap';

import TopBarContainer from '../topbar/topbar_container';
class Home extends React.Component{
  constructor(props) {
    super(props);
  }

 render() {
  const actions = this.props.manga.Action;
  const allGenres = this.props.manga;
  console.log(this.props);
    return (
      <div className='home-wrapper'>
        <TopBarContainer />
      {actions &&
        <div>
          {Object.keys(allGenres).map((type, i) => {
            let genre = allGenres[type];
            return(
              <div key={i}>
                <h3 className='slider-title'>
                  {type}
                </h3>
                <div className='slider-wrapper'>
                  <Slider genre={genre} delay={1000000}>
                    {genre.map((comic, i) =>
                      <Link to={`/manga/${comic.id}`}>
                        <div key={i} className='slider-img'>
                          <Image src={comic.img_url} />
                        </div>
                      </Link>
                      )}
                    </Slider>
                  </div>
                  <br/>
                  <br/>
                </div>
              );
            }
          )}
        </div>
      }
      </div>
      );
  }
};

export default Home;
