import React, { useState, useEffect } from "react";
import BrandTile from "./BrandTile";
import BrandSearchBar from "./BrandSearchBar.js";

const BrandIndexContainer = (props) => {
  const [brands, setBrands] = useState([]);

  const getBrands = async () => {
    try {
      const response = await fetch(`/api/v1/brands`);
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
    getBrands();
  }, []);

  const brandTiles = brands.map((brand) => {
    return (
      <BrandTile
        key={brand.id}
        id={brand.id}
        name={brand.name}
        logo={taproom.logo}
        image_url={taproom.image_url}
        description={taproom.description}
        instagram={taproom.instagram}
        twitter={taproom.twitter}
        facebook={taproom.facebook}
        official_web_page={taproom.official_web_page}
        tours={brand.tours}
        tour_tickets={brand.tour_tickets}
      />
    );
  });

  return (
    <div className="brand-index">
      <div className="grid-x">
        <div className="small-12 medium-6 large-4">
          <h1 className="brand-index-page-title">BOSTON'S BREWERS!</h1>
        </div>
      </div>
      <div className="search-bar">
        <BrandSearchBar brands={brands} setBrands={setBrands} />
      </div>
      <div className="grid-x grid-margin-x">{brandTiles}</div>
    </div>
  );
};

export default BrandIndexContainer;
