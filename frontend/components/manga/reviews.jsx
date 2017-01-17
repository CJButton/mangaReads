

import React from 'react';
import StarRatingComponent from 'react-star-rating-component';

import Modal from 'react-modal';
import values from 'lodash/values';


class Reviews extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      editModal: false,
      deleteModal: false,
      addModal: false,
      rating: 1,
      title: "",
      text: "",
      allReviews: values(this.props.allReviews),
      userReview: this.props.userReview,
      userRating: "",
    };

    this.handleTitle = this.handleTitle.bind(this);
    this.handleText = this.handleText.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentWillReceiveProps(nextProps) {
    this.setState({
      allReviews: values(nextProps.allReviews),
      userReview: nextProps.userReview,
      userRating: nextProps.userReview.rating
    });
  }

  // gives the modal something to attach to
  componentWillMount() {
    Modal.setAppElement('body');
 }

  // collect all the data here before sending it off to be added to db
  handleSubmit(e) {
    e.preventDefault();
    this.props.submitReview(this.props.user.id, this.props.manga.id,
                  this.state.rating, this.state.title, this.state.text);
    this.setState({
      rating: 1,
      title: "",
      text: "",
      addModal: false
    });
  }

  onStarClick(nextValue, prevValue, name) {
    this.setState({rating: nextValue});
  }

  onStarClickUser(nextValue, prevValue, name) {
    this.setState({userRating: nextValue});
  }

  handleTitle(e) {
    this.setState({title: e.target.value});
  }

  handleText(e) {
    this.setState({text: e.target.value});
  }

  addReviewModal() {
    this.setState({
      addModal: true
    });
  }

  deleteReview() {
    this.props.deleteReview(this.state.userReview.id);
    this.setState({
      deleteModal: false,
      rating: 1,
      title: "",
      text: ""
    });
  }

  deleteReviewModal() {
    this.setState({
      deleteModal: true
    });
  }

  editReviewModal() {
    this.setState({
      editModal: true,
      rating: this.state.userReview.rating,
      title: this.state.userReview.title,
      text: this.state.userReview.description
    });
  }

  handleEdit(reviewId){
    this.props.editReview(this.state.userReview.id, this.state.userRating, this.state.title, this.state.text);
    this.setState({
      editModal: false
    });
  }

  closeModal() {
    this.setState({
      editModal: false,
      deleteModal: false,
      addModal: false
    });
  }

  render() {
    console.log(this.props);
    return(
      <div className="reviews">
        <div className="addRevButtonContainer">
          {this.state.userReview.id !== undefined ? null :
          <button className="addRevButton button"
            onClick={this.addReviewModal.bind(this)}>
            Add your own Review!</button>}
        </div>


        <Modal className="addModal"
          isOpen={this.state.addModal}
          contentLabel="Modal2">
          <div className="editFormTop">
          <h1 className="editFormTitle">Add your own Review:</h1>
          <button className="closeEditButton"
            onClick={this.closeModal.bind(this)}>X</button>
          </div>
          <div className="formTop">
            <div className="formTopLeft">
              {this.state.userReview === undefined ? null :
                <p className="editUsername">
                  {this.state.userReview.username}</p>}
              <div className="editFormTop">
                <StarRatingComponent
                  className="starRating"
                  name="rater"
                  starCount={5}
                  value={this.state.rating}
                  onStarClick={this.onStarClick.bind(this)}/>
              </div>
              <p className="editComicTitle">
                {this.props.manga === undefined ? null : this.props.manga.title}</p>
            </div>
          </div>

        <form className="editFormModal"
          onSubmit={this.handleSubmit.bind(this)}>
          <p className="editTitle">Title</p>
          <input className="editReview-text"
            type="text"
            onChange={this.handleTitle}
            value={this.state.title}></input>

          <p className="editDescription">Description</p>
          <textarea className="editReview-textarea"
            onChange={this.handleText}
            value={this.state.text}></textarea>

          <button className="review-submit button"
            type="submit">Submit!</button>
        </form>

        </Modal>

        {this.state.allReviews.length === 0 ? null :
          this.state.allReviews.map((review, idx) => {
            return(
              <div className="review basicOutline" key={idx}>

                  <div className="userRevTitle">
                    <div className="userRevtitle-top">
                      {review.username}
                      <StarRatingComponent
                        className="indivRevStarRating"
                        name="indivRevStar"
                        editing={false}
                        starCount={5}
                        value={review.rating}/>
                    </div>
                    <div className="userRevTitle-bottom">

                      <div className="userRevTitle-title">{review.title}</div>
                      <div className={review.user_id === this.props.user.id
                            ? "deleteEdit" : "hide"}>

                            <div className="userReview-top">
                              <div className="userReview-buttons">
                                <button className="editButton button revButton"
                                    onClick={this.editReviewModal.bind(this,
                                      review.id, review.rating,
                                      review.title, review.description)}>
                                      Edit</button>
                                <button className="deleteButton button revButton"
                                    onClick={this.deleteReviewModal.bind(this)}>
                                      Delete</button>
                              </div>
                            </div>

                        </div>
                      </div>
                  </div>
                  <div className="userRevDescrip">
                  {review.description.split("\n").map((rev, idx2) => {
                    return(
                      <span key={idx2}>{rev}<br/></span>
                    );
                  })}

                  </div>

                  <Modal className="editModal"
                    isOpen={this.state.editModal}
                    contentLabel="Modal2">
                    <div className="editFormTop">
                    <h1 className="editFormTitle">Edit your Review:</h1>
                    <button className="closeEditButton"
                      onClick={this.closeModal.bind(this)}>X</button>
                    </div>
                    <div className="formTop">
                      <div className="formTopLeft">
                        <p className="editUsername">{this.props.user.username}</p>
                        <div className="editFormTop">
                          <StarRatingComponent
                            className="starRating"
                            name="rater"
                            starCount={5}
                            value={this.state.userRating}
                            onStarClick={this.onStarClickUser.bind(this)}/>
                        </div>
                        <p className="editComicTitle">
                          {this.props.manga.title}</p>
                      </div>
                    </div>

                  <form className="editFormModal"
                    onSubmit={this.handleEdit.bind(this)}>
                    <p className="editTitle">Title</p>
                    <input className="editReview-text"
                      type="text"
                      onChange={this.handleTitle}
                      value={this.state.title}></input>

                    <p className="editDescription">Description</p>
                    <textarea className="editReview-textarea"
                      onChange={this.handleText}
                      value={this.state.text}></textarea>

                    <button className="review-submit button"
                      type="submit">Submit!</button>
                  </form>

                </Modal>


              <div className="deleteModalContainer">
                <Modal className="deleteModal"
                  isOpen={this.state.deleteModal}
                  contentLabel="Modal">
                  <div>Sure you want to delete your review?</div>
                  <div className="deleteEditClose">
                    <button className="deleteButton button"
                      onClick={this.deleteReview.bind(this)}>
                      Yes, delete it!</button>
                    <button className="cancelDelete button"
                      onClick={this.closeModal.bind(this)}>No! Leave as is!</button>
                  </div>
                </Modal>
              </div>


              </div>
            );
          }) }
      </div>
    );
  }
}

export default Reviews;

// here is some blank text
