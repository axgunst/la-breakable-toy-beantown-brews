import React, { useState } from "react";
import BeerReviewTile from "./BeerReviewTile"
import BeerReviewForm from "./BeerReviewForm"

const BeerShow = (props) => {  
  const beerReviewTiles = props.reviews.map((beerReview => {
    return (
      <BeerReviewTile 
        key={beerReview.id}
        id={beerReview.id}
        name={beerReview.name}
        title={beerReview.title}
        overall_rating={beerReview.overall_rating}
        pour={beerReview.pour}
        body={beerReview.body}
        photo={beerReview.photo}
        username={beerReview.username}
      />
    )
  }))
  return (
    <div>
      <h1 className="beer-show-name">{props.name}</h1>
      {/* <img src={props.logo}/> */}
      <img src={props.image_url}/>

      <div className="beer-info">
        <h4>{props.name}</h4>
        <h4>{props.style}</h4>
        <h4>{props.abv}</h4>
        <h4>{props.brewer}</h4>
      </div>

      <div>
        <h5>{props.description}</h5>
      </div>
      
      <div>
       <BeerReviewForm
        addNewReview={props.addNewReview}
        reviewButton = {props.reviewButton}
        // destroyReview = {props.destroyReview}
      /> 
      </div>
      {beerReviewTiles}
    </div>
  
  )

}

export default BeerShow

