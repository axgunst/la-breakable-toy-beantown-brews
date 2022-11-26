import React from "react";

const TaproomReviewTile = (props) => {

  let reviewPhoto

  if (props.photo != null) {
    reviewPhoto = <a href={props.photo} target="_blank"><img src={props.photo} className="taproom-review-photo"/></a>
  }
  return (
    <div>
      <h3>{props.username}</h3>
      <h4>{props.title}</h4>
      <p>Overall rating: {props.overall_rating}</p>
      <p>Service rating: {props.service_rating}</p>
      <p>Vibes rating: {props.ambience_rating}</p>
      <p>Seating availability for a group: {props.group_accommodations_rating}</p>
      <p>Favorite beer tried this trip: {props.favorite_beer}</p>
      <p>Thoughts: {props.body}</p>
      {reviewPhoto}
      <p>{props.created_at}</p>
    </div>
  )
}

export default TaproomReviewTile

