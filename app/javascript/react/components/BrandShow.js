import React, { useState } from "react";
import { Link } from "react-router-dom";
// import TaproomReviewForm from "./TaproomReviewForm";
// import TaproomReviewTile from "./TaproomReviewTile";
import TaproomTile from "./TaproomTile";
import BeerTile from "./BeerTile";
import NewBeer from "./NewBeer.js";

const BrandShow = (props) => {
  const brandId = props.id;

  // const taproomReviewTiles = props.reviews.map((taproomReview) => {
  //   return (
  //     <TaproomReviewTile
  //       key={taproomReview.id}
  //       id={taproomReview.id}
  //       title={taproomReview.title}
  //       overall_rating={taproomReview.overall_rating}
  //       service_rating={taproomReview.service_rating}
  //       ambience_rating={taproomReview.ambience_rating}
  //       group_accommodations_rating={taproomReview.group_accommodations_rating}
  //       body={taproomReview.body}
  //       favorite_beer={taproomReview.favorite_beer}
  //       photo={taproomReview.photo}
  //       username={taproomReview.username}
  //       taproomId={taproomId}
  //       setReviews={props.setReviews}
  //       reviews={props.reviews}
  //     />
  //   );
  // });
  const taproomTiles = props.taprooms.map((beer) => {
    return (
      <TaproomTile
        key={taproomId}
        id={taproomId}
        name={taproom.name}
        brand={taproom.brand}
        address={taproom.address}
        city={taproom.city}
        state={taproom.state}
        zipcode={taproom.zipcode}
        directions={taproom.directions}
        parking={taproom.parking}
        monday_hours={taproom.monday_hours}
        tuesday_hours={taproom.tuesday_hours}
        wednesday_hours={taproom.wednesday_hours}
        thursday_hours={taproom.thursday_hours}
        friday_hours={taproom.friday_hours}
        saturday_hours={taproom.saturday_hours}
        sunday_hours={taproom.sunday_hours}
        reservations={taproom.reservations}
        reservations_link={taproom.reservations_link}
        description={taproom.description}
        kitchen={taproom.kitchen}
        patio={taproom.patio}
        dogs={taproom.dogs}
        logo={taproom.logo}
        image_url={taproom.image_url}
      />
    );
  });

  const beerTiles = props.beers.map((beer) => {
    return (
      <BeerTile
        key={beer.id}
        id={beer.id}
        name={beer.name}
        style={beer.style}
        abv={beer.abv}
        description={beer.description}
        brand={beer.brand}
        image_url={beer.image_url}
      />
    );
  });

  return (
    <div className="brand-show-page">
      <div className="brand-top-section">
        <div className="grid-x">
          <img
            src={props.image_url}
            className="brand-show-image cell small-12 medium-6 large-6"
          />

          <div className="brand-info">
            <h1 className="brand-show-name cell small-12 medium-6 large-6">
              {props.name}
            </h1>

            <div className="brand-tours">
              <h3>{props.tours}</h3>
              <h3>{props.tour_tickets}</h3>
            </div>

            <div className="grid-x brand-show-buttons">
              <div className="official-brand-link">
                <a
                  className="brand-webpage-button"
                  href={props.official_webpage}
                  target="_blank"
                ></a>
              </div>
              <div className="rounded-social-buttons cell small-12 medium-6 large-6">
                <a
                  className="social-button instagram"
                  href={props.instagram}
                  target="_blank"
                >
                  <img
                    className="instagram-logo"
                    src="https://beantown-brews-production.s3.amazonaws.com/social-media/instagram-logo.png"
                  />
                </a>
                <a
                  className="social-button twitter cell small-12 medium-6 large-6"
                  href={props.twitter}
                  target="_blank"
                >
                  <img
                    className="twitter-logo"
                    src="https://beantown-brews-production.s3.amazonaws.com/social-media/twitter-logo.png"
                  />
                </a>
                <a
                  className="social-button facebook"
                  href={props.facebook}
                  target="_blank"
                >
                  <img
                    className="facebook-logo"
                    src="https://beantown-brews-production.s3.amazonaws.com/social-media/facebook-logo.png"
                  />
                </a>
              </div>

              <div className="on-tap-link cell small-12 medium-6 large-6">
                {/* <Link
                  to={`/taprooms/${taproomId}/beers`}
                  className="taproom-show-link-to-beer-index"
                  role="button"
                >
                  CHECK OUT WHAT'S ON TAP!
                </Link> */}
              </div>
            </div>
          </div>
        </div>
      </div>

      <div className="brand-show-additional-info ">
        <div className="grid-x">
          <div className="brand-description cell small-12 medium-6 large-6">
            <h5>{props.description}</h5>
          </div>
        </div>
      </div>

      <div className="brand-show-beer-index">
        {/* <div className="grid-x"> */}
        <div className="small-12 medium-6 large-4">
          <div className="taproom-show-beer-logo grid-x">{beerTiles}</div>
        </div>
      </div>
      {/* </div> */}

      {/* <div className="taproom-show-add-new-beer-form">
        <NewBeer
          handleSubmitNewBeer={props.handleSubmitNewBeer}
          reviewButton = {props.reviewButton}
          taproomId = {taproomId}
        />
      </div> */}
      <div className="brand-show-taproom-index">
        {/* <div className="grid-x"> */}
        <div className="small-12 medium-6 large-4">
          <div className="brand-show-taproom-logo grid-x">{taproomTiles}</div>
        </div>
      </div>
    </div>
  );
};

export default BrandShow;
