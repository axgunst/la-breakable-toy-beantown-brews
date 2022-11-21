import React, {useState, useEffect } from "react";


const BeerIndexContainer = (props) => {
  const [beers, setBeers] = useState([])
  
  const getBeers = async () => {
    try {
      const response = await fetch("/api/v1/taprooms/:id/beers")
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
        key={taproom.id}
        id={taproom.id}
        name={taproom.name}
        style={beer.style}
        description={beer.description}
        brewer={beer.brewer}
        image_url={beer.image_url}
        
      />
    )
  })
  
  return (
    <div className='beer-index'>
      <div>
        <div >
          <h1 className="beer-title">What's on Tap!</h1>
        </div>
      </div>
        <div>
        {beerTiles}
        </div>
    </div>
  )
}

export default BeerIndexContainer