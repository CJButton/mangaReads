
import React from 'react';
import StarRatingComponent from 'react-star-rating-component';
import ReactSpinner from 'react-spinjs';


class Reviews extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      rating: 0,
      title: "",
      text: ""
    };

    this.handleTitle = this.handleTitle.bind(this);
    this.handleText = this.handleText.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.displayFormOrReview = this.displayFormOrReview.bind(this);
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

  editReviewFunc(reviewId) {
    console.log(reviewId);
    console.log(this.state.rating);
    this.props.edit(reviewId, this.state.rating, this.state.title, this.state.text);
  }

  render() {
    console.log(this.props);
    let that = this;
    return(
      <div className="reviews">
        <div className="reviewTop">
          {this.displayFormOrReview()}
        </div>
        {this.props.reviews.map((review, idx) => {
          return(
            <div className="review" key={idx}>
              <div>{review.title}</div>
              <div>{review.rating}</div>
              <div className={review.user_id === this.props.user.id ? "deleteEdit" : "hide"}>
                <button className="delete button"
                  onClick={this.deleteReview.bind(this, review.id)}>
                  Delete</button>
                <button className="edit button"
                  onClick={this.editReviewFunc.bind(this, review.id)}>
                  Edit</button>
              </div>
              <div>{review.description}</div>
            </div>
          );
        })}
      </div>
    );
  }

}

export default Reviews;
