import React from "react";

const BeerReviewTile = (props) => {

  let reviewPhoto

  if (props.photo != null) {
    reviewPhoto = <a href={props.photo} target="_blank"><img src={props.photo} className="beer-review-photo"/></a>
  }


  return (
    <div className="grid-x grid-margin-x">
      <div className='small-12 medium-8 large-8 callout'>
        <div className='grid-x'>
          <div className='small-8 medium-8 large-8'>
            <div className="grid-x">
              <h3>{props.username}</h3>
              <h4>{props.title}</h4>
              <h4>{props.name}</h4>
              <h4>{props.pour}</h4>
              <p>Overall rating: {props.overall_rating}</p>
              <p>Thoughts: {props.body}</p>
              {reviewPhoto}
              <p>{props.created_at}</p>
            </div>

          </div>

        </div>

      </div>
      
    </div>
  )
}

export default BeerReviewTile

