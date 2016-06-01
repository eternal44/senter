import React, {Component} from 'react'
import {connect} from 'react-redux'
import {upvote, downvote} from '../actions/index'
import {bindActionCreators} from 'redux'

class VotableCard extends Component {
  render() {
    const currentVotable = this.props.votables[0]
    if(!this.props.votables) {
      return <div>Keep trying</div>
    }
    return (
      <div>
        <div>Name: {currentVotable.name}</div>
        <button onClick = {() => this.props.upvote(currentVotable, true)}>Upvote</button>
        <button onClick = {() => this.props.downvote(currentVotable, false)}>Downvote</button>
      </div>
    )
  }
}

function mapStateToProps(state) {
  return {
    votables: state.votables
  }
}

function mapDispatchToProps(dispatch) {
  return bindActionCreators({
    upvote: upvote,
    downvote: downvote
  }, dispatch)
}

export default connect(mapStateToProps, mapDispatchToProps)(VotableCard)
