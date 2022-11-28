import React, {useState, useEffect } from "react";
import TaproomShow from "./TaproomShow";

const TaproomShowContainer = (props) => {
  
  const [taproom, setTaproom] = useState({})  
  const [reviews, setReviews] = useState([])
  const [signedIn, setSignedIn] = useState(false)

  let reviewButton = 'hide'

  const taproomId = props.match.params.id

  const fetchTaproom = async () => {
    try {
      const response = await fetch(`/api/v1/taprooms/${taproomId}`)
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`
        const error = new Error(errorMessage)
        throw error
      } 
      const responseBody = await response.json()
      setTaproom(responseBody.taproom)
      setReviews(responseBody.reviews) 
      
      if (responseBody.current_user !== null) {
        setSignedIn(true)
      }
    } catch (err) {
      console.error(`Error in Fetch:${err.message}`)
    } 
  } 
  
  if (signedIn !== false) {
    reviewButton = 'show'
  }

  useEffect(() => {
    fetchTaproom();
  }, [])

  const addNewReview = async (payLoad) => {
    let body = new FormData();
    body.append("title", payLoad.title);
    body.append("body", payLoad.body);
    body.append("overall_rating", payLoad.overall_rating);
    body.append("service_rating",payLoad.service_rating);
    body.append("ambience_rating", payLoad.ambience_rating);
    body.append("group_accommodations_rating", payLoad.group_accommodations_rating);
    body.append("favorite_beer", payLoad.favorite_beer);
    body.append("photo", payLoad.photo);
    body.append("taproom_id", taproomId)

    try {
      const response = await fetch(`/api/v1/taprooms/${taproomId}/taproom_reviews`, {
        method: "POST",
        credentials: "same-origin",
        // headers: {
        //   "Content-Type": "application/json",
        //   Accept: "application/json"
        // },
        body: body
      });
      if (!response.ok) {
        const newError = new Error(`${response.status} ${response.statusText}`);
        throw newError;
      }
      
      const responseBody = await response.json();
      
      setReviews([...reviews, responseBody]);
    } catch (err) {
      console.error(`Error in Fetch: ${err.message}`);
    }
  }

  // const deleteReview = async () => {
  //   try {
  //     const response = await fetch(`/api/v1/taprooms/taproom_reviews/${props.match.params.id}`, {
  //       method: "DELETE",
  //       credentials: "same-origin",
  //       headers: {
  //         'Content-Type': 'application/json',
  //         'Accept': 'application/json'
  //       }, 
  //       body: JSON.stringify()
  //     })
  //     if (!response.ok) {
  //       const errorMessage = `${response.status} ${response.statusText}`
  //       const error = new Error(`Error! ${errorMessage}`)
  //       throw (error)
  //     } window.location.reload()
  //   } catch(err) {
  //     console.error(`Error in fetch: ${err.message}`)
  //   }
  // }

  const destroyReview = async () => {
    const reviewId = props.match.params.reviewId
    try {
      const response = await fetch(`/api/v1/taprooms/${reviewId}`, {
        credentials: "same-origin",
        method: "DESTROY",
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify(reviewId)
      })
      if (!response.ok) {
        const errorMessage = `${response.status} - (${response.statusText})`
        const error = new Error(`${errorMessage}`)
        throw(error)
      } else {
        window.location.reload()
      }
    } catch(err) {
      console.error(`Error: ${err.message}`)
    }
  }

  const handleDestroyReview = () => {
    destroyReview()
  }

  useEffect(() => {
    fetchTaproom();
  }, [])
 
  return (
    <TaproomShow
      key={taproomId}
      id={taproomId}
      name={taproom.name}
      address={taproom.address}
      city={taproom.city}
      state={taproom.state}
      zipcode={taproom.zipcode}
      monday_hours={taproom.monday_hours}
      tuesday_hours={taproom.tuesday_hours}
      wednesday_hours={taproom.wednesday_hours}
      thursday_hours={taproom.thursday_hours}
      friday_hours={taproom.friday_hours}
      saturday_hours={taproom.saturday_hours}
      sunday_hours={taproom.sunday_hours}
      description={taproom.description}
      dogs ={taproom.dogs}
      kitchen={taproom.kitchen}
      patio={taproom.patio}
      logo={taproom.logo}
      image_url={taproom.image_url}
      instagram={taproom.instagram}
      twitter={taproom.twitter}
      facebook={taproom.facebook}
      official_webpage={taproom.official_webpage}
      reviews={reviews}
      setReviews={setReviews}
      addNewReview={addNewReview}
      reviewButton = {reviewButton}
      destroyReview = {destroyReview}
    />
  )
}

export default TaproomShowContainer