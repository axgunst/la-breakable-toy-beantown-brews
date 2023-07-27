import React, { useState, useEffect } from "react";
import BrandShow from "./BrandShow";

const BrandShowContainer = (props) => {
  const [brand, setBrand] = useState({});
  // const [reviews, setReviews] = useState([]);
  const [taprooms, setTaprooms] = useState({});
  const [beers, setBeers] = useState([]);
  const [signedIn, setSignedIn] = useState(false);

  // let reviewButton = "hide";

  const brandId = props.match.params.id;

  const fetchBrand = async () => {
    try {
      const response = await fetch(`/api/v1/brands/${brandId}`);
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`;
        const error = new Error(errorMessage);
        throw error;
      }
      const responseBody = await response.json();
      setBrand(responseBody.brand);
      setTaprooms(responseBody.taprooms);
      setBeers(responseBody.beers);

      if (responseBody.current_user !== null) {
        setSignedIn(true);
      }
    } catch (err) {
      console.error(`Error in Fetch:${err.message}`);
    }
  };

  if (signedIn !== false) {
    reviewButton = "show";
  }

  useEffect(() => {
    fetchBrand();
  }, []);

  // const addNewReview = async (payLoad) => {
  //   let body = new FormData();
  //   body.append("title", payLoad.title);
  //   body.append("body", payLoad.body);
  //   body.append("overall_rating", payLoad.overall_rating);
  //   body.append("service_rating", payLoad.service_rating);
  //   body.append("ambience_rating", payLoad.ambience_rating);
  //   body.append(
  //     "group_accommodations_rating",
  //     payLoad.group_accommodations_rating
  //   );
  //   body.append("favorite_beer", payLoad.favorite_beer);
  //   body.append("photo", payLoad.photo);
  //   body.append("taproom_id", taproomId);

  //   try {
  //     const response = await fetch(
  //       `/api/v1/taprooms/${taproomId}/taproom_reviews`,
  //       {
  //         method: "POST",
  //         credentials: "same-origin",
  //         body: body,
  //       }
  //     );
  //     if (!response.ok) {
  //       const newError = new Error(`${response.status} ${response.statusText}`);
  //       throw newError;
  //     }

  //     const responseBody = await response.json();
  //     setReviews([...reviews, responseBody]);
  //   } catch (err) {
  //     console.error(`Error in Fetch: ${err.message}`);
  //   }
  // };

  // const destroyReview = async () => {
  //   const reviewId = props.match.params.reviewId;
  //   try {
  //     const response = await fetch(`/api/v1/taprooms/${reviewId}`, {
  //       credentials: "same-origin",
  //       method: "DESTROY",
  //       headers: {
  //         "Content-Type": "application/json",
  //         Accept: "application/json",
  //       },
  //       body: JSON.stringify(reviewId),
  //     });
  //     if (!response.ok) {
  //       const errorMessage = `${response.status} - (${response.statusText})`;
  //       const error = new Error(`${errorMessage}`);
  //       throw error;
  //     } else {
  //       window.location.reload();
  //     }
  //   } catch (err) {
  //     console.error(`Error: ${err.message}`);
  //   }
  // };

  // useEffect(() => {
  //   fetchTaproom();
  // }, []);

  return (
    <BrandShow
      key={brandId}
      id={brandId}
      name={brand.name}
      logo={brand.logo}
      image_url={brand.image_url}
      instagram={brand.instagram}
      twitter={brand.twitter}
      facebook={brand.facebook}
      official_webpage={brand.official_webpage}
      beers={beers}
      taprooms={taprooms}
    />
  );
};

export default BrandShowContainer;
