

import React from 'react';
import Slider from 'react-image-slider';

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
   ///
   //background-color of #root chnged to grey to help with nighttime
   ///
  const actions = this.props.manga.Action;
  const allGenres = this.props.manga;
    return (
      <div className='home-wrapper'>
        <TopBarContainer />
      {actions &&
        <div>
          {Object.keys(allGenres).map((type, i) => {
            let genre = allGenres[type];
            return(
              <div key={i}>
                <h3>
                  {type}
                </h3>
                <div className='slider-wrapper'>
                  <Slider genre={genre} delay={1000000}>
                    {genre.map((comic, i) =>
                      <div key={i} className='slider-img'>
                        <Image src={comic.img_url} />
                      </div>)}
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
