
import React from 'react';

class Reviews extends React.Component {
  constructor(props) {
    super(props);
    console.log(this.props);
  }

  handleSubmit() {

  }

  render() {
    return(
      <div className="reviews">
        <div className="reviewForm">
          <p>Username: {this.props.user.username}</p>
          <p>Manga Title: {this.props.manga.title}</p>
          <form className="formDocument"
                onSubmit={this.handleSubmit}>
            <input className="review-text"
                   type="text"></input>
            <input className="review-textarea"
                   type="textarea"></input>
            <input className="review-submit"
                   type="submit"></input>
          </form>
        </div>
      </div>
    );
  }

}

export default Reviews;
