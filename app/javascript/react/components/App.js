import React from "react";
import { BrowserRouter, Switch, Route } from "react-router-dom";
import HomePage from "./HomePage";
import BrandIndexContainer from "./BrandIndexContainer.js";
import BrandShowContainer from "./BrandShowContainer.js";
import TaproomIndexContainer from "./TaproomIndexContainer.js";
import TaproomShowContainer from "./TaproomShowContainer.js";
import BeerIndexContainer from "./BeerIndexContainer.js";
import BeerShowContainer from "./BeerShowContainer.js";
// import NewBeer from './NewBeer.js'

export const App = (props) => {
  return (
    <BrowserRouter>
      <Switch>
        <Route exact path="/" component={HomePage} />
        <Route exact path="/brands" component={BrandIndexContainer} />
        <Route exact path="/brands/:id" component={BrandShowContainer} />
        <Route
          exact
          path="/brands/:brand_id/taprooms"
          component={TaproomIndexContainer}
        />
        <Route
          exact
          path="/brands/:brand_id/taprooms/:id"
          component={TaproomShowContainer}
        />
        <Route
          exact
          path="/brands/:brand_id/beers"
          component={BeerIndexContainer}
        />
        <Route
          exact
          path="/brands/:brand_id/beers/:id"
          component={BeerShowContainer}
        />
        {/* <Route exact path="/api/v1/taprooms/:taproom_id/beers/new" component={NewBeer}/> */}
      </Switch>
    </BrowserRouter>
  );
};

export default App;
