


import React from 'react';


class MangaShow extends React.Component{
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.requestAllBookshelves();
  }


  render() {

    return (
    <div className="single-manga-show">
      <div className="single-manga-picture">
        <li><img className="manga-picture-show" src={this.props.manga.img_url} width="210" height="300"/></li>
      </div>
      <ul className="single-manga-words">
        <li className="mangaHomeTitle">{this.props.manga.title}</li>
        <br></br>
        <li>by {this.props.manga.author}</li>
        <br></br>
        <li className="mangaHomeWords">{this.props.manga.synopsis}</li>
      </ul>
    </div>
    );
  }
}

export default MangaShow;
