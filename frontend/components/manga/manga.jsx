import React from 'react';

class MangaShow extends React.Component{
 constructor(props) {
   super(props);
   this.state = {
     value: "Select-a-Status"
   };

   this.isChecked = this.isChecked.bind(this);
   this.toggle = this.toggle.bind(this);
   this.handleStatus = this.handleStatus.bind(this);
   console.log(this.props);
 }

 // maybe i can use this to set the component state, and that have
 // the dropdown use that as the default state?


 toggle(shelfId, mangaId) {
   this.props.toggleShelf(shelfId, mangaId);
 }

 // componentWillReceiveProps(nextProps) {
 //   console.log("in willreceiveprops");
 //   if (this.props.status !== undefined) {
 //    //  this.setState({value: nextProps.status.status});
 //   }
 // }

 componentWillMount() {
  //  this.props.requestMangaStatus(this.props.routeParams.id);
   // need to know all bookshelves that this book resides on
   this.props.requestAllBookshelves();
   // what is the current read status of this book
 }

 isChecked(myShelfId) {
   this.bookshelfIds = Object.keys(this.props.booksonshelves).map((key) => {
     return this.props.booksonshelves[key].bookshelf_id;
   });

   let checked = "false";
   this.bookshelfIds.forEach((id) => {
     if (parseInt(id) === myShelfId) {
       checked = "true";
     }
   });
   return checked;
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
   console.log(this.props.status);
   //  <i
   //    className={"Shelf-answer-checkbox" + "   " + this.isChecked(shelf.id) + "    "}
   //    onClick={this.toggle.bind(this, shelf.id, this.props.manga.id)}
   //    value={index}>
   //    {this.isChecked(shelf.id)}
   //    </i>
   return (
   <div className="single-manga-show">
     <div className="single-manga-picture">
       <li><img className="manga-picture-show"
                src={this.props.manga.img_url} width="210" height="300"/></li>
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
              </div>

     </div>

   </div>
   );
 }
}

export default MangaShow;



//  <ul className="single-manga-words">
//    <li className="mangaHomeTitle">{this.props.manga.title}</li>
//    <br></br>
//    <li>by {this.props.manga.author}</li>
//    <br></br>
//    <li className="mangaHomeWords">{this.props.manga.synopsis}</li>
//    <br></br>
//    Create your own shelves in my-Manga, and organize your manga your way!
//    <br></br>
//    <br></br>
//      {this.props.bookshelves.map((shelf, index) => {
//        let circle;
//        if (this.isChecked(shelf.id) === "true") {
//          circle = [<i className="fa fa-circle" aria-hidden="true" value={index}
//          onClick={this.toggle.bind(this, shelf.id, this.props.manga.id)}></i>];
//        } else {
//         circle = [<i className="fa fa-circle-o" aria-hidden="true" value={index}
//         onClick={this.toggle.bind(this, shelf.id, this.props.manga.id)}
//         ></i>];
//        }
//
//
//        return (
//          <li key={shelf.id}>
//            <label>
//              {circle}&nbsp;&nbsp;
//              {shelf.title}
//            </label>
//          </li>
//        );
//      })}
//  </ul>
//
