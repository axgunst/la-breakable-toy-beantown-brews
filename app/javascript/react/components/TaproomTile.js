import React from 'react';
import { Link } from 'react-router-dom';

const TaproomTile = props => {
  return (
    <div className="cell medium-6 small-12 large-4">
      <Link to={`/taprooms/${props.id}`}>
      <div className="taproom-logo-image-box">
        <img src={props.logo} className="taproom-logo-image-tile-show-city-on-hover"/>
      </div>
      </Link>
    </div>
  )
}


export default TaproomTile