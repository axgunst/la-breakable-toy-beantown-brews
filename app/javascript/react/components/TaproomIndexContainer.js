import React, {useState, useEffect } from "react";

const TaproomIndexContainer = (props) => {
  const [taproom, setTaproom] = useState([])

  const getTaprooms = async () => {
    try {
      const response = await fetch("/api/v1/taprooms")
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`
        throw new Error(errorMessage)
      }
      const responseBody = await response.json()
      setRides(responseBody.rides)
      
    } catch (error) {
      console.error(`Error in Fetch: ${error.message}`)
    }
  }

  useEffect(() => {
    getRides()
  }, [])

  const taproomTiles = taprooms.map(taproom => {
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
    )
  })

  return (
    <div className='taproom-index'>
      <div className="grid-x">
        <div className= "small-12 medium-6 large-8 park-section">
          <h1 className="taproom-title">Boston's Best Brews!</h1>
        </div>
      </div>
        <div className='grid-x grid-margin-x'>
        {taproomTiles}
        </div>
    </div>
  )
}

export default TaproomIndexContainer
