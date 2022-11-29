import React, { useState } from "react";

const TaproomReviewTile = (props) => {
  // debugger
  const [displayForm, setDisplayForm] = useState(false);
  const displayEditReview = () => {
    setDisplayForm(!displayForm)
  }

  const [editedReview, setEditedReview] = useState({
    title: props.title,
    overall_rating: props.overall_rating,
    service_rating: props.service_rating,
    ambience_rating: props.ambience_rating,
    group_accommodations_rating: props.group_accommodations_rating,
    favorite_beer: props.favorite_beer,
    body: props.body,
    photo: props.photo
  })

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

let memberEdit
let memberDelete

if (props.currentUser) {
  if (props.currentUser.id === props.review.user_id) {
    memberEdit = <button onDoubleClick={displayEditReview}></button>
    memberDelete = <button onClick={handleDeleteReview}>Delete</button>
  }
}

const handleEditReview = async (event) => {
  event.preventDefault();
  try {
    const response = await fetch(
      `api/v1/taprooms/${props.taproomId}/taproom_reviews/${props.id}`,
      {
        method: "PATCH",
        credentials: "same-origin",
        headers: {
          "Content-Type": "application/json",
          Accept: "application/json"
        },
        body: JSON.stringify(editedReview),
      }
    );
    if (!response.ok) {
      const errorMessage = `${response.status} (${response.statusText})`
      const error = new Error(errorMessage)
      throw error
    }
    const responseBody = await response.json()
    if (!responseBody.error) {
      console.log("Review was changed successfully!")
      props.setReviews(responseBody)
      setDisplayForm(false)
    } else if (responseBody.error[0] === "You need to be signed in first") {
      alert("You must be signed in")
      setDisplayForm(false)
    }
  } catch (err) {
    console.error(`Error in fetch: ${err.message}`)
  }
}

const handleInputChange = (event) => {
  setEditedReview({
    ...editedReview,
    [event.currentTarget.name]: event.currentTarget.value,
  })
}

let editForm

if (displayForm === true) {
  editForm = (

    <form onSubmit={handleEditReview}>
      <label>
        Title:ed
        <input type="text" name="title" value={editedReview.title} onChange={handleInputChange}/>
      </label>

      <fieldset>
          <legend>Overall Rating</legend>
            <input type="radio" name="overall_rating" onChange={handleInputChange} value="1" id="1"/>
            <input type="radio" name="overall_rating" onChange={handleInputChange} value="2" id="2"/>
            <input type="radio" name="overall_rating" onChange={handleInputChange} value="3" id="3"/>
            <input type="radio" name="overall_rating" onChange={handleInputChange} value="4" id="4"/>
            <input type="radio" name="overall_rating" onChange={handleInputChange} value="5" id="5"/>
      </fieldset>
    

        <fieldset>
          <legend>Service Rating</legend>
            <input type="radio" name="service_rating" onChange={handleInputChange} value="1" id="1"/>
            <input type="radio" name="service_rating" onChange={handleInputChange} value="2" id="2"/>
            <input type="radio" name="service_rating" onChange={handleInputChange} value="3" id="3"/>
            <input type="radio" name="service_rating" onChange={handleInputChange} value="4" id="4"/>
            <input type="radio" name="service_rating" onChange={handleInputChange} value="5" id="5"/>
        </fieldset>

        <fieldset>
          <legend>Vibes Rating</legend>
            <input type="radio" name="ambience_rating" onChange={handleInputChange} value="1" id="1"/>
            <input type="radio" name="ambience_rating" onChange={handleInputChange} value="2" id="2"/>
            <input type="radio" name="ambience_rating" onChange={handleInputChange} value="3" id="3"/>
            <input type="radio" name="ambience_rating" onChange={handleInputChange} value="4" id="4"/>
            <input type="radio" name="ambience_rating" onChange={handleInputChange} value="5" id="5"/>
        </fieldset>

        <fieldset>
          <legend>Group Accommodations Rating</legend>
            <input type="radio" name="group_accommodations_rating" onChange={handleInputChange} value="1" id="1"/>
            <input type="radio" name="group_accommodations_rating" onChange={handleInputChange} value="2" id="2"/>
            <input type="radio" name="group_accommodations_rating" onChange={handleInputChange} value="3" id="3"/>
            <input type="radio" name="group_accommodations_rating" onChange={handleInputChange} value="4" id="4"/>
            <input type="radio" name="group_accommodations_rating" onChange={handleInputChange} value="5" id="5"/>
        </fieldset>

        <label htmlFor="favorite_beer">Favorite beer tried
          <textarea id="favorite_beer" rows="4" type="text" name="favorite_beer" value={editedReview.favorite_beer} onChange={handleInputChange}/>
        </label>

        <label htmlFor="body">Review
          <textarea id="body" rows="4" type="text" name="body" value={editedReview.body} onChange={handleInputChange}/>
        </label>
        <input type="submit" value="Edit Review"/>
    </form>
  )
} 

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
              {memberDelete}
              {memberEdit}
              {editForm}
              <h4>{props.title}</h4>
              <button onClick={handleDeleteReview}>
                Delete 
              </button>
              <button onClick={handleEditReview}>
                Edit 
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

