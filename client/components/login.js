import React, {Component} from 'react'
import Pinterest from '../util/pinterest'

class Login extends Component {
  constructor(props, context) {
    super(props, context)
    this.state = {
      pinterest: Pinterest.loggedIn()
    }
    this.resetState = this.resetState.bind(this)
  }

  componentDidMount() {
    if(this.state.pinterest) {
      this.context.router.transitionTo('feed')
    }
  }

  resetState() {
    const state = {
      pinterest: Pinterest.loggedIn()
    }

    if(state.pinterest) {
      this.context.router.transitionTo('/')
    } else {
      this.setState(state)
    }
  }

  pinLogin() {
    Pinterest.login(this.resetState)
  }

  _render(type) {
    switch(type) {
      case 'PinButton':
        return !this.state.pinterest ? (
          <button className="button button--pinterest" onClick={this.pinLogin.bind(this)}>Login in</button>
        ) : (
          <div className="success"></div>
        )
    }
  }
  
  render () {
    return (
      <div className="Login">
        <div className="background"></div>
        <div className="header">Log in to start!</div>
        <div className="content">
          <div className="button-wrapper">
            <div className="image--pinterest"></div>

            {this._render('PinButton')}
          </div>
        </div>
      </div>
    )
  }
}

Login.contextTypes = {
  router: React.PropTypes.func.isRequired
}

module.exports = Login
