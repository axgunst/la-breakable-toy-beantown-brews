import React from 'react';
import { Link } from 'react-router-dom';

const BeerTile = props => {
  return (
    <div className="cell medium-6 small-12 large-4">
      <Link to={`/taprooms/${props.id}/beers`}>
      <div className="beer-logo-image-box">
        <img src={props.logo} className="beer-logo-image-tile"/>
      </div>
      </Link>
    </div>
  )
}


export default BeerTile