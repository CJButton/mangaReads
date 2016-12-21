


import React from 'react';
import Reviews from './reviews';


class MangaShow extends React.Component{
 constructor(props) {
   super(props);
   this.state = {
     value: "Select-a-Status"
   };

   this.toggle = this.toggle.bind(this);
   this.handleStatus = this.handleStatus.bind(this);
 }

 toggle(shelfId, mangaId) {
   this.props.toggleShelf(shelfId, mangaId);
 }

 handleCheckChange(shelfname, shelfId) {
   this.props.toggleShelf(shelfId, this.props.manga.id);
   let status = (this.state[shelfname] === true ? false : true);
   this.setState({
     [shelfname]: status
   });
 }

  componentWillReceiveProps(nextProps) {
    let shelveBooks = this.onShelves(nextProps.booksonshelves);

    this.props.bookshelves.map((shelf) => {
      this.setState({
        [shelf.title]: false
      });
    });

    shelveBooks.map((shelf) => {
      this.setState({
        [shelf]: true
      });
    });
  }

  onShelves(shelves) {
    let bookStatus = ["Want-To-Read", "Read", "Currently-Reading"];
    let shelvedBooks = [];
    shelves.map((shelf) => {
      if (!bookStatus.includes(shelf.title)) {
        shelvedBooks.push(shelf.title);
      }
    });
    return shelvedBooks;
  }

 handleStatus(e) {
  this.props.changeMangaStatus(e.target.value, this.props.routeParams.id);
  this.setState({value: e.target.value});
 }

 setComicStatus() {
   if (this.props.status !== undefined) {
     return this.props.status.status;
   } else {
     return this.state.value;
   }
 }


 render() {
   console.log(this.props);
   let submitReview = this.props.submitReview.bind(this);

   return (
   <div className="single-manga-show">
     <div className="single-manga-top">
       <div className="manga-top-left">
         <img className="manga-picture-show"
                src={this.props.manga.img_url} width="210" height="300"/>

              <br></br>
              <br></br>
              <br></br>
              <div className="manga-dropdown-wrapper">
                Choose a status for this manga!
                <select className="manga-dropdown" value={this.setComicStatus()} onChange={this.handleStatus}>
                  <option disabled value="Select-a-Status">Select a Status</option>
                  <option value="Currently-Reading">Currently-Reading</option>
                  <option value="Read">Read</option>
                  <option value="Want-To-Read">Want-To-Read</option>

                </select>
                <div className="checkbox-wrapper">
                {this.props.bookshelves.map((shelf, i) => {
                  return(
                    <label key={i}>{shelf.title}
                      <input key={i}
                             type="checkbox"
                             value={this.state[shelf.title]}
                             checked={this.state[shelf.title]}
                             onChange={this.handleCheckChange.bind(this, shelf.title, shelf.id)}/>
                   </label>
                  );
                })
              }
              </div>
              </div>
            </div>

            <div className="manga-top-right">
                 <ul className="single-manga-words">
                   <li className="mangaHomeTitle">{this.props.manga.title}</li>
                   <br></br>
                   <li>by {this.props.manga.author}</li>
                   <br></br>
                   <li className="mangaHomeWords">{this.props.manga.synopsis}</li>
                   <br></br>
                   <br></br>

                 </ul>
           </div>
         </div>


         <Reviews user={this.props.user} manga={this.props.manga}
           reviews={this.props.reviews}
           submit={submitReview}/>

   </div>
   );
 }
}

export default MangaShow;
