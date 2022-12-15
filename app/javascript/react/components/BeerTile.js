import React from "react";
import { Link } from "react-router-dom";

const BeerTile = (props) => {
  return (
    <div className="cell medium-6 small-12 large-4">
      <Link to={`/taprooms/taproom_id/beers/${props.id}`}>
        <div className="beer-index-box">
          <img src={props.image_url} className="beer-index-tile-logo" />
        </div>
      </Link>
    </div>
  );
};

export default BeerTile;
