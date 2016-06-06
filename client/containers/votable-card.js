import React, {Component} from 'react'
import {connect} from 'react-redux'
import {upvote, downvote, fetchVotablesForVote} from '../actions/index'
import {bindActionCreators} from 'redux'

class VotableCard extends Component {
  componentWillMount() {
    this.props.fetchVotablesForVote()
  }

  render() {
    const currentVotable = this.props.currentVotable
    if(!this.props.currentVotable) {
      return <div>Keep trying!</div>
    }

    document.onkeydown = function(e){
      if(e.which === 37) {
        this.props.downvote(currentVotable, true)()
      } else if(e.which === 39) {
        this.props.upvote(currentVotable, true)()
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
    currentVotable: state.votables.currentVotable
  }
}

function mapDispatchToProps(dispatch) {
  return bindActionCreators({
    upvote,
    downvote,
    fetchVotablesForVote
  }, dispatch)
}

export default connect(mapStateToProps, mapDispatchToProps)(VotableCard)
