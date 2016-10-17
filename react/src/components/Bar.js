import React from 'react';
import Review from './Review';

const Bar = ({id, onClick, active, average_rating, editable, name, url, reviews}) => {
  debugger;
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
    <div>
      <div onClick={onClick}>
        Name: {name}
        Average Rating: {average_rating}
        <a href={url}> Click for more details </a>
        {showReviews}
      </div>
    </div>
  )
}

export default Bar;
