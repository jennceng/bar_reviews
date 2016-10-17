import React from 'react';

const Review = ({ rating, body }) => {
  return(
    <div>
      Rating: {rating}
      Body: {body}
    </div>
  )
}

export default Review;
