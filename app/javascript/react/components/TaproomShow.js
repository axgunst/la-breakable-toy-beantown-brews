import React, { useState } from "react";
import { Link } from "react-router-dom";
import TaproomReviewForm from "./TaproomReviewForm";
import TaproomReviewTile from "./TaproomReviewTile";
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
  return (
    <div>
      <div>
        <div className="grid-x">
          <img
            src={props.image_url}
            className="taproom-show-image cell small-12 medium-6 large-6"
          />
          <h1 className="taproom-show-name cell small-12 medium-6 large-6">
            {props.name}
          </h1>
          {/* <Link
          to={`/taprooms/${taproomId}/beers`}
          className="taproom-show-link-to-beer-index"
        >
          Checkout whats on tap!
        </Link> */}

          <div className="taproom-location cell small-12 medium-3 large-3">
            <h3 className="taproom-city-state">
              {props.city}, {props.state}
            </h3>
            <h3>{props.address}</h3>
            <h3>{props.zipcode}</h3>
          </div>

          <div className="rounded-social-buttons cell small-12 medium-3 large-3">
            <a className="social-button instagram" href={props.instagram}>
              <img
                className="instagram-logo"
                src="https://beantown-brews-production.s3.amazonaws.com/instagram-icon.png"
              />
            </a>
            <a
              class="social-button cell small-12 medium-3 large-3"
              href={props.twitter}
            >
              <img
                className="twitter-logo"
                src="https://beantown-brews-production.s3.amazonaws.com/twitter-logo.png"
              />
            </a>
            <a class="social-button facebook" href={props.facebook}>
              <img
                className="facebook-logo"
                src="https://beantown-brews-development.s3.amazonaws.com/facebook-logo.png"
              />
            </a>
          </div>

          <div className="taproom-hours cell small-12 medium-3 large-3">
            <p>MONDAY {props.monday_hours}</p>
            <p>TUESDAY {props.tuesday_hours}</p>
            <p>WEDNESDAY {props.wednesday_hours}</p>
            <p>THURSDAY {props.thursday_hours}</p>
            <p>FRIDAY {props.friday_hours}</p>
            <p>SATURDAY {props.saturday_hours}</p>
            <p>SUNDAY {props.sunday_hours}</p>
          </div>

          <div className="taproom-faq">
            <h3>FAQ</h3>
            <h4>Are dogs allowed at our taproom? {props.dogs}</h4>
            <h4>Do we have food available? {props.kitchen}</h4>
            <h4>Do we have outdoor seating? {props.patio}</h4>
          </div>

          <div className="taproom-description">
            <h5>{props.description}</h5>
          </div>

          <div className="taproom-show-review-form">
            <TaproomReviewForm
              addNewReview={props.addNewReview}
              reviewButton={props.reviewButton}
            />
          </div>

          {taproomReviewTiles}

          {/* <div className="taproom-show-add-new-beer-form">
        <NewBeer
          handleSubmitNewBeer={props.handleSubmitNewBeer}
          reviewButton = {props.reviewButton}
          taproomId = {taproomId}
        />
      </div> */}
        </div>
      </div>
    </div>
  );
};

export default TaproomShow;
