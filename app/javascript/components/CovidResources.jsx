import React from "react";
import { Link } from "react-router-dom";

const CovidResources = () => (
  <div className='vw-100 vh-100 d-flex align-items-center justify-content-center'>
    <h1>COVID Resources</h1>
    <p className='lead'>{poll.title}</p>
    <hr className='my-4' />
    <p></p>
    <Link
      to='/covid_resources'
      className='btn btn-lg custom-button'
      role='button'
    >
      Submit
    </Link>
  </div>
)

export default CovidResources