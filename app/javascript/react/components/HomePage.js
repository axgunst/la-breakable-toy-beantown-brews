import React from 'react'

import { BrowserRouter, browserRouter, Route, Switch } from 'react-router-dom'

export const HomePage = (props) => {
  return (
    <div className='home-page'>
      <img className='home-page-top-image'src="https://www.samueladams.com:443//app_media/SamAdamsRedux/Modules/Split-Content-Hero-Block-Images/2020-Brewery-and-Tap-Room/TapRooms_MainHeader_Taps.file"/>
      <h4 className='home-page-subtitle'>BREWED AND POURED IN BOSTON</h4>
      <p className='home-page-info-block'>Brew Boston connects local beer enthusiasts on the search for the perfect pour.</p> 
      <p className='home-page-info-block'>With over 130 breweries in the BayState, everyone is bound to find their perfect pint!</p>
      <div className='home-page-scrolling-image'>
        <img src="https://static.wixstatic.com/media/e50a98_d340b85dd6304779ac3043681d3c1fdf~mv2.jpg/v1/fill/w_928,h_1034,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/e50a98_d340b85dd6304779ac3043681d3c1fdf~mv2.jpg"/>
        <img src="https://scontent.cdninstagram.com/v/t51.29350-15/315435291_858695055146417_7759746738154079185_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=8ae9d6&_nc_ohc=TUcefUwgF64AX9qdJGH&_nc_ht=scontent.cdninstagram.com&edm=ANo9K5cEAAAA&oh=00_AfADerKM0cuBIqZaYG2wjk5mU1kpjX1SowznXHdx1GR0cA&oe=637A6240"/>
        <img src="https://scontent-bos5-1.xx.fbcdn.net/v/t39.30808-6/280758971_8307939479246769_6695235801487764230_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=eSIMPWFJdyQAX_qHDJ5&_nc_ht=scontent-bos5-1.xx&oh=00_AfCiWFYzUdd_gzaljtVncoNYk-75E3XHfcXHRMd-pdO0KQ&oe=637A6A69"/>
      </div>
    </div>
   
  )
}

export default HomePage