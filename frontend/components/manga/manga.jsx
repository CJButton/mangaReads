


import React from 'react';

class MangaShow extends React.Component{
  constructor(props) {
    super(props);

    this.state = {
      isChecked: false

    };
  }

  toggle(shelfId, mangaId) {
    this.props.toggleShelf(shelfId, mangaId);
  }

  componentDidMount() {
    this.props.requestAllBookshelves();
  }

  updateSelection(property) {
    return e => this.setState({[property]: e.target.value});
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

        <select>
          <option value="WantToRead">Want to Read</option>
          <option value="Read">Read</option>
          <option value="To-Read">To-Read</option>
        </select>

          {this.props.bookshelves.map((shelf, index) => {
            return (
              <li key={shelf.id}>
                <label>
                  <input style={{display: "true"}}
                    className="Shelf-answer-checkbox"
                    type="checkbox"
                    onClick={this.toggle.bind(this, shelf.id, this.props.manga.id)}
                    value={index}
                    checked={this.state.isChecked}/>
                  {shelf.title}
                </label>
              </li>
            );
          })}
      </ul>


    </div>
    );
  }
}

export default MangaShow;
