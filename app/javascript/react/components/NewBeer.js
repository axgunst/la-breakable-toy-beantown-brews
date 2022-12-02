import React, { useState } from 'react';
import { Redirect } from 'react-router-dom'
import Dropzone from 'react-dropzone'

const NewBeer = (props) => {
  const [redirect, setRedirect] = useState(null)
  const [newBeer, setNewBeer] = useState({
    name: "",
    style: "",
    abv: "",
    brewer: "",
    description: "",
    image_url: ""
  })

  const [displayForm, setDisplayForm] = useState("hide")
  const [files, setFiles] = useState([])

  const displayNewBeerForm = () => {
    if (displayForm === props.reviewButton) {
      setDisplayForm('show')
    }
    else {
      setDisplayForm('hide')
    }
  }

  const handleFileUpload = (acceptedFiles) => {
    setNewBeer({
      ...newBeer,
      image_url: acceptedFiles[0]
    })

    setFiles([
      ...files,
      <li key={acceptedFiles[0].path}>
      {acceptedFiles[0].path} - {acceptedFiles[0].size} bytes
    </li>
    ])
  }

  const handleInputChange = (event) => {
    setNewBeer({
      ...newBeer,
      [event.currentTarget.name]: event.currentTarget.value
    })
  }

  const handleSubmitNewBeer = async (event) => {
    event.preventDefault()
    try {
      const response = await fetch(`/api/v1/taprooms/${props.taproomId}/beers/`, {
        method: "POST",
        credentials: "same-origin",
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json" 
        },
        body: JSON.stringify({ beer: newBeer })
      })
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`
        const error = new Error(errorMessage)
        throw(error)
      }

      const beerBody = await response.json()
  
      if (beerBody.beer) {
        console.log("Beer was added successfully!")
        setRedirect(beerBody.beer.id)
        setDisplayForm("hide")
        setFiles([])
      }  
      
    } catch(err) {
      console.error(`Error in fetch: ${err.message}`)
    }
    
  }

  if (redirect !== null) {
    return <Redirect to={`/taprooms/taproom_id/beers/${redirect}`} />
  }

  return (
    <div className='new-beer'>
      {/* <button type="button" onClick={displayNewBeerForm}>Add a new beer</button> */}
      <h1>Add New Beer</h1>
      {/* <form onSubmit={handleSubmitNewBeer} className={`new-beer ${displayForm}`}> */}
      <form onSubmit={handleSubmitNewBeer}>
        <label>
          Beer Name:
          <input type="text" name="name" onChange={handleInputChange} value={newBeer.name} className="form-field"/>
        </label>

        <label>
          Style:
          <input type="text" name="style" onChange={handleInputChange} value={newBeer.style} className="form-field"/>          
        </label>

        <label>
          ABV:
          <input type="text" name="abv" onChange={handleInputChange} value={newBeer.abv} className="form-field"/>
        </label>

        <label>
          Brewing company:
          <input type="text" name="brewer" onChange={handleInputChange} value={newBeer.brewer} className="form-field"/>
        </label>

        <label>
          Description:
          <textarea type="text" name="description" onChange={handleInputChange} value={newBeer.description} className="form-field"/>
        </label>

        <input type="submit" value="Add Beer" className='button'/>

        <div className="dropzone">  
        <Dropzone onDrop={handleFileUpload}>
          {({getRootProps, getInputProps}) => (
            <section>
              <div {...getRootProps()}>
                <input {...getInputProps()} />
                <p className='button'>Drag image here, or click to select image from your files</p>
              </div>
            </section>
          )}
        </Dropzone>
          
        <aside>
          <ul>{files}</ul>
        </aside>
      </div> 

      </form>
    </div>    
  )
}

export default NewBeer 
