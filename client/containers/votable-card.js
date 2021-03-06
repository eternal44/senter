import React, {Component} from 'react'

const Pinterest = require('../util/pinterest')

import {connect} from 'react-redux'
import {upvote, downvote, postVotesThunk, fetchVotablesForVote, postNewVotables} from '../actions/index'
import {bindActionCreators} from 'redux'

class VotableCard extends Component {
  constructor(props, context) {
    super(props, context)
    context.router
  }

  componentWillMount() {
    // fetch user's Pinterest ID & pass it to the DB
    Pinterest.myPins(response => {
      // passes a user's pins to the db along with their pinterest ID
      this.props.postNewVotables(response.data)
    })

  }

  componentDidMount() {
    if (!Pinterest.loggedIn()) {
      return this.context.router.push('login')
    }

    this.props.fetchVotablesForVote()
  }

  render() {
    const currentVotable = this.props.currentVotable
    if(!this.props.currentVotable) {
      return <div>No more items to vote!</div>
    }

    // this method monitors the length of votes and does
    // a POST request when there are enough votes
    this.props.postVotesThunk(this.props.votes)

    const that = this

    document.onkeydown = function(e){
      if(e.which === 37) {
        that.props.downvote(currentVotable, true)
      } else if(e.which === 39) {
        that.props.upvote(currentVotable, false)
      }
    };

    return (
      <div className="container">
        <div className="text-center well">
          <h3>{currentVotable.pinterest_note}</h3>
          <a href="{currentVotable.pinterest_url}" id="pinterest-url">Click for Pinterest link</a>
          <div className="text-center">
            <img src={currentVotable.image_url}></img>
          </div>

          <div id="vote-buttons" className="text-center">
            <button className="btn btn-warning btn-lg round" onClick = {() => this.props.downvote(currentVotable, false)}>Downvote</button>
            <button className="btn btn-primary btn-lg round" id="upvote-button"onClick = {() => this.props.upvote(currentVotable, true)}>Upvote</button>
          </div>
        </div>
      </div>
    )
  }
}

function mapStateToProps(state) {
  return {
    currentVotable: state.votables.currentVotable,
    unvotedVotables: state.votables.unvotedVotables
  }
}

function mapDispatchToProps(dispatch) {
  return bindActionCreators({
    upvote,
    downvote,
    postVotesThunk,
    fetchVotablesForVote,
    postNewVotables
  }, dispatch)
}

VotableCard.contextTypes = {
  router: React.PropTypes.object.isRequired
}

export default connect(mapStateToProps, mapDispatchToProps)(VotableCard)
