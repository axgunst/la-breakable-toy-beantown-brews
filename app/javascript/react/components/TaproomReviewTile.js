import React from "react";

const TaproomReviewTile = (props) => {
// debugger
  let reviewPhoto

  if (props.photo != null) {
    reviewPhoto = <a href={props.photo} target="_blank"><img src={props.photo} className="taproom-review-photo"/></a>
  }

  const handleDeleteReview = async (event) => {
    event.preventDefault()
    try {
      const response = await fetch (`/api/v1/taprooms/${props.taproomId}/taproom_reviews/${props.id}`, {
        method: "DELETE",
        credentials: "same-origin",
        headers: {
          "Content-Type": "application/json",
            Accept: "application/json",
          },
          body: null,
        })
  if (!response.ok) {
    const errorMessage = `${response.status} (${response.statusText})`
    const error = new Error(errorMessage)
    throw error
  }
  const responseBody = await response.json()
    window.location.reload()
  if(!response.error) {
    console.log(responseBody.message)
  } else if (responseBody.error[0] === "You need to be signed in first") {
    alert("You need to be signed in first")
  }
} catch(error) {
  console.error(`Error in fetch: ${error.message}`)
}
  }

let memberDelete
if (props.currentUser) {
  if (props.currentUser.id === props.review.user_id) {
    memberDelete = <button onClick={handleDeleteReview}>Delete</button>
  }
}


  return (
    <div className="grid-x grid-margin-x">
      <div className='small-12 medium-8 large-8 callout'>
        <div className='grid-x'>
          <div className='small-8 medium-8 large-8'>
            <div className="grid-x">
              <h3 className="cell small-4 text-left username">{props.username}</h3>
              <h4>{props.title}</h4>
              <button onClick={handleDeleteReview}>
                Delete 
              </button>
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

