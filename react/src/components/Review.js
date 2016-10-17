import React from 'react';

const Review = ({ rating, body }) => {
  return(
    <div className="rating">
      <h3> Review </h3>
      <p>
        Rating: {rating}
      </p>
      <p>
        Body: {body}
      </p>
    </div>
  )
}

export default Review;
