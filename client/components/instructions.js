import React, {Component} from 'react'

class Instructions extends Component {
  render() {
    return (
      <div className="container">
      <h3>How to vote</h3>
        <li>Click on the buttons to up or down vote.</li>
        <li>You can also use the keyboard arrows as well ('left' for downvote, 'right' for upvote).</li>
      </div>
    )
  }
}

export default Instructions
