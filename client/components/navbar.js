import React from 'react'
import {Link} from 'react-router'
import Logout from './logout'

export default ()=> {
  return (
    <div>
      <div className="container">
        <nav className="navbar navbar-default navbar-light" role="navigation">
            <Link to={"/"} className="navbar-brand">Senter</Link>
            <ul className="nav navbar-nav inline navbar-right">
              <li className="nav-item">
                <Link to="instructions/" className="nav-link">Instructions</Link>
              </li>
              <li className="nav-item">
                <Link to="about/" className="nav-link">About</Link>
              </li>
              <li className="nav-item">
                <Logout />
              </li>
            </ul>
        </nav>
      </div>
    </div>
  )
}
