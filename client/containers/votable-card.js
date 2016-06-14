import React, {Component} from 'react'
import {connect} from 'react-redux'
import {upvote, downvote, postVotesThunk, fetchVotablesForVote} from '../actions/index'
import {bindActionCreators} from 'redux'
import async from 'async'

class VotableCard extends Component {
  componentWillMount() {
    this.props.fetchVotablesForVote()
  }

  render() {
    const currentVotable = this.props.currentVotable
    if(!this.props.currentVotable) {
      return <div>Keep trying!</div>
    }

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
    currentVotable: state.votables.currentVotable,
    unvotedVotables: state.votables.unvotedVotables
  }
}

function mapDispatchToProps(dispatch) {
  return bindActionCreators({
    upvote,
    downvote,
    postVotesThunk,
    fetchVotablesForVote
  }, dispatch)
}

export default connect(mapStateToProps, mapDispatchToProps)(VotableCard)
