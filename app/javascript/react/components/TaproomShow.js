import React, { useState } from "react";
import { Link } from 'react-router-dom';
import TaproomReviewForm from "./TaproomReviewForm"
import TaproomReviewTile from "./TaproomReviewTile"
import NewBeer from "./NewBeer.js";

const TaproomShow = (props) => { 
  const taproomId = props.id


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
        taproomId={taproomId}
        setReviews={props.setReviews}
        reviews={props.reviews}
      />
    )
  }))
  return (
    <div>
      <h1 className="taproom-show-name">{props.name}</h1>
      <img src={props.image_url} className="taproom-show-image"/>
      <Link to={`/taprooms/${taproomId}/beers`} className="taproom-show-link-to-beer-index">Checkout whats on tap!</Link>
    
      <div className="taproom-location">
        <h4>{props.address}</h4>
        <h4>{props.city}, {props.state}</h4>
        <h4>{props.zipcode}</h4>
      </div>

      <div className="social-buttons">
        <a href={props.instagram}><img className="instagram-logo" src="https://beantown-brews-production.s3.amazonaws.com/instagram-icon.png"/></a> 
        <a href={props.twitter}><img className="twitter-logo"src="https://beantown-brews-production.s3.amazonaws.com/twitter-logo.png"/></a> 
        <a href={props.facebook}><img className="facebook-logo" src="https://beantown-brews-development.s3.amazonaws.com/facebook-logo.png"/></a> 
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

      <div className="taproom-description">
        <h5>{props.description}</h5>
      </div>
      
      <div className="taproom-show-review-form">
        <TaproomReviewForm
          addNewReview={props.addNewReview}
          reviewButton = {props.reviewButton}
        /> 
      </div>
      
      {taproomReviewTiles}

      <div className="taproom-show-add-new-beer-form">
        <NewBeer
          handleSubmitNewBeer={props.handleSubmitNewBeer}
          reviewButton = {props.reviewButton}
          taproomId = {taproomId}
        />
      </div>
    </div>
  
  )

}

export default TaproomShow

