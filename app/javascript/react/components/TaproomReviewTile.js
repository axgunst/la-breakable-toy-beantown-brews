import React from "react";

const TaproomReviewTile = (props) => {

  let reviewPhoto

  if (props.photo != null) {
    reviewPhoto = <a href={props.photo} target="_blank"><img src={props.photo} className="taproom-review-photo"/></a>
  }


  return (
    <div className="grid-x grid-margin-x">
      <div className='small-12 medium-8 large-8 callout'>
        <div className='grid-x'>
          <div className='small-8 medium-8 large-8'>
            <div className="grid-x">
              <h3 className="cell small-4 text-left username">{props.username}</h3>
              <h4>{props.title}</h4>
              <ul>
              <li>Overall rating: {props.overall_rating}</li>
              <li>Service rating: {props.service_rating}</li>
              <li>Vibes rating: {props.ambience_rating}</li>
              </ul>
              <p>Seating availability for a group: {props.group_accommodations_rating}</p>
              <p>Favorite beer tried this trip: {props.favorite_beer}</p>
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

export default TaproomReviewTile

