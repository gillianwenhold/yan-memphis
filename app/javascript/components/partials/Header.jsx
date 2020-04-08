import React from "react";
import { Link } from "react-router-dom";

const Header = () => (
  <div className="navbar">
    <div className="siteTitle">
      <Link to={'/home'}>
        {'Youth Action Network of Memphis'}
      </Link>
    </div>
    <ul>
      <li><a className="navbarText" href="mailto:change@bridgesusa.org">Contact</a></li>
      <li><Link className="navbarText" to="/covid_resources">COVID-19 Resources</Link></li>
    </ul>
  </div>
)

export default Header