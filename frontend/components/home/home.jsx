

import React from 'react';
// import Slider from 'react-slick';
import Slider from 'react-image-slider';

import { Grid,
         Row,
         Col,
         Image } from 'react-bootstrap';

import TopBarContainer from '../topbar/topbar_container';

const Home = ( props ) => {
   //background-color of #root chnged to black to help with nighttime
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
    <Slider actions={actions} isInfinite delay={1000000}>
      {actions.map((comic, i) => <div key={i}><img src={comic.img_url} /></div>)}
    </Slider>
  }
  </div>
  );
};

export default Home;
