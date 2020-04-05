import React from "react";
import { Link } from "react-router-dom";

const PhotoTitleBlock = () => (
  <div className="navbar">
    <div className="siteTitle">
      <Link to={'/'}>
        {'Youth Action Network of Memphis'}
      </Link>
    </div>
    <ul>
      <li><a className="navbarText" href="mailto:change@bridgesusa.org">Contact</a></li>
      <li><a className="navbarText" href="/projects">COVID-19 Resources</a></li>
    </ul>
  </div>
)

export default PhotoTitleBlock