
import React from 'react';
import StarRatingComponent from 'react-star-rating-component';
import ReactSpinner from 'react-spinjs';
import Modal from 'react-modal';
import values from 'lodash/values';


class Reviews extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      editModal: false,
      deleteModal: false,
      rating: 0,
      title: "",
      text: "",
      allReviews: "",
      userReview: ""
    };

    this.handleTitle = this.handleTitle.bind(this);
    this.handleText = this.handleText.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  // gives the modal something to attach to
  componentWillMount() {
    Modal.setAppElement('body');
 }

  // collect all the data here before sending it off to be added to db
  handleSubmit(e) {
    e.preventDefault();
    this.props.submit(this.props.user.id, this.props.manga.id, this.state.rating, this.state.title, this.state.text);
    this.setState({
      rating: 0,
      title: "",
      text: ""
    });
  }

  onStarClick(nextValue, prevValue, name) {
    this.setState({rating: nextValue});
  }

  handleTitle(e) {
    this.setState({title: e.target.value});
  }

  handleText(e) {
    this.setState({text: e.target.value});
  }

  displayForm() {
    return(
      <div className="reviewForm">
        <div className="formTop">
          <div className="formTopLeft">
            <p>Username: {this.props.user.username}</p>
            <p>Manga Title: {this.props.manga.title}</p>
          </div>
          <div className="formTopRight">
            <StarRatingComponent
              className="starRating"
              name="rater"
              starCount={5}
              value={this.state.rating}
              onStarClick={this.onStarClick.bind(this)}/>
          </div>
        </div>
        <form className="formDocument"
              onSubmit={this.handleSubmit}>
          <input className="review-text"
                 type="text"
                 onChange={this.handleTitle}></input>
          <input className="review-textarea"
                 type="textarea"
                  onChange={this.handleText}></input>
          <input className="review-submit"
                 type="submit"></input>
        </form>
      </div>
    );
  }

  showForm() {
    this.setState({
      addModal: true
    });
  }

  deleteReview(reviewId) {
    this.props.delete(reviewId);
  }

  deleteReviewModal() {
    this.setState({
      deleteModal: true
    });
  }

  editReviewModal(reviewId, revRating, revTitle, revText) {
    this.setState({
      editModal: true,
      rating: revRating,
      title: revTitle,
      text: revText
    });
  }

  handleEdit(reviewId){
    this.props.edit(reviewId, this.state.rating, this.state.title, this.state.text);
    this.setState({
      editModal: false
    });
  }

  closeModal() {
    this.setState({
      editModal: false,
      deleteModal: false
    });
  }

  // componentWillReceiveProps(nextState) {
  //   let arrayedReviews = values(nextState.reviews);
  //   this.setState({
  //     allReviews: values(arrayedReviews[0]),
  //     userReview: values(arrayedReviews[1])[0]
  //   });
  // }

  render() {
    console.log(this.state);
    return(
      <div className="reviews">
        if (this.state.allReviews !== "" ) {
          this.state.allReviews.forEach((review, idx) => {
            console.log(review);
            return(
              <div className="review" key={idx}>
              <div>{review.title}</div>
              <div>{review.rating}</div>
              <div>{review.description}</div>
              </div>
            );
          })
        }
      </div>
    );
  }
}

export default Reviews;
// <div className="reviewTop">
//   {this.props.userReview.length < 1 ?
//     <button onClick={this.displayForm}>Add your Review!</button> : null}
//     </div>
//
//     {Object.keys(this.props.reviews).map((review, idx) => {
//       console.log(this.props.reviews[review]);
//       return(
//         <div className="review" key={idx}>
//           <div>{this.props.reviews[review].title}</div>
//           <div>{this.props.reviews[review].rating}</div>
//           <div className={this.props.reviews.user_id === this.props.user.id ? "deleteEdit" : "hide"}>
//             <button className="delete button"
//               onClick={this.deleteReviewModal.bind(this)}>
//               Delete</button>
//             <button className="edit button"
//               onClick={this.editReviewModal.bind(this,
//                 review.id, review.rating, review.title, review.description)}>
//                 Edit</button>
//             </div>
//             <div>{review.description}</div>
//
//             <Modal isOpen={this.state.editModal}
//               contentLabel="Modal">
//               <h1>Edit your Review</h1>
//               <div className="formTop">
//                 <div className="formTopLeft">
//                   <p>Username: {this.props.user.username}</p>
//                   <p>Manga Title: {this.props.manga.title}</p>
//                 </div>
//                 <div className="formTopRight">
//                   <StarRatingComponent
//                     className="starRating"
//                     name="rater"
//                     starCount={5}
//                     value={review.rating}
//                     onStarClick={this.onStarClick.bind(this)}/>
//                 </div>
//               </div>
//
//               <form className="formDocument"
//                 onSubmit={this.handleEdit.bind(this, review.id)}>
//                 <input className="review-text"
//                   type="text"
//                   onChange={this.handleTitle}
//                   value={this.state.title}></input>
//                 <input className="review-textarea"
//                   type="textarea"
//                   onChange={this.handleText}
//                   value={this.state.text}></input>
//                 <input className="review-submit"
//                   type="submit"></input>
//               </form>
//
//               <button onClick={this.closeModal.bind(this)}>Close</button>
//             </Modal>
//
//             <Modal isOpen={this.state.deleteModal}
//               contentLabel="Modal">
//               <div>Are you sure you want to delete your review</div>
//               <button onClick={this.deleteReview.bind(this, review.id)}>
//                 Yes, delete it!
//               </button>
//               <button onClick={this.closeModal.bind(this)}>No! Leave as is!</button>
//             </Modal>
//
//           </div>
//         );
//       })}




// <Modal isOpen={this.state.addModal}
//   contentLabel="Modal">
//
//   <div className="formTop">
//     <div className="formTopLeft">
//       <p>Username: {this.props.user.username}</p>
//       <p>Manga Title: {this.props.manga.title}</p>
//     </div>
//     <div className="formTopRight">
//       <StarRatingComponent
//         className="starRating"
//         name="rater"
//         starCount={5}
//         value={this.state.rating}
//         onStarClick={this.onStarClick.bind(this)}/>
//     </div>
//   </div>
//   <form className="formDocument"
//     onSubmit={this.handleSubmit}>
//     <input className="review-text"
//       type="text"
//       onChange={this.handleTitle}></input>
//     <input className="review-textarea"
//       type="textarea"
//       onChange={this.handleText}></input>
//     <input className="review-submit"
//       type="submit"></input>
//   </form>
//   <button onClick={this.closeModal.bind(this)}>Cancel</button>
// </Modal>
