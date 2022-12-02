import React, { useState } from 'react'

const TaproomSearchBar = (props) => {
  const [searchString, setSearchString] = useState("")

  const handleChange = (event) => {
    const newSearchString = event.target.value
    setSearchString(newSearchString)
  }

  const handleSubmit = async (event) => {
    event.preventDefault()
    const body = JSON.stringify({
      search_string: searchString
    })
    try {
      const response = await fetch("/api/v1/taprooms/search", {
        method: "POST",
        body: body,
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json"
        }
      })
      
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`
        throw new Error(errorMessage)
      }
      const responseBody = await response.json()
      props.setTaprooms(responseBody)
    } catch (error) {
      console.error(`Error in Fetch: ${error.message}`)
    }
  }

  return (
    <div className="small-12 medium-6 large-4">
      <form onSubmit={handleSubmit}>
        <div className="input-group input-group-rounded">
          <input
            className=""
            type="search"
            name="searchString"
            value={searchString}
            onChange={handleChange}
            placeholder="Search taprooms"
          />
          <div>
            <input type="submit" className="button" value="Search" />
          </div>
        </div>
      </form>
    </div>
  );
};

export default TaproomSearchBar;