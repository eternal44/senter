import React, {Component} from 'react'
import VotableCard from '../containers/votable-card'
import Navbar from './navbar.js'

// we could probably create this component with a funciton instead since it's a dumb component.  Try it later
export default class App extends Component {
  render() {
    return (
      <div>
        <Navbar />
          {this.props.children}
      </div>
    )
  }
}
