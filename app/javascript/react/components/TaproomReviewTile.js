import React from "react";

const TaproomReviewTile = (props) => {
  return (
    <div>
      <h3>{props.username}</h3>
      <h3>{props.title}</h3>
      <p>{props.overall_rating}</p>
      <p>{props.service_rating}</p>
      <p>{props.ambience_rating}</p>
      <p>{props.group_accommodations_rating}</p>
      <p>{props.favorite_beer}</p>
      <p>{props.body}</p>
      <img src={props.photo}/>
    </div>
  )
}

export default TaproomReviewTile

