


import React from 'react';

class MangaShow extends React.Component{
  constructor(props) {
    super(props);
    // this.bookshelfIds = this.props.bookshelves.map((shelf) => {
    //     return shelf.id;
    //   });
    this.isChecked = this.isChecked.bind(this);
  }


  toggle(shelfId, mangaId) {
    this.props.toggleShelf(shelfId, mangaId);
  }

  // componentWillReceiveProps(newProps) {
  //   let checkboxes = {};
  //
  //   newProps.bookshelves.forEach((shelf) => {
  //     checkboxes[shelf.id] = this.isChecked(shelf.id);
  //   });
  //   this.setState(checkboxes);
  // }

  componentDidMount() {
    this.props.requestAllBookshelves();
  }

  isChecked(myShelfId) {
    // console.log(myShelfId);

    this.bookshelfIds = this.props.bookshelves.map((shelf) => {
        return shelf.id;

      });
    let checked = "false";
    this.bookshelfIds.forEach((id) => {
      if (id === myShelfId) {
        checked = "true";
      }
    });
    return checked;
  }

  render() {

    return (
    <div className="single-manga-show">
      <div className="single-manga-picture">
        <li><img className="manga-picture-show"
                 src={this.props.manga.img_url} width="210" height="300"/></li>

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

            console.log(this.isChecked(shelf.id));
            return (
              <li key={shelf.id}>
                <label>
                  <input
                    className="Shelf-answer-checkbox"
                    type="checkbox"
                    onClick={this.toggle.bind(this, shelf.id, this.props.manga.id)}
                    value={index}
                    defaultChecked={this.isChecked(shelf.id)}/>
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
