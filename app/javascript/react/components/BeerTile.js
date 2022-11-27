import React from 'react';
import { Link } from 'react-router-dom';

const BeerTile = props => {
  return (
    <div className="cell medium-6 small-12 large-4">
      <Link to={`/taprooms/taproom_id/beers/${props.id}`}>
      <div className="beer-logo-image-box">
        <img src={props.image_url} className="beer-logo-image-tile"/>
      </div>
      </Link>
    </div>
  )
}


export default BeerTile