import React from 'react'
import { BrowserRouter, Switch, Route } from 'react-router-dom'
import HomePage from './HomePage'
import TaproomIndexContainer from './TaproomIndexContainer.js'
import TaproomShowContainer from './TaproomShowContainer'


export const App = (props) => {
  return (
   <BrowserRouter>
    <Switch>
      <Route exact path="/" component={HomePage}/>
      <Route exact path="/taprooms" component={TaproomIndexContainer}/>
      <Route exact path="/taprooms/:id" component={TaproomShowContainer}/>
    </Switch>
   </BrowserRouter>
  )
}

export default App
