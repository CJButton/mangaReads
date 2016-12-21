
import React from 'react';
import StarRatingComponent from 'react-star-rating-component';


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

  displayFormOrReview() {

  }

  render() {
    console.log(this.props);
    return(
      <div className="reviews">
        <div>
        {this.displayForm()}
        </div>
        <div>
          {this.props.reviews.map((review) => {
            return(
              <div className="reviewBox">
            <div>{review.rating}</div>
            <div>{review.title}</div>
            <div>{review.description}</div>
            </div>
          );
          })}
        </div>

      </div>
    );
  }

}

export default Reviews;
