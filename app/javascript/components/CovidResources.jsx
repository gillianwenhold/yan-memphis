import React from "react";
import { Link } from "react-router-dom";

const CovidResources = () => (
  <div className="vw-100 vh-100 primary-color d-flex align-items-center justify-content-center">
    <div className="jumbotron jumbotron-fluid bg-transparent">
      <div className="container secondary-color">
        <h1 className="display-4">COVID-19 Resources</h1>
        <p className="lead">
          Welcome to the COVID-19 Resources section of the YAN Website!
        </p>
        <hr className="my-4" />
        <Link
          to="/covid_resources"
          className="btn btn-lg custom-button"
          role="button"
        >
          View Site
        </Link>
      </div>
    </div>
  </div>
)

export default CovidResources