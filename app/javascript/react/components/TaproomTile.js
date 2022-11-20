import React from 'react';
import { Link } from 'react-router-dom';

const TaproomTile = props => {
  // debugger
  return (
    <div className="cell medium-6 small-12 large-4">
      <Link to={`/taprooms/${props.id}`}>
      <div className="taproom-logo-image-box">
        <img src={props.logo} className="taproom-logo-image-tile-show-city-on-hover"/>
        <p className="taproom-name">{props.name}</p>
        <p className="taproom-city-and-state">{`${props.city}, ${props.state}`}</p>
      </div>
      </Link>
    </div>
  )
}


export default TaproomTile