import React, {useState, useEffect } from "react";
import BeerShow from "./BeerShow";

const BeerShowContainer = (props) => {
  
  const [beer, setBeer] = useState({})  
  const [reviews, setReviews] = useState([])
  const [signedIn, setSignedIn] = useState(false)

  let reviewButton = 'hide'

  const beerId = props.match.params.id

  const fetchBeer = async () => {
    try {
      const response = await fetch(`/api/v1/taprooms/taproom_id/beers/${beerId}`)
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`
        const error = new Error(errorMessage)
        throw error
      } 
      const responseBody = await response.json()
      setBeer(responseBody.beer)
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
    fetchBeer();
  }, [])

  const addNewReview = async (payLoad) => {
    let body = new FormData();
    body.append("title", payLoad.title);
    body.append("name", payLoad.name);
    body.append("body", payLoad.body);
    body.append("overall_rating", payLoad.overall_rating);
    body.append("pour", payLoad.pour);
    body.append("photo", payLoad.photo);
    body.append("beer_id", beerId)
  
    try {
      const response = await fetch(`/api/v1/taprooms/taproom_id/beers/${beerId}/beer_reviews`, {
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
      const response = await fetch(`/api/v1/taprooms/taproom_id/beers/${beerId}`, {
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
    fetchBeer();
  }, [])
 
  return (
    <BeerShow
      key={beerId}
      id={beerId}
      name={beer.name}
      style={beer.style}
      abv={beer.abv}
      description={beer.description}
      brewer={beer.brewer}
      image_url={beer.image_url}
      reviews={reviews}
      setReviews={setReviews}
      addNewReview={addNewReview}
      reviewButton = {reviewButton}
      destroyReview = {destroyReview}
    />
  )
}

export default BeerShowContainer