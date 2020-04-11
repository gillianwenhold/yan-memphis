import React from "react";
import { Link } from "react-router-dom";
import PhotoTitleBlock from "./partials/PhotoTitleBlock"

const Home = () => (
  <div className='vw-100 vh-100 d-flex align-items-center justify-content-center'>
  <div className='jumbotron jumbotron-fluid bg-transparent'>
    <h1>Welcome to the Youth Action Network of Memphis!</h1>
    <p className='lead'>{poll.title}</p>
    <hr className='my-4' />
    <p></p>
    <Link
      to='/home'
      className='btn btn-lg custom-button'
      role='button'
    >
      Submit
    </Link>
  </div>
</div>
)

export default Home