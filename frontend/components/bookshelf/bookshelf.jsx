


import React from 'react';

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
            <li className="allBookshelfImage">
              <img src={comic.img_url} width="210" height="300"/>
            </li>
            <div>{comic.title}</div>
          </li>
        ))}
      </ul>
    );
  }
}


export default Bookshelf;
