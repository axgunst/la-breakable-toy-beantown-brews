import React from 'react'
import { Link } from 'react-router-dom';

import { BrowserRouter, browserRouter, Route, Switch } from 'react-router-dom'

export const HomePage = (props) => {
  return (
    <div className='home-page'>
      <img className='home-page-top-image'src="https://www.samueladams.com:443//app_media/SamAdamsRedux/Modules/Split-Content-Hero-Block-Images/2020-Brewery-and-Tap-Room/TapRooms_MainHeader_Taps.file"/>
      <a href="http://localhost:3000/taprooms">Checkout the taprooms!</a>
      <h4 className='home-page-subtitle'>BOSTON BREWED & POURED</h4>
      <p className='home-page-info-block'>Beantown Brews connects local beer enthusiasts on the search for the perfect pour. With over 130 breweries in the BayState, everyone is bound to find their perfect pint!</p> 
      <div className='home-page-image grid-x'>
        <div className='custom-margin cell medium-6 large-4 grid-x'>
          <img className="cell large-4"src="https://static.wixstatic.com/media/e50a98_ff88581895fc4a7da3e849136fae945c~mv2.jpg/v1/fill/w_986,h_1034,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/e50a98_ff88581895fc4a7da3e849136fae945c~mv2.jpg"/>
          <img className="cell large-4"src="https://static.wixstatic.com/media/e50a98_d340b85dd6304779ac3043681d3c1fdf~mv2.jpg/v1/fill/w_1242,h_1034,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/e50a98_d340b85dd6304779ac3043681d3c1fdf~mv2.jpg"/>
          <img className="cell large-4"src="https://scontent.cdninstagram.com/v/t51.29350-15/315435291_858695055146417_7759746738154079185_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=zetBOulzUnYAX_dkmDp&_nc_ht=scontent.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AfA5KlrM6AFWN8Y4BGziKu5RcBL6R7SFQMTD5w5RT_f2UA&oe=63844580"/>
        </div>
      </div>
    </div>    
  )
}

export default HomePage