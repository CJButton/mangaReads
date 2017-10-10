

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
     "A manga series that packs quite the punch! Nothing about Saitama passes the eyeball test when it comes to superheroes, from his lifeless expression to his bald head to his unimpressive physique. However, this average-looking guy has a not-so-average problem—he just can’t seem to find an opponent strong enough to take on! Every time a promising villain appears, he beats the snot out of ’em with one punch! Can Saitama finally find an opponent who can go toe-to-toe with him and give his life some meaning? Or is he doomed to a life of superpowered boredom?"
  ]

    return (
      <div className='home-wrapper'>
        <TopBarContainer />
      <img
        className='hero-home-img'
        src={homeHeroes[heroIdx]} />
      <div className='heroInfoWrapper'>
        <div className='hero-Title'>
          {homeTitle[heroIdx]}
        </div>
        <div>
          {homeSyn[heroIdx]}
        </div>
        <div>
          {homeAuthor[heroIdx]}
        </div>
        {/*
          <Button>
          onClick={}
          </Button>
          */}
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
