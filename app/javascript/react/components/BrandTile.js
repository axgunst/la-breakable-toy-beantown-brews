import React from "react";
import { Link } from "react-router-dom";

const BrandTile = (props) => {
  return (
    <div className="cell medium-6 small-12 large-4">
      <Link to={`/brands/${props.id}`}>
        <div className="brand-index-tile">
          <img src={props.logo} className="brand-index-tile-logo" />
        </div>
      </Link>
    </div>
  );
};

export default BrandTile;
