import React, { useState } from "react"
import Dropzone from 'react-dropzone'
import ErrorList from "./ErrorList"

const TaproomReviewForm = (props) => {
  
  const [newReview, setNewReview] = useState({
    title: "",
    body: "",
    overall_rating: "", 
    service_rating: "",
    ambience_rating: "",
    group_accommodations_rating: "",
    favorite_beer: "",
    photo: ""
  })

  const [errors, setErrors] = useState({}) 
  const [displayForm, setDisplayForm] = useState("hide")
  const [files, setFiles] = useState([])

  const displayReviewForm = () => {
    if (displayForm === 'hide') {
      setDisplayForm('show')
    }
    else {
      setDisplayForm('hide')
    }
  }

  const handleFileUpload = (acceptedFiles) => {
    setNewReview({
      ...newReview,
      photo: acceptedFiles[0]
    })

    setFiles([
      ...files,
      <li key={acceptedFiles[0].path}>
      {acceptedFiles[0].path} - {acceptedFiles[0].size} bytes
    </li>
    ])
  }

  const handleFormChange =(event) => {
    setNewReview({
      ...newReview,
      [event.currentTarget.name]: event.currentTarget.value
    })
  }

  const validForSubmission = () => {
    let submitErrors = {}
    const requiredFields = ["title", "body"]
    requiredFields.forEach(field =>{
      if(newReview[field].trim() === "") {
        submitErrors = {
          ...submitErrors,
          [field]: "must be provided"
        }
      }
    })
    setErrors(submitErrors)
    return _.isEmpty(submitErrors)
  }

  const handleSubmitAddNewReview = (event) => {
    event.preventDefault()
    if (validForSubmission()){
      props.addNewReview(newReview)
      setNewReview({
        title: "",
        body: "",
        overall_rating: "", 
        service_rating: "",
        ambience_rating: "",
        group_accommodations_rating: "",
        favorite_beer: "",
        photo: ""
      }
      )
      setDisplayForm("hide")
      setFiles([])
    }
  }
  
  return (
    <div className={`taproom-review-form-div taproom-review-button ${props.reviewButton}`}>
      <button className="button write-review" type="button" onClick={displayReviewForm}>Write Review</button>
      <form onSubmit={handleSubmitAddNewReview} className={`new-review ${displayForm}`}>
        <ErrorList errors={errors} />
        
        <label htmlFor="title">Title
          <input id="title" type="text" name="title" value={newReview.title} onChange={handleFormChange}/>
        </label>

        <fieldset>
          <legend>Overall Rating</legend>
            <input type="radio" name="overall_rating" onChange={handleFormChange} value="1" id="1" checked={newReview.overall_rating === '1'}/><label>1</label>
            <input type="radio" name="overall_rating" onChange={handleFormChange} value="2" id="2" checked={newReview.overall_rating === '2'}/><label>2</label>
            <input type="radio" name="overall_rating" onChange={handleFormChange} value="3" id="3" checked={newReview.overall_rating === '3'}/><label>3</label>
            <input type="radio" name="overall_rating" onChange={handleFormChange} value="4" id="4" checked={newReview.overall_rating === '4'}/><label>4</label>
            <input type="radio" name="overall_rating" onChange={handleFormChange} value="5" id="5" checked={newReview.overall_rating === '5'}/><label>5</label>
        </fieldset>

        <fieldset>
          <legend>Service Rating</legend>
            <input type="radio" name="service_rating" onChange={handleFormChange} value="1" id="1" checked={newReview.service_rating === '1'}/><label>1</label>
            <input type="radio" name="service_rating" onChange={handleFormChange} value="2" id="2" checked={newReview.service_rating === '2'}/><label>2</label>
            <input type="radio" name="service_rating" onChange={handleFormChange} value="3" id="3" checked={newReview.service_rating === '3'}/><label>3</label>
            <input type="radio" name="service_rating" onChange={handleFormChange} value="4" id="4" checked={newReview.service_rating === '4'}/><label>4</label>
            <input type="radio" name="service_rating" onChange={handleFormChange} value="5" id="5" checked={newReview.service_rating === '5'}/><label>5</label>
        </fieldset>

        <fieldset>
          <legend>Vibes Rating</legend>
            <input type="radio" name="ambience_rating" onChange={handleFormChange} value="1" id="1" checked={newReview.ambience_rating === '1'}/><label>1</label>
            <input type="radio" name="ambience_rating" onChange={handleFormChange} value="2" id="2" checked={newReview.ambience_rating === '2'}/><label>2</label>
            <input type="radio" name="ambience_rating" onChange={handleFormChange} value="3" id="3" checked={newReview.ambience_rating === '3'}/><label>3</label>
            <input type="radio" name="ambience_rating" onChange={handleFormChange} value="4" id="4" checked={newReview.ambience_rating === '4'}/><label>4</label>
            <input type="radio" name="ambience_rating" onChange={handleFormChange} value="5" id="5" checked={newReview.ambience_rating === '5'}/><label>5</label>
        </fieldset>

        <fieldset>
          <legend>Group Accommodations Rating</legend>
            <input type="radio" name="group_accommodations_rating" onChange={handleFormChange} value="1" id="1" checked={newReview.group_accommodations_rating === '1'}/><label>1</label>
            <input type="radio" name="group_accommodations_rating" onChange={handleFormChange} value="2" id="2" checked={newReview.group_accommodations_rating === '2'}/><label>2</label>
            <input type="radio" name="group_accommodations_rating" onChange={handleFormChange} value="3" id="3" checked={newReview.group_accommodations_rating === '3'}/><label>3</label>
            <input type="radio" name="group_accommodations_rating" onChange={handleFormChange} value="4" id="4" checked={newReview.group_accommodations_rating === '4'}/><label>4</label>
            <input type="radio" name="group_accommodations_rating" onChange={handleFormChange} value="5" id="5" checked={newReview.group_accommodations_rating === '5'}/><label>5</label>
        </fieldset>

        <label htmlFor="favorite_beer">Favorite beer tried
          <textarea id="favorite_beer" rows="4" type="text" name="favorite_beer" value={newReview.favorite_beer} onChange={handleFormChange}/>
        </label>

        <label htmlFor="body">Review
          <textarea id="body" rows="4" type="text" name="body" value={newReview.body} onChange={handleFormChange}/>
        </label>

        <div className="dropzone">  
        <Dropzone onDrop={handleFileUpload}>
          {({getRootProps, getInputProps}) => (
            <section>
              <div {...getRootProps()}>
                <input {...getInputProps()} />
                <p>Drag image here, or click to select image from your files</p>
              </div>
            </section>
          )}
        </Dropzone>

        <aside>
          <ul>{files}</ul>
        </aside>
          
      </div>      

      <div className="submit-button">
        <input className="button" type="submit" value="Submit Review" onSubmit={handleSubmitAddNewReview}/>
      </div>
      </form>
    </div>
)}

export default TaproomReviewForm



