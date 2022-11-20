import React from 'react'
import { BrowserRouter, Switch, Route } from 'react-router-dom'
import HomePage from './HomePage'

export const App = (props) => {
  return (
  <h1>Make It So React</h1>
  <BrowserRouter>
    <Switch>
      <Route exact path="/" component={HomePage}/>
    </Switch>
  </BrowserRouter>
  )
}

export default App
