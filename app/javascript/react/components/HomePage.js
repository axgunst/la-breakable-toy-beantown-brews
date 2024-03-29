import React from "react";
import { Link } from "react-router-dom";

export const HomePage = (props) => {
  return (
    <div className="home-page">
      <div className="grid-x">
        <img
          className="home-page-top-image small-12 medium-12 large-12"
          src="https://beantown-brews-production.s3.amazonaws.com/sam-adams/sam-adams-tap-handles.jpeg"
        />
        <a
          className="home-page-link-to-taprooms cell small-12 medium-12 large-12"
          href="/brands"
        >
          Checkout the taprooms!
        </a>
        <h4 className="home-page-subtitle small-12 medium-12 large-12">
          BOSTON BREWED & POURED
        </h4>
        <p className="home-page-info-block small-12 medium-12 large-12">
          Beantown Brews connects local beer enthusiasts on the search for the
          perfect pour. With over 130 taprooms in the BayState, everyone is
          bound to find their favorite pint!
        </p>
        <div className="home-page-images">
          <div className="grid-x">
            <img
              src="https://beantown-brews-production.s3.amazonaws.com/mighty-squirrel/beers/mighty-squirrel-cosmic-distortion-can.png"
              className="small-12 medium-4 large-4"
            />
            <img
              src="https://beantown-brews-production.s3.amazonaws.com/mighty-squirrel/beers/might-squirrel-cloud-candy-can.jpeg"
              className="small-12 medium-4 large-4"
            />
            <img
              src="https://beantown-brews-production.s3.amazonaws.com/mighty-squirrel/beers/mighty-squirrel-strawberry-smoovy-can.png"
              className="small-12 medium-4 large-4"
            />
          </div>
        </div>
      </div>
    </div>
  );
};

export default HomePage;
