
import React from 'react';
import StarRatingComponent from 'react-star-rating-component';
import ReactSpinner from 'react-spinjs';
import Modal from 'react-modal';

class Reviews extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      editModal: false,
      deleteModal: false,
      rating: 0,
      title: "",
      text: ""
    };

    this.handleTitle = this.handleTitle.bind(this);
    this.handleText = this.handleText.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.displayFormOrReview = this.displayFormOrReview.bind(this);
  }

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

  displayUserReview() {
    return(
        <div className="usersReview">Nothing displayed here atm.</div>
    );
  }

  displayFormOrReview() {
    if (this.props.reviews.length > 0) {
      this.props.reviews.forEach((review) => {
        if (review.user_id === this.props.user.id) {
          return (this.displayUserReview());
        }
      });
    } else {
        return this.displayForm();
    }
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

  render() {
    console.log(this.props);
    return(
      <div className="reviews">
        <div className="reviewTop">
          <input></input>
          {this.displayFormOrReview()}
        </div>
        {this.props.reviews.map((review, idx) => {
          return(
            <div className="review" key={idx}>
              <div>{review.title}</div>
              <div>{review.rating}</div>
              <div className={review.user_id === this.props.user.id ? "deleteEdit" : "hide"}>
                <button className="delete button"
                  onClick={this.deleteReviewModal.bind(this)}>
                  Delete</button>
                <button className="edit button"
                  onClick={this.editReviewModal.bind(this,
                      review.id, review.rating, review.title, review.description)}>
                  Edit</button>
              </div>
              <div>{review.description}</div>

              <Modal isOpen={this.state.editModal}
                contentLabel="Modal">
                <h1>Edit your Review</h1>
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
                      value={review.rating}
                      onStarClick={this.onStarClick.bind(this)}/>
                  </div>
                </div>

                <form className="formDocument"
                  onSubmit={this.handleEdit.bind(this, review.id)}>
                  <input className="review-text"
                    type="text"
                    onChange={this.handleTitle}
                    value={this.state.title}></input>
                  <input className="review-textarea"
                    type="textarea"
                    onChange={this.handleText}
                    value={this.state.text}></input>
                  <input className="review-submit"
                    type="submit"></input>
                </form>

                <button onClick={this.closeModal.bind(this)}>Close</button>
              </Modal>

              <Modal isOpen={this.state.deleteModal}
                     contentLabel="Modal">
                     <div>Are you sure you want to delete your review</div>
                     <button onClick={this.deleteReview.bind(this, review.id)}>
                       Yes, delete it!
                     </button>
                     <button onClick={this.closeModal.bind(this)}>No! Leave as is!</button>
              </Modal>

            </div>
          );
        })}
      </div>
    );
  }
}

export default Reviews;
