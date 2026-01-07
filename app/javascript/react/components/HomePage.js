import React from "react";
import { Link } from "react-router-dom";

export const HomePage = (props) => {
  return (
    <div className="home-page">
      <div className="grid-x">
        <img
          className="home-page-top-image small-12 medium-12 large-12"
          //src="https://beantown-brews-production.s3.us-east-1.amazonaws.com/sam-adams/sam-adams-tap-handles.jpeg"
          src="https://beantown-brews-production.s3.us-east-1.amazonaws.com/Homepage+photo.jpg"
        />
        <a
          className="home-page-link-to-taprooms cell small-12 medium-12 large-12"
          href="/brands"
        >
          Checkout the taprooms in Boston!
        </a>
        <h4 className="home-page-subtitle small-12 medium-12 large-12">
          BOSTON BREWED & POURED
        </h4>
        <p className="home-page-info-block small-12 medium-12 large-12">
          TEXT HERE
        </p>
        <div className="home-page-images">
          <div className="grid-x">
            <img
              src="https://beantown-brews-production.s3.us-east-1.amazonaws.com/lord-hobo/beer-images/lord-hob-617-hazy-ipa-can-3.jpeg"
              className="small-12 medium-4 large-4"
            />
            <img
              src="https://beantown-brews-production.s3.us-east-1.amazonaws.com/lord-hobo/beer-labels/lord-hobo-juice-lord-can.jpeg"
              className="small-12 medium-4 large-4"
            />
            <img
              src="https://beantown-brews-production.s3.us-east-1.amazonaws.com/lord-hobo/beer-labels/lord-hobo-617-lager-can.jpeg"
              className="small-12 medium-4 large-4"
            />
          </div>
        </div>
      </div>
    </div>
  );
};

export default HomePage;
