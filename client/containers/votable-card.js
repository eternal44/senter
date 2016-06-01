import React, {Component} from 'react'
import {connect} from 'react-redux'
// TODO: create these actions after I can display votables
// import {upvote} from '../actions/upvote'
// import {downvote} from '../actions/downvote'
import {bindActionCreators} from 'redux'

class VotableCard extends Component {
  render() {
    if(!this.props.votables) {
      return <div>Keep trying</div>
    }
    return (
      <div>Name: {this.props.votables[0].name}</div>
    )
  }
}

function mapStateToProps(state) {
  return {
    currentVotable: state.currentVotable,
    votables: state.votables
  }
}

export default connect(mapStateToProps)(VotableCard)
