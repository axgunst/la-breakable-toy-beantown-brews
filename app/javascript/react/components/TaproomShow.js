import React, { useState } from "react";
import TaproomReviewForm from "./TaproomReviewForm"
import TaproomReviewTile from "./TaproomReviewTile"

const TaproomShow = (props) => {
  // debugger
  
  const taproomReviewTiles = props.reviews.map((taproomReview => {
    return (
      <TaproomReviewTile 
        key={taproomReview.id}
        id={taproomReview.id}
        title={taproomReview.title}
        overall_rating={taproomReview.overall_rating}
        service_rating={taproomReview.service_rating}
        ambience_rating={taproomReview.ambience_rating}
        group_accommodations_rating={taproomReview.group_accommodations_rating}
        body={taproomReview.body}
        favorite_beer={taproomReview.favorite_beer}
        photo={taproomReview.photo}
        username={taproomReview.username}
      />
    )
  }))
  return (
    <div>
      <h1>{props.name}</h1>
      <img src={props.image_url}/>
      <img src={props.logo}/>
      <div className="taproom-location">
        <h4>{props.address}</h4>
        <h4>{props.city}, {props.state}</h4>
        <h4>{props.zipcode}</h4>
      </div>

      <div className="taproom-hours">
        <h4>{props.monday_hours}</h4>
        <h4>{props.tuesday_hours}</h4>
        <h4>{props.wednesday_hours}</h4>
        <h4>{props.thursday_hours}</h4>
        <h4>{props.friday_hours}</h4>
        <h4>{props.saturday_hours}</h4>
        <h4>{props.sunday_hours}</h4>
      </div>

      <div className="taproom-faq">
        <h3>FAQ</h3>
        <h4>Are dogs allowed at our taproom? {props.dogs}</h4>
        <h4>Do we have food available? {props.kitchen}</h4>
        <h4>Do we have outdoor seating? {props.patio}</h4>
      </div>

      <div>
        <h3>{props.description}</h3>
      </div>
      
      <div className="taproom-social-media">
        <h4>Instagram: {props.instagram}</h4>
        <h4>Instagram: {props.instagram}</h4>
        <h4>Instagram: {props.instagram}</h4>
      </div>
      {taproomReviewTiles}
    </div>
  
  )

}

export default TaproomShow

