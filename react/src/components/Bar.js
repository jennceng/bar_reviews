import React from 'react';
import Review from './Review';

const Bar = ({id, onClick, active, averageRating, editable, name, url, reviews}) => {
  let showReviews;

  if(active) {
    showReviews = reviews.map(review => {
      return(
        <Review
          key={review.id}
          id={review.id}
          rating={review.rating}
          body={review.body}
        />
      )
    })
  }
  return(
    <div className="bar">
      <div onClick={onClick}>
        <h2>{name}</h2>
        Average Rating: {averageRating}
      </div>
      <div>
        <a href={url}> Click for more details </a>
      </div>
      {showReviews}
    </div>
  )
}

export default Bar;
