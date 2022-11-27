import React from "react";

const BeerReviewTile = (props) => {

  let reviewPhoto

  if (props.photo != null) {
    reviewPhoto = <a href={props.photo} target="_blank"><img src={props.photo} className="beer-review-photo"/></a>
  }


  return (
    <div>
      <h3>{props.username}</h3>
      <h4>{props.title}</h4>
      <h4>{props.name}</h4>
      <h4>{props.pour}</h4>
      <p>Overall rating: {props.overall_rating}</p>
      <p>Thoughts: {props.body}</p>
      {reviewPhoto}
      <p>{props.created_at}</p>
    </div>
  )
}

export default BeerReviewTile

