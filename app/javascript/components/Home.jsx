import React from "react";
import { Link } from "react-router-dom";
import PhotoTitleBlock from "./partials/PhotoTitleBlock"

const Home = () => (
  <div className="vw-100 vh-100 primary-color d-flex align-items-center justify-content-center">
    <div className="jumbotron jumbotron-fluid bg-transparent">
      <div className="container secondary-color">
        <h1 className="display-4">YAN Memphis</h1>
        <p className="lead">
          Welcome to the Youth Action Network of Memphis
        </p>
        <hr className="my-4" />
        <Link
          to="/home"
          className="btn btn-lg custom-button"
          role="button"
        >
          View Site
        </Link>
      </div>
    </div>
  </div>
)

export default Home