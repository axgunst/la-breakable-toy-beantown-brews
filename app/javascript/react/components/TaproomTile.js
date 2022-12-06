import React from "react";
import { Link } from "react-router-dom";

const TaproomTile = (props) => {
  return (
    <div className="cell medium-6 small-12 large-4">
      <Link to={`/taprooms/${props.id}`}>
        <div className="taproom-index-box">
          <img src={props.logo} className="taproom-index-tile-logo" />
        </div>
      </Link>
    </div>
  );
};

export default TaproomTile;
