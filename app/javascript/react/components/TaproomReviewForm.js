// import React, { useState } from "react"
// import Dropzone from 'react-dropzone'
// import ErrorList from "./ErrorList"

// const TaproomReviewForm = (props) => {
  
//   const [newReview, setNewReview] = useState({
//     title: "",
//     body: "",
//     overallRating: "", 
//     serviceRating: "",
//     ambienceRating: "",
//     groupAccommodationsRating: "",
//     favoriteBeer: "",
//     photo: ""
//   })

//   const [errors, setErrors] = useState({}) 
//   const [displayForm, setDisplayForm] = useState("hide")
//   const [files, setFiles] = useState([])

//   const displayReviewForm = () => {
//     if (displayForm === 'hide') {
//       setDisplayForm('show')
//     }
//     else {
//       setDisplayForm('hide')
//     }
//   }

//   const handleFileUpload = (acceptedFiles) => {
//     setNewReview({
//       ...newReview,
//       photo: acceptedFiles[0]
//     })

//     setFiles([
//       ...files,
//       <li key={acceptedFiles[0].path}>
//       {acceptedFiles[0].path} - {acceptedFiles[0].size} bytes
//     </li>
//     ])
//   }

//   const handleFormChange =(event) => {
//     setNewReview({
//       ...newReview,
//       [event.currentTarget.name]: event.currentTarget.value
//     })
//   }

//   const validForSubmission = () => {
//     let submitErrors = {}
//     const requiredFields = ["title", "body", "rating"]
//     requiredFields.forEach(field =>{
//       if(newReview[field].trim() === "") {
//         submitErrors = {
//           ...submitErrors,
//           [field]: "is blank"
//         }
//       }
//     })
//     setErrors(submitErrors)
//     return _.isEmpty(submitErrors)
//   }

//   const handleSubmitAddNewReview = (event) => {
//     event.preventDefault()
//     if (validForSubmission()){
//       props.addNewReview(newReview)
//       setNewReview({
//         title: "",
//         body: "",
//         overallRating: "", 
//         serviceRating: "",
//         ambienceRating: "",
//         groupAccommodationsRating: "",
//         favoriteBeer: "",
//         photo: ""
//       }
//       )
//       setDisplayForm("hide")
//       setFiles([])
//     }
//   }
  
//   return (
//     <div className={`taproom-review-form-div taproom-review-button ${props.reviewButton}`}>
//       <button className="taproom-button write-review" type="button" onClick={displayReviewForm}>Write Review</button>
//       <form onSubmit={handleSubmitAddNewReview} className={`new-review ${displayForm}`}>
//         <ErrorList errors={errors} />
        
//         <label htmlFor="title">Title
//           <input id="title" type="text" name="title" value={newReview.title} onChange={handleFormChange}/>
//         </label>

//         <label htmlFor="body">Review
//           <textarea id="body" rows="4" type="text" name="body" value={newReview.body} onChange={handleFormChange}/>
//         </label>

//         <fieldset className="primary flex-child-shrink" >
//           <legend>Overall Rating</legend>
//             <input type="radio" name="overallRating" onChange={handleFormChange} value="1" id="1" checked={newReview.rating === '1'}/><label>1</label>
//             <input type="radio" name="overallRating" onChange={handleFormChange} value="2" id="2" checked={newReview.rating === '2'}/><label>2</label>
//             <input type="radio" name="overallRating" onChange={handleFormChange} value="3" id="3" checked={newReview.rating === '3'}/><label>3</label>
//             <input type="radio" name="overallRating" onChange={handleFormChange} value="4" id="4" checked={newReview.rating === '4'}/><label>4</label>
//             <input type="radio" name="overalrating" onChange={handleFormChange} value="5" id="5" checked={newReview.rating === '5'}/><label>5</label>
//         </fieldset>

//         <fieldset className="primary flex-child-shrink" >
//           <legend>Service Rating</legend>
//             <input type="radio" name="rating" onChange={handleFormChange} value="1" id="1" checked={newReview.rating === '1'}/><label>1</label>
//             <input type="radio" name="rating" onChange={handleFormChange} value="2" id="2" checked={newReview.rating === '2'}/><label>2</label>
//             <input type="radio" name="rating" onChange={handleFormChange} value="3" id="3" checked={newReview.rating === '3'}/><label>3</label>
//             <input type="radio" name="rating" onChange={handleFormChange} value="4" id="4" checked={newReview.rating === '4'}/><label>4</label>
//             <input type="radio" name="rating" onChange={handleFormChange} value="5" id="5" checked={newReview.rating === '5'}/><label>5</label>
//         </fieldset>

        

//       <div className="dropzone">  
//         <Dropzone onDrop={handleFileUpload}>
//           {({getRootProps, getInputProps}) => (
//             <section>
//               <div {...getRootProps()}>
//                 <input {...getInputProps()} />
//                 <p>Drag your picture here, or click to select from your files</p>
//               </div>
//             </section>
//           )}
//           </Dropzone>
          
//         <aside>
//           <ul>{files}</ul>
//         </aside>
//       </div>      
        
//       <div className="submit-button">
//         <button className="button write-review">Add your review!</button>
//       </div>
      
//       </form>
//     </div>
// )}

// export default TaproomReviewForm

