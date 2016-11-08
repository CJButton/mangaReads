


import React from 'react';
import Slider from 'react-slick';


import { createBookshelf } from '../../actions/bookshelf_actions';

class Bookshelf extends React.Component{
  constructor(props) {
    super(props);

  }

  update(property) {
    return e => this.setState({[property]: e.target.value});
  }

  render() {
    return (
      <ul>
        {this.props.bookshelf.map((comic, i) => (
          <li key={i} className="allBookshelfManga">
            <div className="allBookshelfImage">
              <img src={comic.img_url} width="210" height="300"/>
            </div>
            <div>{comic.title}</div>
          </li>
        ))}
      </ul>
    );
  }
}


export default Bookshelf;
