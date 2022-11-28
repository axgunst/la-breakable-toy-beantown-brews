import React, {useState, useEffect } from "react";
import BeerTile from './BeerTile'

const BeerIndexContainer = (props) => {
  const [beers, setBeers] = useState([])
  
  const getBeers = async () => {
    // debugger
    try {
      const response = await fetch("/api/v1/taprooms/:taproom_id/beers")
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`
        throw new Error(errorMessage)
      }
      const responseBody = await response.json()
      setBeers(responseBody)
    } catch (error) {
      console.error(`Error in Fetch: ${error.message}`)
    }
  }
  
  useEffect(() => {
    getBeers()
  }, [])

  const beerTiles = beers.map(beer => {
    return (
      <BeerTile
        key={beer.id}
        id={beer.id}
        name={beer.name}
        style={beer.style}
        abv={beer.abv}
        description={beer.description}
        brewer={beer.brewer}
        image_url={beer.image_url}
      />
    )
  })
  
  return (
    <div className='beer-index'>
      <div className="grid-x">
        <div className= "small-12 medium-6 large-8">
          <h1 className="beer-index-page-title"> Try these in our local taproom!</h1>
        </div>
      </div>
      <div className='grid-x grid-margin-x'>
        {beerTiles}
      </div>
    </div>
  )
}

export default BeerIndexContainer
