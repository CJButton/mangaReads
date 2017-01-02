
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
      userRating: this.props.userReview.rating,
      title: "",
      text: "",
      allReviews: "",
      userReview: this.props.userReview
    };

    this.handleTitle = this.handleTitle.bind(this);
    this.handleText = this.handleText.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentWillReceiveProps(nextProps) {
    this.setState({
      allReviews: nextProps.allReviews,
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
    this.props.submit(this.props.user.id, this.props.manga.id, this.state.rating, this.state.title, this.state.text);
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

  deleteReview(reviewId) {
    this.props.delete(reviewId);
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

  editReviewModal(reviewId, revRating, revTitle, revText) {
    this.setState({
      editModal: true,
      rating: revRating,
      title: revTitle,
      text: revText
    });
  }

  handleEdit(reviewId){
    this.props.edit(reviewId, this.state.userRating, this.state.title, this.state.text);
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
    return(
      <div className="reviews">
        <div className="addRevButtonContainer">
          {this.state.userReview.rating !== undefined ? null :
          <button className="addRevButton button"
            onClick={this.addReviewModal.bind(this)}>Add your own Review!</button>}
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
              <p className="editUsername">{this.props.user.username}</p>
              <div className="editFormTop">
                <StarRatingComponent
                  className="starRating"
                  name="rater"
                  starCount={5}
                  value={this.state.rating}
                  onStarClick={this.onStarClick.bind(this)}/>
              </div>
              <p className="editComicTitle">
                {this.props.manga.title}</p>
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

        {this.state.allReviews.length > 0 ?
          this.state.allReviews.map((review, idx) => {
            return(
              <div className="review basicOutline" key={idx}>
                <div>
                <div className={review.user_id === this.props.user.id ? "deleteEdit" : "hide"}>

                  <div className="userReview-top">

                    <p className="userReview-p">{review.username}</p>

                    <div className="userReview-buttons">
                      <button className="editButton button revButton"
                        onClick={this.editReviewModal.bind(this,
                          review.id, review.rating, review.title, review.description)}>
                          Edit</button>
                      <button className="deleteButton button revButton"
                          onClick={this.deleteReviewModal.bind(this)}>
                          Delete</button>
                    </div>
                  </div>

                      <div className="userReview-p userRevStarRating">
                    <StarRatingComponent
                      className="indivRevStarRating"
                      name="indivRevStar"
                      editing={false}
                      starCount={5}
                      value={review.rating}/></div>
                  </div>
                </div>

                  <div className="userRevTitle">
                    {review.title}
                  </div>
                  <div className="userRevDescrip">
                  {review.description}
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
                    onSubmit={this.handleEdit.bind(this, review.id)}>
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
                      onClick={this.deleteReview.bind(this, review.id)}>
                      Yes, delete it!</button>
                    <button className="cancelDelete button"
                      onClick={this.closeModal.bind(this)}>No! Leave as is!</button>
                  </div>
                </Modal>
              </div>


              </div>
            );
          }) : null }
      </div>
    );
  }
}

export default Reviews;
