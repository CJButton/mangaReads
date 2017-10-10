

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
    this.state = {
      heroIdx: 0
    }

  }

  componentWillMount() {
    let heroIdx = Math.floor(Math.random() * (1));
    this.setState({
      heroIdx: heroIdx
    });
  }


 render() {
  const actions = this.props.home.Action;
  const allGenres = this.props.home;
  let heroIdx = this.state.heroIdx;

  const homeId = [
    1277
  ]

  const homeTitle = [
    'One Punch Man Vol. 1'
  ]

  const homeHeroes = [
  "http://res.cloudinary.com/ddbfkqb9m/image/upload/q_15/covers/opm-home2.jpg"
  ]

  const homeCovers = [
    'https://res.cloudinary.com/ddbfkqb9m/image/upload/c_scale,h_350,w_233/onepunch1_mkmmb3.jpg'
  ]

  const homeAuthor = [
    'One'
  ]

  const homeSyn = [
     "One punch is all it takes! Can Saitama find an opponent who can go toe-to-toe with him and give his life some meaning? Or is he doomed to a life of superpowered boredom?"
  ]

    return (
      <div className='home-wrapper'>
        <TopBarContainer />
      <img
        className='hero-home-bg'
        src={homeHeroes[heroIdx]} />
      <div className='home-info-wrapper'>
        <div className='home-info'>
          <div className='hero-Title'>
            {homeTitle[heroIdx]}
          </div>
          <div className='hero-author'>
            {homeAuthor[heroIdx]}
          </div>
          <div className='hero-syn'>
            {homeSyn[heroIdx]}
          </div>
        </div>
        <div className='hero-cover'>
          <img
            src={homeCovers[heroIdx]}/>
        </div>
      </div>
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
                      <Link
                        to={`/manga/${comic.id}`}
                        key={i}>
                        <div className='slider-img'>
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
