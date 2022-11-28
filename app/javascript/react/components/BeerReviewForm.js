import React, { useState } from "react"
import Dropzone from 'react-dropzone'
import ErrorList from "./ErrorList"

const BeerReviewForm = (props) => {
  
  const [newReview, setNewReview] = useState({
    title: "",
    name: "",
    overall_rating: "",
    pour: "",
    body: "",
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
        name: "",
        overall_rating: "", 
        pour: "",
        body: "",
        photo: ""
      }
      )
      setDisplayForm("hide")
      setFiles([])
    }
  }
  
  return (
    <div className={`beer-review-form-div beer-review-button ${props.reviewButton}`}>
      <button type="button" onClick={displayReviewForm}>Write Review</button>
      <form onSubmit={handleSubmitAddNewReview} className={`new-review ${displayForm}`}>
        <ErrorList errors={errors} />
        
        <label htmlFor="title">Title
          <input id="title" type="text" name="title" value={newReview.title} onChange={handleFormChange}/>
        </label>

        <label htmlFor="name">Beer name:
          <input id="name" type="text" name="name" value={newReview.name} onChange={handleFormChange}/>
        </label>
        
        <fieldset>
          <legend>Pour</legend>
            <input type="radio" name="pour" onChange={handleFormChange} value="tap" id="tap" checked={newReview.pour === 'tap'}/><label>Tap</label>
            <input type="radio" name="pour" onChange={handleFormChange} value="can" id="can" checked={newReview.pour === 'can'}/><label>Can</label>
            <input type="radio" name="pour" onChange={handleFormChange} value="bottle" id="bottle" checked={newReview.pour === 'bottle'}/><label>Bottle</label>
        </fieldset>
        
        <fieldset>
          <legend>Overall Rating</legend>
            <input type="radio" name="overall_rating" onChange={handleFormChange} value="1" id="1" checked={newReview.overall_rating === '1'}/><label>1</label>
            <input type="radio" name="overall_rating" onChange={handleFormChange} value="2" id="2" checked={newReview.overall_rating === '2'}/><label>2</label>
            <input type="radio" name="overall_rating" onChange={handleFormChange} value="3" id="3" checked={newReview.overall_rating === '3'}/><label>3</label>
            <input type="radio" name="overall_rating" onChange={handleFormChange} value="4" id="4" checked={newReview.overall_rating === '4'}/><label>4</label>
            <input type="radio" name="overall_rating" onChange={handleFormChange} value="5" id="5" checked={newReview.overall_rating === '5'}/><label>5</label>
        </fieldset>

        

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

export default BeerReviewForm

