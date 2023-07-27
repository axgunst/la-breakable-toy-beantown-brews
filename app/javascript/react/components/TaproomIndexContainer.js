import React, { useState, useEffect } from "react";
import TaproomTile from "./TaproomTile";
import TaproomSearchBar from "./TaproomSearchBar.js";

const TaproomIndexContainer = (props) => {
  const [taprooms, setTaprooms] = useState([]);

  const getTaprooms = async () => {
    try {
      const response = await fetch(`/api/v1/brands/${brand.Id}/taprooms`);
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`;
        throw new Error(errorMessage);
      }
      const responseBody = await response.json();
      setTaprooms(responseBody);
    } catch (error) {
      console.error(`Error in Fetch: ${error.message}`);
    }
  };

  useEffect(() => {
    getTaprooms();
  }, []);

  const taproomTiles = taprooms.map((taproom) => {
    return (
      <TaproomTile
        key={taproom.id}
        id={taproom.id}
        name={taproom.name}
        address={taproom.address}
        city={taproom.city}
        state={taproom.state}
        zipcode={taproom.zipcode}
        monday_hours={taproom.monday_hours}
        tuesday_hours={taproom.tuesday_hours}
        wednesday_hours={taproom.wednesday_hours}
        thursday_hours={taproom.thursday_hours}
        friday_hours={taproom.friday_hours}
        saturday_hours={taproom.saturday_hours}
        sunday_hours={taproom.sunday_hours}
        description={taproom.description}
        dogs={taproom.dogs}
        kitchen={taproom.kitchen}
        patio={taproom.patio}
        logo={taproom.logo}
        image_url={taproom.image_url}
        instagram={taproom.instagram}
        twitter={taproom.twitter}
        facebook={taproom.facebook}
        official_web_page={taproom.official_web_page}
      />
    );
  });

  return (
    <div className="taproom-index">
      <div className="grid-x">
        <div className="small-12 medium-6 large-4">
          <h1 className="taproom-index-page-title">BOSTON'S TAPROOMS!</h1>
        </div>
      </div>
      <div className="search-bar">
        <TaproomSearchBar taprooms={taprooms} setTaprooms={setTaprooms} />
      </div>
      <div className="grid-x grid-margin-x">{taproomTiles}</div>
    </div>
  );
};

export default TaproomIndexContainer;
