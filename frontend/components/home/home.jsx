

import React from 'react';
// import Slider from 'react-slick';
import Slider from 'react-image-slider';

import { Grid,
         Row,
         Col,
         Image } from 'react-bootstrap';

import TopBarContainer from '../topbar/topbar_container';

const Home = ( props ) => {
   //background-color of #root chnged to grey to help with nighttime
   ///
  const actions = props.manga.action;
  const romances = props.manga.romance;
    return (
  <div>
    <TopBarContainer />
    <h3>
      Action
    </h3>
  {actions &&
    <div className='slider-wrapper'>
      <Slider actions={actions} isInfinite delay={1000000}>
        {actions.map((comic, i) => <div key={i}><img src={comic.img_url} /></div>)}
      </Slider>
    </div>
  }
  <br />
  <br />
  <h3>
    Romance
  </h3>
  {romances &&
    <div className='slider-wrapper'>
      <Slider romances={romances} isInfinite delay={1000000}>
        {romances.map((comic, i) => <div key={i}><img src={comic.img_url} /></div>)}
      </Slider>
    </div>
  }
  </div>
  );
};

export default Home;
