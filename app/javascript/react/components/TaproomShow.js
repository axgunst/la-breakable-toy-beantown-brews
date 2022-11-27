import React, { useState } from "react";
import TaproomReviewForm from "./TaproomReviewForm"
import TaproomReviewTile from "./TaproomReviewTile"

const TaproomShow = (props) => {  
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
      <h1 className="taproom-show-name">{props.name}</h1>
      {/* <img src={props.logo}/> */}
      <img src={props.image_url}/>

      <div className="taproom-location">
        <h4>{props.address}</h4>
        <h4>{props.city}, {props.state}</h4>
        <h4>{props.zipcode}</h4>
      </div>

      <div className="social-buttons">
        <a href={props.instagram}><img src="http://assets.stickpng.com/thumbs/627ba7278d659819b11084f4.png"/></a> 
        <a href={props.twitter}><img className="twitter-logo"src="https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c53e.png"/></a> 
        <a href={props.facebook}><img src="https://i.pinimg.com/236x/57/ed/a8/57eda873709dddebaa12ebe3e6a65380.jpg"/></a> 
      </div>

      <div className="taproom-hours">
        <h4>MONDAY: {props.monday_hours}</h4>
        <h4>TUESDAY: {props.tuesday_hours}</h4>
        <h4>WEDNESDAY: {props.wednesday_hours}</h4>
        <h4>THURSDAY: {props.thursday_hours}</h4>
        <h4>FRIDAY: {props.friday_hours}</h4>
        <h4>SATURDAY: {props.saturday_hours}</h4>
        <h4>SUNDAY: {props.sunday_hours}</h4>
      </div>

      <div className="taproom-faq">
        <h3>FAQ</h3>
        <h4>Are dogs allowed at our taproom? {props.dogs}</h4>
        <h4>Do we have food available? {props.kitchen}</h4>
        <h4>Do we have outdoor seating? {props.patio}</h4>
      </div>

      <div>
        <h5>{props.description}</h5>
      </div>
      
      <div>
       <TaproomReviewForm
        addNewReview={props.addNewReview}
        reviewButton = {props.reviewButton}
        // destroyReview = {props.destroyReview}
      /> 
      </div>
      {taproomReviewTiles}
    </div>
  
  )

}

export default TaproomShow

