


import React from 'react';
import Reviews from './reviews_container';

import values from 'lodash/values';
import StarRatingComponent from 'react-star-rating-component';
import {hashHistory} from 'react-router';



class MangaShow extends React.Component{
 constructor(props) {
   super(props);
   this.state = {
     value: "Select-a-Status",
     allReviews: [],
     userReview: [],
     comicRating: 1
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

    this.setState({
      allReviews: values(nextProps.allReviews),
      userReview: nextProps.userReview,
      comicRating: parseInt(nextProps.manga.avg)
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

 handleMyManga(e) {
   e.preventDefault();
   hashHistory.push("/my-Manga");
 }


 render() {
   console.log(this.props);
   window.scrollTo(0,0);
   let submitReview = this.props.submitReview.bind(this);
   return (
     <div className="single-manga-container">

   <div className="single-manga-show">



     <div className="single-manga-top">

       <div className="manga-top-farLeft">
         <div className="manga-dropdown-wrapper">
           <div className="mangaDropdownBox">
             <p className="dropdownTitle">Choose a status for this manga!</p>
             <select className="manga-dropdown" value={this.setComicStatus()} onChange={this.handleStatus}>
               <option className="dropdownOption" value="Select-a-Status">Select a Status</option>
               <option value="Currently-Reading">Currently-Reading</option>
               <option value="Read">Read</option>
               <option value="Want-To-Read">Want-To-Read</option>

             </select>
           </div>
           <div className="checkbox-wrapper">
             <p className="checkbox-title">Your Bookshelves:</p>
           {this.props.bookshelves.map((shelf, i) => {
             return(
               <label className="checkboxItem" key={i}>{shelf.title}
                 <input className="checkboxCheckBox"
                        key={i}
                        type="checkbox"
                        value={this.state[shelf.title]}
                        checked={this.state[shelf.title]}
                        onChange={this.handleCheckChange.bind(this, shelf.title, shelf.id)}/>
              </label>
             );
           })
         }
         </div>
         <div className="linkMyManga">
           <p className="linkMyMangatitle">Check out your collection:</p>
           <div className="linkMyMangaContainer">
             <input className="linkMyMangabutton button" type="submit"
               value="myManga" onClick={this.handleMyManga}/>
           </div>
         </div>
         </div>


       </div>


            <div className="manga-top-right">
                 <ul className="single-manga-words">
                   <li className="mangaHomeTitle">{this.props.manga.title}</li>
                   <StarRatingComponent
                     className="starRating"
                     name="rater"
                     editing={false}
                     starCount={5}
                     value={this.state.comicRating}/>
                   <li>by {this.props.manga.author}</li>
                   <br></br>
                   <li className="mangaHomeWords">{this.props.manga.synopsis}</li>
                 </ul>
           </div>

           <div className="manga-top-left">
             <img className="manga-picture-show" src={this.props.manga.img_url}/>

           </div>


         </div>

         <Reviews/>
     </div>
     </div>
   );
 }
}

// <Reviews user={this.props.user} manga={this.props.manga}
//   allReviews={this.state.allReviews} delete={this.props.deleteReview}
//   edit={this.props.editReview} submit={submitReview}
//   userReview={this.state.userReview}/>

export default MangaShow;
