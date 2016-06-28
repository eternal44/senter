import React, {Component} from 'react'
import Pinterest from '../util/pinterest'

class Logout extends Component {
  constructor(props, context) {
    super(props)
    context.router
  }

  logout() {
    Pinterest.logout();
    this.context.router.push('login')
  }

  render() {
    return (
      <a onClick={this.logout.bind(this)}>Logout</a>
    )
  }
}

Logout.contextTypes = {
  router: React.PropTypes.object.isRequired
}

module.exports = Logout
