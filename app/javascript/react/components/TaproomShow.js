import React, { useState } from "react";
import { Link } from "react-router-dom";
import TaproomReviewForm from "./TaproomReviewForm";
import TaproomReviewTile from "./TaproomReviewTile";
import BeerTile from "./BeerTile";
import NewBeer from "./NewBeer.js";

const TaproomShow = (props) => {
  const taproomId = props.id;

  const taproomReviewTiles = props.reviews.map((taproomReview) => {
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
        brewer={beer.brewer}
        image_url={beer.image_url}
      />
    );
  });

  return (
    <div className="taproom-show-page">
      <div className="taproom-top-section">
        <div className="grid-x">
          <img
            src={props.image_url}
            className="taproom-show-image cell small-12 medium-6 large-6"
          />

          <div className="taproom-info">
            <h1 className="taproom-show-name cell small-12 medium-6 large-6">
              {props.name}
            </h1>

            <div className="taproom-location cell small-12 medium-3 large-3">
              <h3 className="taproom-city-state">
                {props.city}, {props.state}
              </h3>
              <h4>
                {props.address}, {props.zipcode}
              </h4>
              <hr></hr>
            </div>

            <div className="grid-x taproom-hours-of-operation">
              <div className="taproom-days cell small-12 medium-6 large-6">
                <ul className="taproom-days-list">
                  <li>MONDAY</li>
                  <li>TUESDAY</li>
                  <li>WEDNESDAY</li>
                  <li>THURSDAY </li>
                  <li>FRIDAY </li>
                  <li>SATURDAY</li>
                  <li>SUNDAY</li>
                </ul>
              </div>

              <div className="taproom-hours cell small-12 medium-6 large-6">
                <ul className="taproom-hours-list">
                  <li>{props.monday_hours}</li>
                  <li>{props.tuesday_hours}</li>
                  <li>{props.wednesday_hours}</li>
                  <li>{props.thursday_hours}</li>
                  <li>{props.friday_hours}</li>
                  <li>{props.saturday_hours}</li>
                  <li>{props.sunday_hours}</li>
                </ul>
              </div>
            </div>

            <div className="grid-x taproom-show-buttons">
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
                  className="social-button cell small-12 medium-6 large-6"
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

      <div className="taproom-show-additional-info ">
        <div className="grid-x">
          <div className="taproom-description cell small-12 medium-6 large-6">
            <h5>{props.description}</h5>
          </div>

          <div className="taproom-faq cell small-12 medium-6 large-6">
            <h3 className="taproom-faq-title">FAQ</h3>
            <h5>ARE DOGS ALLOWED AT OUR TAPROOM?</h5>
            <h5>DO WE HAVE FOOD AVAILABLE?</h5>
            <h5>DO WE HAVE OUTDOOR SEATING?</h5>
          </div>
        </div>
      </div>

      <div className="taproom-show-review-form">
        <TaproomReviewForm
          addNewReview={props.addNewReview}
          reviewButton={props.reviewButton}
        />
      </div>

      <div className="taproom-show-review-tiles">{taproomReviewTiles}</div>

      <div className="taproom-show-beer-index">
        <div className="taproom-show-beer-logo">{beerTiles}</div>
      </div>

      {/* <div className="taproom-show-add-new-beer-form">
        <NewBeer
          handleSubmitNewBeer={props.handleSubmitNewBeer}
          reviewButton = {props.reviewButton}
          taproomId = {taproomId}
        />
      </div> */}
    </div>
  );
};

export default TaproomShow;
