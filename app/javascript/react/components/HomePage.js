import React from 'react'
import { Link } from 'react-router-dom';



export const HomePage = (props) => {
  return (
    <div className='home-page'>
      <img className='home-page-top-image'src="https://beantown-brews-production.s3.amazonaws.com/sam-adams-tap-handles.jpeg"/>
      <a className = "home-page-link-to-taprooms" href="/taprooms">Checkout the taprooms!</a>
      <h4 className='home-page-subtitle'>BOSTON BREWED & POURED</h4>
      <p className='home-page-info-block'>Beantown Brews connects local beer enthusiasts on the search for the perfect pour. With over 130 taprooms in the BayState, everyone is bound to find their perfect pint!</p> 
      <div className='home-page-image grid-x'>
        <div className='custom-margin cell medium-6 large-4 grid-x'>
          <img className="cell large-4"src="https://beantown-brews-production.s3.amazonaws.com/mighty-squirrel-cosmic-can.webp"/>
          <img className="cell large-4"src="https://beantown-brews-production.s3.amazonaws.com/might-squirrel-cloud-candy-can.jpeg"/>
          <img className="cell large-4"src="https://beantown-brews-production.s3.amazonaws.com/mighty-squirrel-starwbarry-smooth-can.webp"/>
          
        </div>
      </div>
    </div>    
  )
}

export default HomePage