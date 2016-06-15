import React from 'react'
import {Link} from 'react-router'

export default ()=> {
  return (
    <div>
      <nav className="navbar navbar-default navbar-light" role="navigation">
        <Link to={"/"} className="navbar-brand">Senter</Link>
        <ul className="nav navbar-nav">
          <li className="nav-item">
            <Link to="instructions/" className="nav-link">Instrucions</Link>
          </li>
          <li>
            <Link to="about/" className="nav-link">About</Link>
          </li>
        </ul>
      </nav>
    </div>
  )
}
